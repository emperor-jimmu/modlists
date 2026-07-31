# Torque Ascension — Design Spec (Revised)

**Project:** Automobilista 2 Modlist + Guide
**Date:** 2026-08-01 (revised)
**Status:** Draft — awaiting approval

---

## 1. Scope

Build a structured mod-list and game guide for Automobilista 2 (target V1.6.9.91, July 9 2026), minimum V1.6. All mods must be compatible with V1.6+. Uses AMS2 Content Manager (AMS2CM) as the mod organizer.

## 2. AMS2 Mod Reality Check

AMS2 does NOT have a Bethesda/RPG-style plugin ecosystem. Real AMS2 mod categories from OverTake.gg:

| Category | OverTake ID | Description | Examples |
|----------|-------------|-------------|----------|
| **Skins/Liveries** | 197 | Custom paint jobs, season skin packs, custom AI files bundled with skins | F1 2007 Skinpack, GT Endurance Legacy Pack |
| **Misc (Career Apps, FFB, Dashboards)** | 198 | External apps, force feedback files, SimHub overlays | Rewind GP, Race Pace, MaXBaldo FFB |
| **Cars** | 196 | Custom vehicle mods (bootfile-based) | Copa Truck Brasil 2026 |

**Mod distribution reality:** ~70% skins, ~25% career/tool apps, ~5% car/track mods. A curated list will be 20—40 mods across all waves. Wave counts will vary — Wave 0 may have only 3-5 mods. This is expected and correct.

## 3. Wave Structure

Each wave includes a roleplay background story and tutorial content specific to its discipline tier.

| Wave | Name | Content Focus | Mod Focus | Expected Mod Count |
|------|------|---------------|-----------|---------------------|
| 0 | Rookie License | Full how-to-play: controls, assists, UI, first laps. Karts + Formula Trainer/Vee at short tracks | AMS2CM setup, essential HUD/UI mods only | 3—6 |
| 1 | National License | GT4, P4, Copa Classics. Mid-length tracks. Strategy basics | Essential skin packs for GT4/tintop classes, first SimHub overlays | 5—10 |
| 2 | International License | GT3, Stock Car Brasil, F3, Group C. Endurance races. Telemetry intro | Season skin packs for open-wheel/GT3, FFB mod, telemetry dashboards | 8—15 |
| 3 | World Championship | F1-class, LMDh/GTP, historic F1. Full endurance. Setup engineering | Career apps (Rewind GP/Race Pace), pro dashboards, car mods, historic skin packs | 10—15 |

**Wave count justification:** Wave 0 is intentionally lean (it teaches the game, not mods). Waves accumulate — a Wave 3 player uses all prior-wave mods plus Wave 3 additions. Total unique mods across all waves: ~20—35.

## 4. Directory Structure

```
automobilista-2/
├── AGENTS.md
├── README.md
├── VERSION                        # 1.0.0
├── STATUS.md                      # Decision log, rejected mods, conflicts
├── mod-ideas.md                   # Future ideas (NOT in PDF)
├── conflicts-mods.md              # Conflict documentation (NOT in PDF)
├── assets/
│   ├── logo.jpg                   # Cover art
│   ├── fonts/                     # Montserrat, Inter, JetBrains Mono
│   └── screenshots/               # Guide screenshots (AMS2CM UI, in-game, settings)
├── guide/
│   ├── 00-install.md              # AMS2CM setup + game config
│   ├── 01-wave-0-rookie.md        # Tutorial + Wave 0 mods
│   ├── 02-wave-1-national.md      # Strategy + Wave 1 mods
│   ├── 03-wave-2-international.md
│   ├── 04-wave-3-championship.md
│   ├── appendix-mod-reference.md  # Master mod table (all waves)
│   └── appendix-glossary.md       # Racing terminology
├── templates/
│   ├── guide.typ                  # Main Typst template — imports all .md via cmarker
│   └── style.typ                  # Colors, fonts, layout functions
├── scripts/
│   └── generate-pdf.ps1           # Build script
├── output/                        # Generated PDFs
└── .gitignore
```

## 5. AMS2CM Integration

Practical quick-start:
1. Download + install AMS2CM
2. Point it at the AMS2 installation directory
3. Core workflows: install bootfiles, manage custom AI files, import skins
4. Each wave opens with a "Tools for this wave" section listing AMS2CM configuration steps

## 6. Research Methodology

Before any mod is added to the list:

1. **Search** OverTake.gg AMS2 categories (196, 197, 198) and sort by rating/downloads
2. **Verify** the mod's last update date against target version (V1.6.9.91, July 2026). Mods updated before V1.6 release need a compatibility check
3. **Evaluate** against wave criteria: does it serve that wave's experience?
4. **Approve/Reject** — log decision in `STATUS.md` with rationale
5. **Only then** add to guide chapter with verified URL
6. If a mod cannot be verified (dead link, version unknown, compatibility uncertain) → `mod-ideas.md`

**No fabrication.** Every URL must be clickable and verified.

## 7. Mod Entry Format

```markdown
### [Mod Name](https://verified-url.com) `vX.Y.Z`
**Source:** OverTake.gg
**Wave:** 0 | 1 | 2 | 3
**Category:** Skins/Liveries | Career App | Dashboard/Overlay | Custom FFB | Car Mod | AI Files
**Dependencies:** None | list
**AMS2CM Install:** (specific steps — copy to bootfiles folder, import skin, etc.)

**What it does:** One paragraph.

**Why:** How it serves this wave's experience.

**Notes:** Load order, configuration, known issues, alternatives.
```

## 8. PDF Layout

### 8.1 Theme

**Print-friendly light theme:**
- Page background: `#ffffff`
- Body text: `#1a1a1a` (near-black, high readability)
- Primary accent: `#cc2936` (racing red — headings, wave banners, left-borders)
- Secondary accent: `#f4a261` (orange — callouts, highlights)
- Tertiary accent: `#1d3557` (navy blue — code blocks, tables)
- Panel background: `#f8f8f8` with colored left-border
- Callout backgrounds: tinted pastels

### 8.2 Pages
1. **Cover page** — `logo.jpg` centered, "Torque Ascension" title, AMS2 version badge, subtitle, page numbers at bottom
2. **Auto-generated TOC**
3. **Install chapter** — AMS2CM walkthrough with screenshots
4. **Wave chapters** — Full-width coloured banner per wave, roleplay intro blockquote, styled mod panels, tutorial sections
5. **Appendix** — Master mod table (striped rows), glossary (two-column), DLC reference

### 8.3 Mod Panel Visual
Styled box with left-border colored by category:
- Red `#cc2936` = Skins/Liveries
- Orange `#f4a261` = Career App
- Blue `#1d3557` = Dashboard/Overlay
- Green `#2a9d8f` = Custom FFB
- Purple `#6a4c93` = Car Mod

Light grey background (`#f8f8f8`), subtle shadow, version badge in top-right, clickable name in bold.

### 8.4 Typst Technical

**Approach:** Guide content is written in markdown (`.md`), rendered via the `cmarker` Typst package which reads and renders markdown files natively. The main `guide.typ` uses `cmarker.render(read("guide/01-wave-0-rookie.md"))` for each file.

**Build pipeline** (`scripts/generate-pdf.ps1`):
```powershell
# 1. Verify Typst 0.15.1 is installed
# 2. typst compile templates/guide.typ output/torque-ascension-vX.Y.Z.pdf
# 3. Open output directory
```

**Dependencies:** Typst 0.15.1+, `cmarker` package, fonts in `assets/fonts/`

### 8.5 Screenshots

`assets/screenshots/` directory for:
- AMS2CM installation steps
- In-game HUD examples
- Settings menus
- Wave-specific car class examples
Screenshots referenced inline in guide chapters.

## 9. DLC Policy

Base game default. Each wave calls out "Strongly recommended" or "Required" DLC. DLC reference table in appendix.

## 10. Out of Scope
- PDF generation methods other than Typst/cmarker
- MO2-style separators (AMS2CM doesn't use them)
- Mod config overrides (AMS2 doesn't have text-based config files)
- Adult content (irrelevant to AMS2)
