# merge-modlist.ps1 → PDF via Typst — Design Spec

**Date:** 2026-07-11
**Status:** Approved after review

## Goal

Upgrade `tools/merge-modlist.ps1` from a flat markdown merger to a PDF generator using Typst,
with a polished presentation suitable for a published modlist document.

## Architecture

```
merge-modlist.ps1
  │ reads: guide/*.md, VERSION, assets/cover.png
  │
  ├── generates: rendered/elder-wilds.typ
  │   (page/font/link setup, cover page, TOC H1+H2,
  │    markdown content converted to typst inline)
  │
  ├── checks typst is on PATH (warns if missing, no auto-install)
  │
  └── runs: typst compile rendered/elder-wilds.typ
      → outputs: rendered/elder-wilds.pdf
```

No separate `.md` output — the `.typ` file is the only generated source.

## How Markdown Becomes Typst

Rather than relying on `#include "file.md"` (unpredictable table/edge-case rendering), the
script reads each `.md` file and performs targeted conversions to typst syntax before emitting
it inline into the `.typ` file. Typst handles most markdown syntax natively at file level
(ATX headings, bold, italic, links, lists, code blocks, blockquotes, horizontal rules). The
conversions needed are:

| Markdown construct | Typst equivalent | Why |
|---|---|---|
| `# Heading` / `## Heading` | `= Heading` / `== Heading` | Typst uses `=` prefix, not `#` |
| Pipe tables `\| a \| b \|` | `#table(columns: 2, [a], [b], ...)` | Not supported at top level |
| `![alt](path.png)` | `#image("path.png")` | Different syntax |
| `<!-- comment -->` | stripped | Not valid in typst |
| Cross-file `](file.md#anchor)` | `](#anchor)` or `(@anchor)` | Same anchor-rewrite logic |

All other markdown — bold, italic, links, lists, code blocks, inline code, blockquotes,
horizontal rules — passes through as-is since typst renders them natively at file level.

### Table conversion

The script contains a PowerShell function `Convert-PipeTable` that:

1. Detects GFM pipe table blocks (lines starting with `|` or having `|---|` separator rows).
2. Parses header and row cells.
3. Emits a `#table(columns: N, fill: (none, luma(245)), [cell1], [cell2], ...)` call.
4. Handles alignment markers (`:---`, `:--:`, `---:`) via `stroke` or alignment args.

## Cover Image

The 9 MB source PNG is resized to 1200px wide before embedding. The script checks if a
resized copy exists at `assets/cover-resized.png` and generates it (via `System.Drawing` or
`magick`) on first run. The `.typ` file references the resized copy.

## Font Bundling

The script downloads Inter and JetBrains Mono into `assets/fonts/` on first run if not
present, using stable Google Fonts URLs (or their official repos). The `.typ` file references
them with local paths:

```typst
#set text(font: ("assets/fonts/Inter-Regular.ttf", "assets/fonts/JetBrainsMono-Regular.ttf"), ...)
```

## Typst Install Check

No silent auto-install. The script checks `Get-Command typst` and if missing, prints:
`"Typst not found. Install it: winget install Typst.Typst or https://github.com/typst/typst"`
and exits gracefully.

## Typst Template (generated)

```typst
#let version = "0.1.0"
#let genDate = "2026-07-11"

#set text(font: ("Inter", "assets/fonts/Inter-Regular.ttf"), size: 10pt)
#set link(color: rgb("#2563EB"))
#set raw(font: ("JetBrains Mono", "assets/fonts/JetBrainsMono-Regular.ttf"), theme: "one-dark")
#set page(
  margin: (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2cm),
  footer: context align(center + bottom, text(8pt, fill: luma(140),
    counter(page).display() + " — " + counter(page).display(numbering: "1")
  ))
)

// Show rules for heading styling
#show heading.where(level: 1): it => {
  v(1.5cm)
  text(size: 22pt, weight: "bold", fill: rgb("#1e293b"), it.body)
  v(0.5cm)
}
#show heading.where(level: 2): it => {
  v(0.8cm)
  text(size: 14pt, weight: "bold", fill: rgb("#334155"), it.body)
  v(0.3cm)
}
#show heading.where(level: 3): it => {
  v(0.4cm)
  text(size: 11pt, weight: "bold", fill: rgb("#475569"), it.body)
}
#show heading.where(level: 4): it => {
  text(size: 10.5pt, weight: "bold", style: "italic", fill: rgb("#475569"), it.body)
}

// No numbering on H1 (title level), H2+ get "1.1" style
#show heading: it => {
  if it.level >= 2 { numbering("1.1", ...it) }
  else { it }
}

// Cover page
#align(center + horizon, image("assets/cover-resized.png", width: 60%))
#v(3cm)
#align(center, text(size: 28pt, weight: "bold", fill: rgb("#0f172a"), "Elder Wilds"))
#align(center, text(size: 14pt, fill: rgb("#475569"), "Version " + version))
#align(center, text(size: 10pt, fill: luma(120), "Generated " + genDate))
#pagebreak()

// Table of Contents — H1 + H2 only
#text(size: 16pt, weight: "bold", fill: rgb("#1e293b"), "Contents")
#v(0.5cm)
#outline(depth: 2)
#pagebreak()

// === file: guide/modlist.md ===
= Foundations and Planning
<guide-modlist>

[content from guide/modlist.md, with tables/images/comments converted]

// === file: guide/install.md ===
= Installation Guide
<guide-install>

...
```

## Cross-file Links

The existing `fileAnchorMap` logic is adapted for typst: instead of `#some-anchor`, links
resolve to typst heading labels (`<file-sectionname>`). The script rewrites `](file.md#anchor)`
to `](#file-anchor)` — which typst resolves because the converter emits `#set heading(<anchor>)`
for each heading with a matching label.

## Decisions Matrix

| # | Issue | Fix |
|---|---|---|
| 1 | `#include` unpredictability | Abandoned `#include`. Script converts markdown inline with targeted transformations |
| 2 | Cross-file link anchors | Emit Typst `<labels>` after each heading, rewrite links to match |
| 3 | Cover image bloat | Resize to 1200px wide before embedding |
| 4 | Font availability | Download Inter + JetBrains Mono to `assets/fonts/` on first run |
| 5 | Winget auto-install | Removed. Script checks PATH and prints manual install instructions |
| 6 | Justified text rivers | Ragged right (`#set par(justify: false)`, the default) |
| 7 | Heading numbering on H1 | `#show heading` skips numbering for `level: 1`, applies `"1.1"` for levels 2+ |
| 8 | Missing `#show` rules | Added `#show heading.where(level: N)` rules for dark-slate colored headings at each level |
| 9 | No syntax highlighting | Added `#set raw(theme: "one-dark")` for code blocks |
| 10 | Monolithic `.typ` generation | Split: a reusable template file + script emits only the variable parts (version, date, content bodies) |
| 11 | Merged `.md` output | Removed. `.typ` is the only generated source |
| 12 | Version in footer | Removed. Footer is `"— N —"` centered |

## Acceptance Criteria

- [ ] Script runs end-to-end: `.\tools\merge-modlist.ps1` produces `rendered/elder-wilds.pdf`
- [ ] PDF has cover page with resized cover image, title "Elder Wilds", version number, generated date
- [ ] TOC shows H1 and H2 headings only (not H3+, not body text)
- [ ] All links render in blue (`#2563EB`)
- [ ] Body text uses Inter font, code blocks use JetBrains Mono with syntax highlighting
- [ ] Version `0.1.0` (from VERSION file) appears on cover page
- [ ] All 40 guide files are included in correct order
- [ ] Cross-file links resolve to correct headings within the single-PDF context
- [ ] PDF is at `rendered/elder-wilds.pdf`
- [ ] Typst not installed → script prints clear install instructions and exits
- [ ] Fonts missing → script downloads them automatically
