# AGENTS.md — No One is Coming

## Project Context
Modlist and survival guide for Project Zomboid Build 42.12.3 (22 October 2025). Three progressive waves of increasing difficulty, each a new game with different mods and roleplaying background. Delivered as a PDF via Typst 0.15.

## File Conventions
- `.typ` files: UTF-8, LF line endings, 2-space indent
- Modular: `#include` for section files, `#import` for template
- kebab-case filenames

## Build Command
```
typst compile guide/main.typ output/No-One-Is-Coming.pdf --root guide/
```
Requires Typst 0.15 in PATH.

## Font Loading
Fonts live in `assets/fonts/` as `.ttf`. Typst discovers them via `--font-path`:
```
typst compile --font-path assets/fonts guide/main.typ output/No-One-Is-Coming.pdf
```
Typst resolves TTF files by family name, not filename. Family names:
- Atkinson Hyperlegible (Regular, Bold, Italic, BoldItalic)
- Special Elite
- JetBrains Mono

## Mod Rules
- B42 compatible (last updated ≥ October 2025 or explicit B42 statement)
- No conflicts (document in mod-conflicts.md)
- No redundant mods (pick the better-maintained one)
- No cheat/OP (no god mode, infinite resources, omniscient map, skill-to-10 buttons)
- No explicit porn (intimacy/romance/nudity-for-realism OK)
- Not abandoned (recent B42 activity)

## Mod Discovery Workflow
1. Open Steam Workshop via Playwright: `https://steamcommunity.com/app/108600/workshop/`
2. Browse by B42 tag, most popular, keyword search
3. For each candidate: check description for B42, check last updated date, check dependencies, check comments for bugs
4. Document in wave-N/modlist.typ using `#mod-entry()`

## Do Not Commit
- `output/*.pdf`

## Typst 0.15 Notes
- `#outline()` for auto-generated TOC
- `#pagebreak()` for page breaks
- `#link("url")[text]` for clickable links
- `#set page(fill: ...)` for background color
- Fonts loaded via `--font-path` CLI flag pointing to `assets/fonts/`
- Use `#set text(font: "Family Name")` with the installed/registered family name
