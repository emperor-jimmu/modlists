#!/usr/bin/env python3
"""Generate a PDF from the Cyberpunk 2077 modlist Markdown files.

Uses Playwright (Chromium) for rendering — zero system dependencies beyond
what Playwright already bundles. Works on Windows, macOS, and Linux.
"""

import base64
import re
import sys
from pathlib import Path

try:
    import markdown
    from playwright.sync_api import sync_playwright
except ImportError:
    print("Missing dependencies. Run: pip install -r scripts/requirements.txt")
    print("Then: playwright install chromium")
    sys.exit(1)

REPO_ROOT = Path(__file__).resolve().parent.parent
MODLIST_DIR = REPO_ROOT / "modlist"
VERSION_PATH = REPO_ROOT / "VERSION"
LOGO_PATH = REPO_ROOT / "assets" / "Netrunner's_shadow_logo_2K.jpeg"
OUTPUT_PATH = REPO_ROOT / "cyberpunk-2077-modlist.pdf"

CATEGORY_FILES = sorted(MODLIST_DIR.glob("*.md"))

CSS_STYLE = """
body {
    font-family: Georgia, 'Times New Roman', serif;
    font-size: 11pt;
    line-height: 1.6;
    color: #1a1a1a;
    margin: 0;
    padding: 0;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
}

a {
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
    color: #1a73e8;
    text-decoration: underline;
}

.nexus-link {
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
    color: #d4a017;
}

h1 {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 22pt;
    font-weight: 700;
    color: #111;
    margin-top: 0;
    margin-bottom: 0.3cm;
    padding-bottom: 0.2cm;
    border-bottom: 2px solid #f0c040;
    break-before: page;
    page-break-before: always;
}

h1:first-of-type {
    break-before: avoid;
    page-break-before: avoid;
}

h2 {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 16pt;
    font-weight: 700;
    margin-top: 0.5cm;
    margin-bottom: 0.2cm;
    color: #333;
}

h3 {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 13pt;
    font-weight: 700;
    margin-top: 0.3cm;
    margin-bottom: 0.15cm;
    color: #444;
}

strong {
    color: #222;
}

code {
    font-family: Consolas, 'Courier New', monospace;
    font-size: 9pt;
    background: #f5f5f5;
    padding: 1px 4px;
    border-radius: 2px;
}

pre {
    background: #f5f5f5;
    padding: 0.4cm;
    border-radius: 4px;
    font-size: 9pt;
    overflow-x: auto;
    white-space: pre-wrap;
    word-wrap: break-word;
}

pre code {
    background: none;
    padding: 0;
}

blockquote {
    border-left: 3px solid #f0c040;
    margin-left: 0;
    padding-left: 0.5cm;
    color: #555;
    font-style: italic;
}

table {
    border-collapse: collapse;
    width: 100%;
    margin: 0.3cm 0;
}

th, td {
    border: 1px solid #ddd;
    padding: 6px 10px;
    text-align: left;
    font-size: 10pt;
}

th {
    background: #f8f8f0;
    font-family: 'Segoe UI', Arial, sans-serif;
    font-weight: 700;
}

hr {
    border: none;
    border-top: 1px solid #ddd;
    margin: 0.5cm 0;
}

ul, ol {
    padding-left: 0.6cm;
}

li {
    margin-bottom: 2px;
}

.cover-page {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100vh;
    page-break-after: always;
}

.cover-page .logo {
    max-width: 10cm;
    max-height: 10cm;
    margin-bottom: 1.5cm;
}

.cover-page h1 {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 36pt;
    font-weight: 700;
    color: #111;
    margin: 0 0 0.3cm 0;
    padding: 0;
    border-bottom: none;
    break-before: avoid;
    page-break-before: avoid;
}

.cover-page .accent-line {
    width: 4cm;
    height: 3px;
    background: #f0c040;
    margin: 0.5cm auto 0.8cm auto;
}

.cover-page .subtitle {
    font-family: Georgia, 'Times New Roman', serif;
    font-size: 13pt;
    color: #555;
    font-style: italic;
    margin-bottom: 2cm;
}

.cover-page .version {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 11pt;
    color: #888;
    margin-bottom: 0.3cm;
}

.toc-page {
    page-break-after: always;
}

.toc-page h1 {
    break-before: avoid;
    page-break-before: avoid;
    border-bottom: none;
    text-align: center;
    font-size: 26pt;
    margin-bottom: 1cm;
}

.toc-page ul {
    list-style: none;
    padding-left: 0;
}

.toc-page li {
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 12pt;
    margin-bottom: 6px;
    border-bottom: 1px dotted #ccc;
    padding-bottom: 4px;
}

.toc-page li a {
    color: #1a73e8;
    text-decoration: none;
}
"""

HEADING_RE = re.compile(r"^#\s+(.+)$", re.MULTILINE)


def extract_heading(md_file: Path) -> str:
    text = md_file.read_text(encoding="utf-8")
    match = HEADING_RE.search(text)
    if match:
        return match.group(1)
    return md_file.stem


def read_version() -> str:
    if VERSION_PATH.exists():
        return VERSION_PATH.read_text(encoding="utf-8").strip()
    return "unknown"


def build_cover_html() -> str:
    version = read_version()
    logo_src = ""
    if LOGO_PATH.exists():
        logo_bytes = LOGO_PATH.read_bytes()
        logo_b64 = base64.b64encode(logo_bytes).decode("ascii")
        logo_src = f'<img class="logo" src="data:image/jpeg;base64,{logo_b64}" alt="Logo">'
    return f"""<div class="cover-page">
{logo_src}
<h1>The Netrunner's Shadow</h1>
<div class="accent-line"></div>
<div class="subtitle">A curated, performance-conscious modding guide</div>
<div class="version">Version {version}</div>
</div>"""


def build_toc_html() -> str:
    items = []
    for md_file in CATEGORY_FILES:
        heading = extract_heading(md_file)
        slug = heading.lower().replace(" ", "-").replace("&", "").replace("\u2014", "")
        items.append(f'<li><a href="#{slug}">{heading}</a></li>')

    toc_list = "\n".join(items)
    return f"""<div class="toc-page">
<h1>Contents</h1>
<ul>
{toc_list}
</ul>
</div>"""


def build_html() -> str:
    cover_html = build_cover_html()
    toc_html = build_toc_html()

    pages = []
    for md_file in CATEGORY_FILES:
        md_content = md_file.read_text(encoding="utf-8")
        md_content = re.sub(
            r'(?<!<)(https://www\.nexusmods\.com/[^\s<>"\')\]]+)',
            r'<\1>',
            md_content,
        )
        html_body = markdown.markdown(
            md_content, extensions=["extra", "codehilite", "tables"]
        )
        heading = extract_heading(md_file)
        slug = heading.lower().replace(" ", "-").replace("&", "").replace("\u2014", "")
        html_body = html_body.replace("<h1>", f'<h1 id="{slug}">', 1)
        html_body = re.sub(
            r'<a href="(https://www\.nexusmods\.com[^"]*)">([^<]+)</a>',
            r'<a href="\1" class="nexus-link">\2</a>',
            html_body,
        )
        pages.append(html_body)

    full_body = cover_html + "\n" + toc_html + "\n" + "\n".join(pages)

    return f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>The Netrunner's Shadow</title>
<style>{CSS_STYLE}</style>
</head>
<body>
{full_body}
</body>
</html>"""


def main() -> None:
    if not CATEGORY_FILES:
        print("Error: no category files found in modlist/ directory.")
        sys.exit(1)

    print("Generating The Netrunner's Shadow PDF...")
    print(f"  Categories found: {len(CATEGORY_FILES)}")

    html = build_html()

    with sync_playwright() as pw:
        browser = pw.chromium.launch()
        page = browser.new_page()
        page.set_content(html, wait_until="networkidle")

        page.pdf(
            path=str(OUTPUT_PATH),
            format="A4",
            margin={"top": "2cm", "right": "2.2cm", "bottom": "2.5cm", "left": "2.2cm"},
            print_background=True,
            display_header_footer=True,
            header_template='<span></span>',
            footer_template='<span style="font-family: Segoe UI, Arial, sans-serif; font-size: 9pt; color: #666; width: 100%; text-align: center;">'
                             '<span class="pageNumber"></span>'
                             '</span>',
        )

        browser.close()

    size_kb = OUTPUT_PATH.stat().st_size / 1024
    print(f"  Done: {OUTPUT_PATH} ({size_kb:.0f} KB)")


if __name__ == "__main__":
    main()
