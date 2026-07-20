"""
Generate a single continuous PDF of the Stellaris Modlist Guide
using Playwright to render the MkDocs HTML output.

Replaces mkdocs-exporter's aggregator which inserts blank pages
between documents during PDF stitching.
"""

import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

import sass

ROOT = Path(__file__).resolve().parent.parent
SITE_DIR = ROOT / "site"
OUTPUT_PDF = ROOT / "stellaris-modlist-guide.pdf"
MKDOCS_YML = ROOT / "mkdocs.yml"
PDF_SCSS = ROOT / "stylesheets" / "pdf.scss"
FRONT_COVER = ROOT / "covers" / "front.html.j2"


def extract_nav_order(mkdocs_yml_path: Path) -> list[str]:
    """Parse mkdocs.yml nav to get all page paths in order."""
    pages = []
    lines = mkdocs_yml_path.read_text(encoding="utf-8").splitlines()
    in_nav = False
    for line in lines:
        stripped = line.strip()
        if stripped.startswith("nav:"):
            in_nav = True
            continue
        if in_nav:
            # Stop at next top-level key (no indent)
            if stripped and not line.startswith(" ") and not line.startswith("\t"):
                break
            # Match leaf nav items: '- Name: path.md'
            m = re.match(r"\s*-\s.*:\s(.+\.md)", line)
            if m:
                pages.append(m.group(1))
    return pages


def find_html_file(pages_dir: Path, md_path: str) -> Path | None:
    """Find the rendered index.html for a given md path."""
    dir_name = md_path.replace(".md", "")
    html = pages_dir / dir_name / "index.html"
    if html.exists():
        return html
    html = pages_dir / f"{dir_name}.html"
    if html.exists():
        return html
    return None


def extract_content(html: str) -> str:
    """Extract the main content article from a rendered MkDocs page."""
    m = re.search(
        r'<div\s+class="md-content"[^>]*>.*?<article[^>]*>(.*?)</article>.*?</div>',
        html,
        re.DOTALL,
    )
    if m:
        content = m.group(1)
        content = re.sub(
            r'<a\s+class="md-content__button".*?</a>', "", content, flags=re.DOTALL
        )
        content = re.sub(
            r'<a\s+class="headerlink".*?</a>', "", content, flags=re.DOTALL
        )
        return content.strip()
    return ""


def read_cover() -> str:
    """Read the front cover HTML template, strip Jinja2 if unrendered."""
    if not FRONT_COVER.exists():
        return ""
    html = FRONT_COVER.read_text(encoding="utf-8")
    # Strip any remaining Jinja2 template syntax
    html = re.sub(r"\{\{.*?\}\}", "", html)
    return html


def compile_scss() -> str:
    """Compile PDF SCSS to CSS using libsass."""
    css = sass.compile(
        filename=str(PDF_SCSS),
        output_style="expanded",
    )
    # Remove the @page margin from the CSS since we pass margins to Playwright
    css = re.sub(
        r"@page\s*\{[^}]*margin:[^}]*size:[^}]*\}",
        "@page { size: A4; }",
        css,
        flags=re.DOTALL,
    )
    return css


def add_css_overrides() -> str:
    """Return extra CSS rules that aren't in the SCSS."""
    return """
/* Suppress blank pages between sections — continuous flow */
.page-break {
  page-break-before: always;
  break-before: page;
}

/* MkDocs theme elements to suppress in PDF */
.md-header, .md-tabs, .md-nav, .md-footer,
.md-source, .md-ellipsis, .md-header__inner,
.md-top, .md-content__button {
  display: none !important;
}

/* Ensure links with URLs inline work */
a[href^="http"]::after {
  content: " (" attr(href) ")";
  font-size: 8pt;
  color: #888;
}
"""


def build_html_site() -> Path | None:
    """Run mkdocs build (without exporter) and return site dir."""
    env = os.environ.copy()
    env["MKDOCS_EXPORTER_PDF"] = "false"
    env["GUIDE_VERSION"] = os.environ.get("GUIDE_VERSION", "0.1")
    result = subprocess.run(
        [sys.executable, "-m", "mkdocs", "build"],
        cwd=ROOT,
        capture_output=True,
        text=True,
        env=env,
    )
    if result.returncode != 0:
        print("mkdocs build failed:", result.stderr, file=sys.stderr)
        return None
    if SITE_DIR.exists():
        return SITE_DIR
    return None


def main():
    print("Building MkDocs site...")
    site_dir = build_html_site()
    if not site_dir:
        sys.exit(1)

    nav_paths = extract_nav_order(MKDOCS_YML)
    print(f"Found {len(nav_paths)} pages in nav")

    css_text = compile_scss() + add_css_overrides()

    # Collect all content
    content_parts = []

    # Front cover
    cover_html = read_cover()
    if cover_html:
        content_parts.append(f'<div class="front-cover">\n{cover_html}\n</div>')

    # Content pages
    for md_path in nav_paths:
        html_file = find_html_file(site_dir, md_path)
        if html_file is None:
            print(f"  Warning: no HTML for {md_path}", file=sys.stderr)
            continue
        content = extract_content(html_file.read_text(encoding="utf-8"))
        if content:
            content_parts.append(f'<div class="page-break">\n{content}\n</div>')

    full_html = f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Stellaris Modlist Guide</title>
<style>
{css_text}
</style>
</head>
<body>
{''.join(content_parts)}
</body>
</html>"""

    print(f"Rendering PDF ({len(content_parts)} pages)...")
    from playwright.sync_api import sync_playwright

    with sync_playwright() as p:
        browser = p.chromium.launch()
        page = browser.new_page()
        page.set_content(full_html)
        page.pdf(
            path=str(OUTPUT_PDF),
            format="A4",
            margin={"top": "2.5cm", "bottom": "2.5cm", "left": "2cm", "right": "2cm"},
            print_background=True,
        )
        browser.close()

    # Clean up intermediate HTML site
    if site_dir.exists():
        shutil.rmtree(site_dir)

    print(f"Done: {OUTPUT_PDF}")


if __name__ == "__main__":
    main()
