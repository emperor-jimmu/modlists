# Outlaw Overhaul — Design Specification

## Overview

A Red Dead Redemption 2 modlist and guide named **Outlaw Overhaul**, targeting game version 1.32 (March 19, 2024). Uses Lenny's Mod Loader (LML) as the modding framework. Organized into two waves — Wave 0 (vanilla/QoL, beginner-friendly) and Wave 1 (more mods, advanced mechanics, experienced players). Output as a single PDF with rich Typst formatting.

---

## Project Structure

```bash
rdr2-modlist/
├── AGENTS.md                     # Project instructions
├── README.md                     # Project overview
├── assets/
│   └── logo.jpg                  # Cover page logo
├── fonts/                        # Bundled TTF font files
│   ├── PlayfairDisplay-Regular.ttf
│   ├── PlayfairDisplay-Bold.ttf
│   ├── Inter-Regular.ttf
│   └── Inter-Bold.ttf
├── guide/
│   ├── master.typ                # Entry point, includes all sections via #include
│   ├── theme.typ                 # Colors, fonts, reusable styles (show rules)
│   ├── 00-foreword.typ           # Modlist intro, credits, scope
│   ├── 01-installation.typ       # LML setup, requirements, version notes
│   ├── 02-wave0-guide.typ        # Wave 0 walkthrough + roleplaying theme
│   ├── 03-wave1-guide.typ        # Wave 1 walkthrough + roleplaying theme
│   ├── 04-modlist.typ            # Full mod catalog (both waves)
│   └── 05-appendix.typ           # Troubleshooting, performance tips
├── conflicts.md                  # Mod conflicts tracking (NOT in PDF)
├── mod-ideas.md                  # Mod ideas to be developed (NOT in PDF)
├── output/
│   ├── Outlaw-Overhaul.pdf
│   └── Outlaw-Overhaul.log       # Typst compilation log
└── generate-pdf.bat              # Batch file to compile PDF
```

---

## Waves

### Wave 0 — The Honorable Drifter

- **Theme:** Learning the land, minimal chaos, honorable choices.
- **Content:** Beginner tutorial covering RDR2 basics — controls, dead eye, hunting, crafting, honor system, camp management. Key story beats highlighted with gameplay tips; not a chapter-by-chapter retelling.
- **Mods:** Vanilla or QoL/UI mods only. No mechanics-altering mods.
- **Goal:** Complete a full playthrough experiencing the story as intended, with minor polish.

### Wave 1 — Full Outlaw Descent

- **Theme:** Living outside the law, maximum chaos, crime-focused.
- **Content:** Advanced strategies — bounty evasion, maximum profit routes, crime waves, save management, world-state manipulation.
- **Mods:** Graphics, content additions, new mechanics. No cheating/overpowered/all-knowing mods.
- **Goal:** A transformed experience with meaningful mechanical changes.

Each wave includes configuration instructions for its assigned mods and a short narrative framing paragraph.

---

## Mod Entry Format

Each mod in the modlist includes:

| Field                      | Description                                                            |
|----------------------------|------------------------------------------------------------------------|
| **Name**                   | Clickable hyperlink to mod page                                        |
| **Author**                 | Mod author name                                                        |
| **Category**               | One of: Graphics, Gameplay, UI, Audio, Weapons, Horses, Economy, World |
| **Wave**                   | 0, 1, or "both"                                                        |
| **Description**            | 2-3 line summary                                                       |
| **Dependencies**           | LML, Script Hook RDR2, other mods                                      |
| **System/Mechanic Impact** | What the mod changes in gameplay                                       |
| **Installation Notes**     | Non-standard install steps                                             |
| **Conflicts**              | Known incompatible mods                                                |

**Sorting:** Mods listed alphabetically within each category. Wave column uses a colored badge ("Wave 0", "Wave 1", or "Both").

**Cross-wave mods:** Listed once with wave badge "Both". Description covers usage in both contexts.

### Mod Compatibility Verification Process

- Check mod page for stated version compatibility (1.32 or "March 2024" patch preferred)
- If no version stated: use last-updated date. Mods updated after March 19, 2024 are likely OK; mods with no update since before January 2024 need manual review
- Check comments section for "1.32" or "latest patch" reports
- Test in clean LML environment before adding to guide
- Document verification status per mod in `conflicts.md`

### Adult/Nude Mod Policy

- Allowed where thematically relevant to the setting (e.g., saloon realism, body diversity)
- Not allowed: explicit sexual content, sexual animations, sexualized minors, bestiality
- When in doubt, ask the user

---

## PDF Visual Design

### Toolchain

- **Typst 0.15** for PDF generation
- `generate-pdf.bat` batch file with proper error handling
- One master `.typ` file (`guide/master.typ`) that `#include`s all section files
- Typst `#include` reads file content and injects it as markup — correct for multi-file document composition
- Font `.ttf` files bundled in `fonts/` and embedded via Typst's `#set text(font: ...)` + `--font-path fonts/` CLI flag

### Font Strategy

- Fonts downloaded from Google Fonts / OFL sources, stored as `.ttf` in `fonts/`
- Typst invoked with `--font-path fonts/` to discover them
- If font files are missing, batch file errors out with clear message

### Batch File Behavior (`generate-pdf.bat`)

1. Check if `typst` is on PATH; if not, print install instructions and exit with error
2. Check that all font files exist in `fonts/`; if not, exit with error
3. Check that `assets/logo.jpg` exists; if not, warn but continue
4. Check that `guide/master.typ` exists; if not, exit with error
5. Create `output/` directory if it doesn't exist
6. Run `typst compile --font-path fonts/ guide/master.typ output/Outlaw-Overhaul.pdf 2> output/Outlaw-Overhaul.log`
7. If exit code != 0, print "Compilation failed — check output/Outlaw-Overhaul.log" and exit
8. Print "PDF generated: output/Outlaw-Overhaul.pdf"

### Page Layout

- **Page size:** US Letter (8.5×11in) — covers print digital-first but renders well on screens
- **Margins:** 1in top/bottom, 1.2in left/right (generous for readability)
- **Header:** Empty (no running header)
- **Footer:** Centered page number, starting from 1 after cover page. Cover page has no footer.
- **Body width:** ~6.1in after margins — comfortable for 10-11pt text

### Color Palette (Wild West Theme)

- **Background:** Warm cream `#f5eedc` (weathered paper feel)
- **Headings:** Deep saddle brown `#5c3a21`
- **Body:** Dark charcoal `#2c2c2c`
- **Accent:** Rust red `#8b2500` (links, wave tags, callouts)
- **Code/config blocks:** Dark sepia bg `#3a2a1a`, warm amber text `#f0d060` — used for INI config snippets, terminal commands, and mod settings

### Font Pairing

- **Headings:** Playfair Display (serif, Western feel)
- **Body:** Inter (clean sans-serif, excellent readability at 10-11pt)

### Cover Page

- Logo (`assets/logo.jpg`) centered, large (6in wide, page-width constrained)
- Title: **Outlaw Overhaul** (36pt Playfair Display Bold, saddle brown)
- Subtitle: "A Red Dead Redemption 2 Modlist & Guide" (14pt Inter Regular, charcoal)
- Horizontal rule (deep brown, 0.5pt)
- Table of contents via Typst's `outline()` — targets all level-1 headings. Works in one pass: Typst collects heading metadata document-wide regardless of position

### Heading Hierarchy (ToC Structure)

```
= Level 1 (appears in ToC)
== Level 2
=== Level 3
```

Files map to level-1 headings:

- `00-foreword.typ` → `= Foreword`
- `01-installation.typ` → `= Installation & Setup`
- `02-wave0-guide.typ` → `= Wave 0: The Honorable Drifter`
- `03-wave1-guide.typ` → `= Wave 1: Full Outlaw Descent`
- `04-modlist.typ` → `= Mod Catalog`
- `05-appendix.typ` → `= Appendix`

### Document Features

- Page numbers on all pages except cover (starts at 1 after cover)
- ToC on cover page: top-level headings only (level-1 `=`)
- Code blocks with config snippets rendered in monospace on sepia background
- Mod wave badges as colored inline tags (rust red for Wave 1, muted green for Wave 0)

---

## Guide File Content Blueprint

### 00-foreword.typ

- What this modlist is
- Version compatibility (1.32)
- Credits and acknowledgments
- Disclaimer

### 01-installation.typ

- Clean RDR2 install instructions
- LML setup step-by-step
- Script Hook RDR2 installation
- Version verification
- Folder structure expectations
- Configuration snippets in code blocks

### 02-wave0-guide.typ

- Roleplaying theme paragraph (2-3 sentences)
- Key story beats highlighted with gameplay tips (not a full walkthrough — ~20 bullet points covering chapters 1-6 with focus on mechanics to learn)
- Core mechanics tutorial (dead eye, hunting, honor, crafting, camp)
- Wave 0 mod installation & configuration
- Save file management for clean transition to Wave 1

### 03-wave1-guide.typ

- Roleplaying theme paragraph (2-3 sentences)
- Advanced strategies (bounty maximization, organized crime routes, wanted-system exploitation)
- World-state manipulation tips
- Wave 1 mod installation & configuration
- Save management / compatibility warnings
- Performance tuning for heavy mod loads

### 04-modlist.typ

- Complete catalog of all mods, both waves
- Sorted alphabetically within each of the 8 categories
- Wave badge per mod ("Wave 0", "Wave 1", "Both")
- Full entry format per mod
- Category subheadings (`== Graphics`, `== Gameplay`, etc.)

### 05-appendix.typ

- Troubleshooting guide (common crash causes, LML issues, load order)
- Performance tuning for modded RDR2 (graphics settings, memory)
- Save migration between waves

---

## Files NOT in PDF Output

- `conflicts.md` — mod conflict tracking, developer reference. Structured per-mod: verified status, known conflicts, testing notes
- `mod-ideas.md` — mod ideas that don't exist yet and need development. For each: concept, desired mechanics, rationale (why no existing mod covers it)

---

## Constraints

- All mods must be compatible with RDR2 1.32 (verified via process defined above)
- No porn mods (adult/nude allowed within policy defined above)
- No redundant or conflicting mods
- No cheating/overpowered/all-knowing mods
- LML is the only mod loader used
- Adult mod info fetched via Playwright if tools cannot access it
