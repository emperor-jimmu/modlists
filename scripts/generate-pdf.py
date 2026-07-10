#!/usr/bin/env python3
"""Generate a PDF from the Cyberpunk 2077 modlist Markdown files."""

import re
import sys
from pathlib import Path

try:
    import markdown
    from weasyprint import HTML, CSS
except ImportError:
    print("Missing dependencies. Run: pip install -r scripts/requirements.txt")
    sys.exit(1)

REPO_ROOT = Path(__file__).resolve().parent.parent
MODLIST_DIR = REPO_ROOT / "modlist"
OUTPUT_PATH = REPO_ROOT / "cyberpunk-2077-modlist.pdf"

CATEGORY_FILES = sorted(MODLIST_DIR.glob("*.md"))

CSS_STYLE = """
@page {
    size: A4;
    margin: 2cm 2.2cm;
    @bottom-center {
        content: counter(page);
        font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
        font-size: 9pt;
        color: #666;
    }
}

@page toc {
    @bottom-center {
        content: none;
    }
}

body {
    font-family: Georgia, 'DejaVu Serif', serif;
    font-size: 11pt;
    line-height: 1.6;
    color: #1a1a1a;
}

h1 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 22pt;
    font-weight: 700;
    color: #111;
    margin-top: 0;
    margin-bottom: 0.5cm;
    padding-bottom: 0.2cm;
    border-bottom: 2px solid #f0c040;
    page-break-before: always;
}

h1:first-of-type {
    page-break-before: avoid;
}

h2 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 16pt;
    font-weight: 700;
    margin-top: 0.6cm;
    margin-bottom: 0.3cm;
    color: #333;
}

h3 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 13pt;
    font-weight: 700;
    margin-top: 0.4cm;
    margin-bottom: 0.2cm;
    color: #444;
}

strong {
    color: #222;
}

a {
    color: #d4a017;
    text-decoration: none;
}

code {
    font-family: Consolas, 'DejaVu Sans Mono', monospace;
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
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
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

.toc-page h1 {
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
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 12pt;
    margin-bottom: 6px;
    border-bottom: 1px dotted #ccc;
    padding-bottom: 4px;
}

.toc-page li a {
    color: #222;
    text-decoration: none;
}
"""

HEADING_RE = re.compile(r"^#\s+(.+)$", re.MULTILINE)


def extract_heading(md_file: Path) -> str:
    """Return the first H1 heading from a markdown file, or its stem."""
    text = md_file.read_text(encoding="utf-8")
    match = HEADING_RE.search(text)
    if match:
        return match.group(1)
    return md_file.stem


def build_toc_html() -> str:
    """Generate a table of contents page from category file headings."""
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
    toc_html = build_toc_html()

    pages = []
    for md_file in CATEGORY_FILES:
        md_content = md_file.read_text(encoding="utf-8")
        html_body = markdown.markdown(
            md_content, extensions=["extra", "codehilite", "toc", "tables"]
        )
        pages.append(html_body)

    full_body = toc_html + "\n" + "\n".join(pages)

    return f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cyberpunk 2077 Modlist</title>
</head>
<body>
{full_body}
</body>
</html>"""


def main() -> None:
    if not CATEGORY_FILES:
        print("Error: no category files found in modlist/ directory.")
        sys.exit(1)

    print("Generating Cyberpunk 2077 Modlist PDF...")
    print(f"  Categories found: {len(CATEGORY_FILES)}")

    html = build_html()
    doc = HTML(string=html)
    css = CSS(string=CSS_STYLE)

    try:
        doc.write_pdf(str(OUTPUT_PATH), stylesheets=[css])
    except Exception as exc:
        print(f"Error: PDF generation failed: {exc}")
        print("WeasyPrint requires system libraries (GTK3 on Windows).")
        print("See: https://doc.courtbouillon.org/weasyprint/stable/first_steps.html#installation")
        sys.exit(1)

    size_kb = OUTPUT_PATH.stat().st_size / 1024
    print(f"  Done: {OUTPUT_PATH} ({size_kb:.0f} KB)")


if __name__ == "__main__":
    main()
