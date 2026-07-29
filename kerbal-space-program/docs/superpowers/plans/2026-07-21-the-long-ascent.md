# The Long Ascent — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the full project structure, Typst PDF pipeline, CKAN metapackages, and guide skeleton for a 3-wave KSP modlist.

**Architecture:** Guide content authored in Typst `.typ` files. `template/main.typ` master file defines global styles via `template/lib.typ` helpers and includes each guide file. Build scripts call `typst compile` with `--font-path assets/fonts/` so bundled fonts work without system install. Three separate CKAN `.ckan` files (one per wave) allow independent installation.

**Tech Stack:** Typst 0.13+ (PDF), CKAN JSON metapackage (3 files), Python (font download helper), batch/bash (build orchestration)

**Design Decision — `.typ` not `.md`:** The spec uses `.md` for guide files, but Typst requires its own markup for direct compilation. Typst markup (`=`, `==`, `*bold*`, `_italic_`, `- lists`) is nearly identical to markdown. No conversion preprocessing needed.

---

### Task 1: Project Scaffolding + .gitignore

**Files:**

- Create: `AGENTS.md`
- Create: `README.md`
- Create: `mod-ideas.md`
- Create: `.gitignore`
- Create: directories `guide/`, `output/`, `scripts/`, `template/`, `assets/fonts/`

- [ ] **Step 1: Create all directories**

Run: `New-Item -ItemType Directory -Path "guide", "output", "scripts", "template", "assets\fonts" -Force`

- [ ] **Step 2: Write .gitignore**

```
# Typst
*.pdf

# Python
__pycache__/
*.pyc
*.pyo

# Font download artifacts
assets/fonts/*.zip

# OS files
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/

# Output
output/
```

- [ ] **Step 3: Write AGENTS.md**

```markdown
# AGENTS.md

## Project: The Long Ascent — KSP Modlist & Guide

A curated 3-wave modlist and game guide for Kerbal Space Program 1.12.5, distributed as a Typst-generated PDF with CKAN metapackages for one-click installation.

### Key Rules

- **KSP Version:** 1.12.5 (Jan 11, 2023). All mods must be compatible with 1.12.x minimum.
- **Wave Structure:** 3 cumulative waves. Wave 1 includes Wave 0; Wave 2 includes all.
  - Wave 0: UI/QoL only, no gameplay changes. Focused quickstart guide.
  - Wave 1: Graphics, parts packs, light mechanics. Comprehensive tutorial.
  - Wave 2: Life support, colonization, interstellar, realism. Strategy guide.
- **Wave Assignment Flowchart:**
  1. Does it change any game mechanic? No → Wave 0. Yes → continue.
  2. Does it add failure conditions, resource chains, or alter physics? Yes → Wave 2.
  3. Otherwise → Wave 1.
- **Mod Rules:** No conflicts within wave, no redundant mods, no cheating/OP mods, no NSFW/porn mods.
- **CKAN:** All mods must have valid CKAN identifiers. One `.ckan` file per wave, plus a combined file.
- **DLCs:** Breaking Ground and Making History recommended but not required. DLC-dependent mods go in optional subsections.

### File Roles

| File                          | Purpose                                                                  |
|-------------------------------|--------------------------------------------------------------------------|
| `guide/*.typ`                 | Authoritative guide content in Typst markup. Edit these, not the PDF.    |
| `template/main.typ`           | Master Typst template. Includes all guide files.                         |
| `template/lib.typ`            | Helper functions: wave title pages, mod entries, callout boxes, styling. |
| `scripts/build.bat`           | Windows build. Calls `typst compile`.                                    |
| `scripts/build.sh`            | Linux/macOS build. Calls `typst compile`.                                |
| `the-long-ascent.ckan`        | Combined CKAN metapackage (all 3 waves).                                 |
| `the-long-ascent-wave-0.ckan` | Wave 0 CKAN metapackage.                                                 |
| `the-long-ascent-wave-1.ckan` | Wave 1 CKAN metapackage.                                                 |
| `the-long-ascent-wave-2.ckan` | Wave 2 CKAN metapackage.                                                 |
| `mod-ideas.md`                | Personal mod dev backlog. NOT included in PDF.                           |
| `output/the-long-ascent.pdf`  | Generated output. Do not edit directly.                                  |

### Mod Entry Format (in .typ files)

```typst
#mod-entry(
  name: [Mod Name],
  ckan_id: "CKAN-Identifier",
  url: "https://forum.kerbalspaceprogram.com/...",
  description: [Brief description of the mod.],
  dependencies: (ModA, ModB, ModC),
  impact_types: (UI, Parts, Graphics, Mechanics, Gameplay),
  impact_description: [What systems this mod affects and how.],
  conflicts: [Known conflicts with other mods in this modlist.],
  version_pin: [Compatible with KSP 1.12.x. No version pin needed.],
)
```

### Build & Test

- **Build PDF:** Run `scripts/build.bat` (Windows) or `bash scripts/build.sh` (Linux/macOS)
- **Prerequisites:** Typst 0.13+ on PATH, Python 3 for font download script

```

- [ ] **Step 4: Write README.md**

```markdown
# The Long Ascent

A curated 3-wave modlist and comprehensive game guide for Kerbal Space Program 1.12.5.

## Quick Start

### Prerequisites

- **KSP 1.12.5** installed via Steam, GOG, or direct download
- **CKAN** — [Download](https://github.com/KSP-CKAN/CKAN/releases)
- **Breaking Ground** and **Making History** DLCs (recommended but not required)
- **Typst 0.13+** — [Install](https://github.com/typst/typst/releases) (only needed to regenerate the PDF)

### Install Mods — One Wave at a Time

Install each wave's `.ckan` file separately:

```

File → Install from .ckan → the-long-ascent-wave-0.ckan   (beginner)
File → Install from .ckan → the-long-ascent-wave-1.ckan   (intermediate, requires Wave 0)
File → Install from .ckan → the-long-ascent-wave-2.ckan   (advanced, requires Waves 0–1)

```

Each wave is cumulative — Wave 1 expects Wave 0 is installed, and Wave 2 expects Waves 0–1.

Alternatively, install everything at once with `the-long-ascent.ckan` (the combined file). Waves 0–1 appear as recommendations; Wave 2 mods appear as suggestions you can opt into.

### Read the Guide

Open `output/the-long-ascent.pdf` or regenerate it:

```bash
# Windows
scripts\build.bat

# Linux / macOS
bash scripts/build.sh
```

## Project Structure

```
├── guide/                      — Guide content (Typst markup)
├── template/                   — Typst PDF template and styling
├── scripts/                    — Build scripts and font downloader
├── output/                     — Generated PDF
├── assets/                     — Logo and bundled fonts
├── mod-ideas.md                — Personal mod dev backlog (not in PDF)
├── the-long-ascent.ckan        — Combined CKAN metapackage (all waves)
├── the-long-ascent-wave-0.ckan — Wave 0 CKAN metapackage
├── the-long-ascent-wave-1.ckan — Wave 1 CKAN metapackage
└── the-long-ascent-wave-2.ckan — Wave 2 CKAN metapackage
```

## Waves

| Wave | Name            | Focus                                    | Guide                                         |
|------|-----------------|------------------------------------------|-----------------------------------------------|
| 0    | First Steps     | UI/QoL only                              | Quickstart: orbit, Mun, docking               |
| 1    | Going Further   | Graphics, parts                          | Full tutorial: interplanetary, ISRU, stations |
| 2    | The Long Ascent | Life support, colonization, interstellar | Strategy guide                                |

Waves are cumulative. Install one at a time in order.

```

- [ ] **Step 5: Write mod-ideas.md (skeleton)**

```markdown
# Mod Ideas — Development Backlog

Personal mods to create for KSP. Not included in the guide PDF.

---

<!-- Add ideas below. Format:
## Mod Name
- **Category:** Parts / Mechanics / UI / Graphics
- **Target Wave:** 0 / 1 / 2
- **Description:** What does it do?
- **Status:** idea / prototyping / in development
-->

```

- [ ] **Step 6: Commit**

```bash
git add .gitignore AGENTS.md README.md mod-ideas.md guide/ output/ scripts/ template/ assets/fonts/
git commit -m "chore: scaffold project structure with .gitignore, AGENTS.md, README.md"
```

---

### Task 2: Typst Template — Styling Library

**Files:**

- Create: `template/lib.typ`

- [ ] **Step 1: Write lib.typ**

```typst
// lib.typ — The Long Ascent styling helpers
// Import into main.typ with: #import "lib.typ": *
//
// Fonts are resolved via Typst's --font-path flag pointing to assets/fonts/.
// This file uses font family names (Orbitron, Inter, JetBrains Mono) which
// Typst resolves from the --font-path directory at compile time.
// See build scripts for the --font-path argument.

// ─── Color Palette ───────────────────────────────────────────────

#let space-dark   = rgb("#0B1D3A")
#let space-mid    = rgb("#162D50")
#let space-light  = rgb("#1E3A5F")
#let ksp-orange   = rgb("#F4982B")
#let ksp-teal     = rgb("#1BA1E2")
#let kerbin-green = rgb("#8BC34A")
#let mun-gray     = rgb("#B0B8C4")
#let white        = rgb("#F5F7FA")
#let warning-red  = rgb("#EF5350")
#let text-dark    = rgb("#1A1A2E")

// ─── Fonts (resolved by Typst from --font-path directory) ───────

#let heading-font = "Orbitron"
#let body-font    = "Inter"
#let code-font    = "JetBrains Mono"

// ─── Page Setup ──────────────────────────────────────────────────

#let page-setup(
  page,
) = {
  set page(
    paper: "a4",
    margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
    numbering: "1",
    header: [
      #set text(font: heading-font, size: 7pt, fill: mun-gray)
      #context page.numbering
    ],
  )
  set text(font: body-font, size: 10pt, fill: text-dark)
  set par(leading: 0.6em, justify: true)
}

// ─── Headings ────────────────────────────────────────────────────

#let chapter-heading(title) = {
  v(1em)
  set text(font: heading-font, weight: "bold", size: 18pt, fill: ksp-orange)
  title
  v(0.3em)
  line(length: 100%, stroke: 1pt + ksp-orange)
  v(0.8em)
}

#let section-heading(title) = {
  v(0.8em)
  set text(font: heading-font, weight: "semibold", size: 14pt, fill: space-dark)
  title
  v(0.5em)
}

#let sub-heading(title) = {
  v(0.6em)
  set text(font: heading-font, weight: "regular", size: 12pt, fill: space-light)
  title
  v(0.3em)
}

// ─── Wave Title Page ─────────────────────────────────────────────

#let wave-title-page(number, name, subtitle) = {
  pagebreak()
  set align(center)
  rect(
    width: 100%,
    height: 100%,
    fill: space-dark,
    radius: 0pt,
  )[
    #v(4cm)
    #set text(font: heading-font, weight: "bold", size: 14pt, fill: ksp-teal)
    [WAVE #number]
    #v(0.5cm)
    #set text(font: heading-font, weight: "extrabold", size: 28pt, fill: white)
    [#name]
    #v(0.3cm)
    #line(length: 4cm, stroke: 2pt + ksp-orange)
    #v(0.5cm)
    #set text(font: body-font, size: 12pt, fill: mun-gray)
    [#subtitle]
  ]
  pagebreak()
}

// ─── Callout Boxes ───────────────────────────────────────────────

#let callout(accent, body) = {
  block(
    inset: 10pt,
    radius: 4pt,
    fill: space-mid,
    stroke: (left: 3pt + accent),
  )[
    #set text(font: body-font, size: 9.5pt, fill: white)
    #body
  ]
  v(0.5em)
}

#let info(body) = callout(ksp-teal, body)
#let warning(body) = callout(ksp-orange, body)
#let tip(body) = callout(kerbin-green, body)
#let danger(body) = callout(warning-red, body)

// ─── Mod Entry ───────────────────────────────────────────────────

#let mod-entry(
  name: none,
  ckan_id: none,
  url: none,
  description: none,
  dependencies: (),
  impact_types: (),
  impact_description: none,
  conflicts: none,
  version_pin: none,
) = {
  v(0.8em)
  grid(
    columns: (1fr, 2fr),
    column-gutter: 1.5em,
    row-gutter: 0.3em,

    // Left column — metadata
    [
      #set text(font: heading-font, weight: "semibold", size: 11pt, fill: space-dark)
      #if url != none {
        link(url)[#name]
      } else {
        name
      }
      #v(0.2em)
      #set text(font: code-font, size: 8pt, fill: mun-gray)
      [`#ckan_id`]

      #v(0.5em)

      #if dependencies.len() > 0 {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Dependencies:* #dependencies.join(", ")]
        v(0.2em)
      }

      #if impact_types.len() > 0 {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Impact:* #impact_types.join(", ")]
        v(0.2em)
      }

      #if version_pin != none {
        set text(font: body-font, size: 8pt, fill: mun-gray)
        [*Version:* #version_pin]
        v(0.2em)
      }
    ],

    // Right column — description + impact + conflicts
    [
      #set text(font: body-font, size: 10pt)
      #description

      #if impact_description != none {
        v(0.4em)
        set text(font: body-font, size: 9pt, fill: text-dark)
        [#impact_description]
      }

      #if conflicts != none {
        v(0.4em)
        text(font: body-font, size: 8.5pt, fill: warning-red)[
          ⚠ Conflicts: #conflicts
        ]
      }
    ],
  )
  v(0.3em)
  line(length: 100%, stroke: 0.5pt + rgb("#d0d0d0"))
  v(0.5em)
}

// ─── Wave Boundary Criteria Table ────────────────────────────────

#let wave-criteria-table() = {
  set text(font: body-font, size: 8.5pt)
  table(
    columns: (auto, auto, auto, auto),
    inset: 6pt,
    align: (left, center, center, center),
    stroke: 0.5pt + mun-gray,
    table.header(
      [*Criterion*], [*Wave 0*], [*Wave 1*], [*Wave 2*],
    ),
    [Gameplay changed?], [No], [Adds content], [Adds complexity],
    [Learning curve], [None], [Parts/options], [Entirely new systems],
    [New resource chains?], [No], [Trivial or none], [Yes (LS, colony, fuel)],
    [Penalizes mistakes?], [No], [No], [Yes (dead kerbals, RUD)],
    [Save-breaking?], [No], [Unlikely], [Likely],
  )
  v(0.5em)
}

// ─── Code Block ──────────────────────────────────────────────────

#let code-block(body-text) = {
  block(
    inset: 10pt,
    radius: 4pt,
    fill: space-mid,
  )[
    #set text(font: code-font, size: 9pt, fill: ksp-teal)
    #body-text
  ]
  v(0.5em)
}

// ─── Divider ─────────────────────────────────────────────────────

#let section-divider() = {
  v(1em)
  line(length: 100%, stroke: 1pt + ksp-orange)
  v(1em)
}
```

- [ ] **Step 2: Commit**

```bash
git add template/lib.typ
git commit -m "feat: add Typst styling library with color palette, mod entries, wave pages"
```

---

### Task 3: Typst Template — Master File and Cover

**Files:**

- Create: `template/main.typ`

- [ ] **Step 1: Write main.typ**

```typst
// main.typ — The Long Ascent master template
// Compile with: typst compile --font-path assets/fonts template/main.typ output/the-long-ascent.pdf
//
// Fonts are resolved from assets/fonts/ via the --font-path CLI flag.
// No system font dependency required.

#import "lib.typ": *

// ─── Page Setup ──────────────────────────────────────────────────
// Apply the default page style for all content pages.
// The cover page overrides this explicitly — see the cover() function below.

#show: page-setup

// ─── Cover Page ──────────────────────────────────────────────────
// Render cover as a standalone page with its own full-bleed dark background.
// Using a show rule with a flag is the safest way to override page settings
// for a single page in Typst.

#let is-cover = state("is-cover", true)

#context {
  if is-cover.get() {
    set page(
      fill: space-dark,
      margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    )
    set align(center)

    v(3cm)
    image("../assets/logo.png", width: 4cm)
    v(1.5cm)

    set text(font: heading-font, weight: "extrabold", size: 32pt, fill: white)
    [The Long Ascent]

    v(0.3cm)
    line(length: 6cm, stroke: 2pt + ksp-orange)
    v(0.5cm)

    set text(font: body-font, size: 14pt, fill: mun-gray)
    [A Kerbal Space Program Modlist \& Guide]

    v(2cm)

    set text(font: heading-font, size: 10pt, fill: ksp-teal)
    [Version 1.0 — July 2026]

    v(1cm)

    set text(font: body-font, size: 9pt, fill: space-light)
    [For Kerbal Space Program 1.12.5]
    v(0.3em)
    [Compatible with Breaking Ground \& Making History]

    is-cover.update(false)
    pagebreak()
  }
}

// ─── Table of Contents ───────────────────────────────────────────

#chapter-heading([Table of Contents])
#outline(
  indent: 1em,
  fill: line(fill: mun-gray),
)

// ─── Installation ────────────────────────────────────────────────

#pagebreak()
#include "../guide/installation.typ"

// ─── Wave 0 ──────────────────────────────────────────────────────

#wave-title-page(
  0,
  [First Steps],
  [UI & Quality of Life — Learning to Fly],
)
#chapter-heading([Wave 0 — Mod List])
#include "../guide/wave-0-first-steps.typ"

// ─── Wave 1 ──────────────────────────────────────────────────────

#wave-title-page(
  1,
  [Going Further],
  [Graphics, Parts & Expanded Horizons],
)
#chapter-heading([Wave 1 — Mod List])
#include "../guide/wave-1-going-further.typ"

// ─── Wave 2 ──────────────────────────────────────────────────────

#wave-title-page(
  2,
  [The Long Ascent],
  [Colonization, Life Support & Interstellar Travel],
)
#chapter-heading([Wave 2 — Mod List])
#include "../guide/wave-2-the-long-ascent.typ"

// ─── Appendix ────────────────────────────────────────────────────

#pagebreak()
#chapter-heading([Appendix])
#include "../guide/appendix.typ"
```

- [ ] **Step 2: Commit**

```bash
git add template/main.typ
git commit -m "feat: add Typst master template with cover, ToC, and wave includes"
```

---

### Task 4: Guide Content Files

**Files:**

- Create: `guide/installation.typ`
- Create: `guide/wave-0-first-steps.typ`
- Create: `guide/wave-1-going-further.typ`
- Create: `guide/wave-2-the-long-ascent.typ`
- Create: `guide/appendix.typ`

- [ ] **Step 1: Write installation.typ**

```typst
// guide/installation.typ

#chapter-heading([Installation Guide])

#section-heading([Prerequisites])

- *Kerbal Space Program 1.12.5* — installed via Steam, GOG, or direct download
- *CKAN* — download from https://github.com/KSP-CKAN/CKAN/releases
- *Breaking Ground* and *Making History* DLCs — recommended but not required
- *Typst 0.13+* — only needed to regenerate this PDF from source ( https://github.com/typst/typst/releases )

#section-heading([Step-by-Step Setup])

#section-heading([Step 1 — Install CKAN])

Download the latest CKAN release for your platform. Launch CKAN. On first run it will ask you to locate your KSP installation — point it at your KSP 1.12.5 directory.

#info[[
  *Steam users:* Your KSP directory is typically at:
  `C:\Program Files (x86)\Steam\steamapps\common\Kerbal Space Program` (Windows)
  or `~/.steam/steam/steamapps/common/Kerbal Space Program` (Linux).
  Use File → Manage KSP Instances to manage multiple versions.
]]

#section-heading([Step 2 — Add Repository (if needed)])

CKAN should already include the default repository. If you don't see mods appearing:

1. Settings → CKAN Settings → New Repository
2. Add: `https://github.com/KSP-CKAN/CKAN-meta/archive/main.tar.gz`
3. Click OK, then File → Refresh

#section-heading([Step 3 — Install The Long Ascent Waves])

The modlist ships as three CKAN metapackage files, one per wave. Install them in order:

#info[[
  *Wave 0:* `the-long-ascent-wave-0.ckan` — UI and QoL mods only. Install this first and play through the Wave 0 guide before adding more.
]]

#info[[
  *Wave 1:* `the-long-ascent-wave-1.ckan` — Graphics mods, parts packs, light mechanics. Install after Wave 0, once you've mastered the basics.
]]

#info[[
  *Wave 2:* `the-long-ascent-wave-2.ckan` — Life support, colonization, interstellar, realism overhauls. Install after Wave 1. Each mod is optional — choose the ones that match your preferred challenge level.
]]

For each wave:

1. File → Install from .ckan... → select the wave's `.ckan` file
2. CKAN will display a list of mods. Review the changes.
3. Click Continue, then Apply. CKAN downloads and installs everything.

Alternatively, use `the-long-ascent.ckan` (the combined file) to install all waves at once. Waves 0–1 appear as recommendations; Wave 2 mods appear as suggestions you can opt into.

#section-heading([Step 4 — Launch and Verify])

Launch KSP. When the main menu loads, you should see the ModuleManager banner in the lower-right corner, confirming mods are active. Start a new save — do not load old saves without checking compatibility.

#tip[[
  *Recommended first save:* Career mode with default settings for Wave 0. For Waves 1–2, adjust difficulty sliders (funds and science rewards) since additional mechanics increase the learning curve and resource demands.
]]

#section-heading([CKAN Troubleshooting])

#section-heading([CKAN can't find my KSP install])

CKAN looks for `buildID64.txt` or `KSP.exe` / `KSP.x86_64` in the game directory. Use File → Manage KSP Instances → Add New and manually browse to the folder.

#section-heading([Mods fail to download])

Some mods are hosted on services that may be temporarily down. CKAN will show an error as it progresses — note which mod failed and try again later.

#section-heading([Conflict warnings])

CKAN may warn about mod conflicts. When installing via the `.ckan` metapackages, conflicts are handled. If you see unexpected conflicts, check the `conflicts` notes in the individual mod entries later in this guide.

#section-heading([Regenerating the PDF])

To rebuild this PDF from the source Typst files:

#code-block[
  # Windows
  scripts\build.bat

  # Linux / macOS
  bash scripts/build.sh
]

The build scripts run `typst compile` with the `--font-path` flag so bundled fonts are used. Ensure Typst 0.13+ is installed and on your PATH.
```

- [ ] **Step 2: Write wave-0-first-steps.typ**

```typst
// guide/wave-0-first-steps.typ

#section-heading([About Wave 0])

Wave 0 is for new players or veterans returning to stock KSP. It adds only UI and quality-of-life mods — nothing that changes gameplay, parts, or physics. You will learn core skills in the stock game before any mechanics become more complex.

#wave-criteria-table()

#info[[
  *Wave 0 Decision Rule:* If a mod does not change any game mechanic, it belongs here. If it adds parts, resources, or new failure conditions, it belongs in Wave 1 or 2.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// Example mod entry — replace with actual mods:
// #mod-entry(
//   name: [Kerbal Engineer Redux],
//   ckan_id: "KerbalEngineerRedux",
//   url: "https://forum.kerbalspaceprogram.com/topic/...",
//   description: [Displays critical flight data (delta-v, TWR, orbital info) in a customizable HUD.],
//   dependencies: (),
//   impact_types: (UI),
//   impact_description: [Adds readout panels to VAB/SPH and flight view. No new parts, no gameplay changes.],
//   conflicts: none,
//   version_pin: [Compatible with KSP 1.12.x.],
// )

// TODO: Add mod entries here

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: FIRST STEPS
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 0 Guide — First Steps])

#section-heading([Before You Launch])

#section-heading([Game Mode Choice])

Start a *Science* or *Career* save on Normal difficulty. Sandbox is tempting but overwhelming — you unlock all parts at once without context. Science mode gates parts behind experiments, teaching you one set of parts at a time. Career adds funds and contracts, giving you goals and constraints that mirror real space programs.

#tip[[
  If you choose Career, use default settings. Don't touch the difficulty sliders yet — the stock balance is well-tested for new players.
]]

#section-heading([The Kerbal Space Center])

Click through the buildings to understand what each one does:

- *Vehicle Assembly Building (VAB)* — build rockets (vertical launch)
- *Spaceplane Hangar (SPH)* — build planes (horizontal takeoff)
- *Tracking Station* — view and control all active flights
- *Mission Control* — accept and review contracts
- *Administration Building* — strategies (ignore for now)
- *Research and Development* — unlock parts with science points
- *Astronaut Complex* — hire and manage kerbonauts
- *Launch Pad / Runway* — where craft go up

#section-heading([Building Your First Rocket])

#section-heading([The Basics of Rocket Design])

Open the VAB. You'll see the parts list on the left and the assembly area in the center. Every rocket needs:

1. *Command Pod* — where the kerbal sits. Start with the Mk1 Command Pod.
2. *Fuel Tank* — holds liquid fuel and oxidizer. The FL-T series is standard.
3. *Engine* — burns fuel to produce thrust. The LV-T45 "Swivel" is a good first engine (it gimbals — steerable thrust).
4. *Parachute* — for landing safely. Mk16 parachute on top of the pod.
5. *Decoupler* — separates stages. Place between the pod and the tank if you want the pod to return alone, or at the bottom to eject the entire stage.

#info[[
  *The Golden Rule of Rocket Design:* Heavy stuff goes at the top, engines at the bottom. Your center of mass should be above your center of thrust. If the rocket flips during ascent, you have a stability problem — add fins at the bottom.
]]

#section-heading([Staging])

Staging is the sequence in which parts fire. The staging stack is on the right side of the VAB. The bottom-most stage fires first. A basic staging sequence:

- Stage 0 (top): Parachute deploys
- Stage 1: Decoupler fires, pod separates from tank
- Stage 2 (bottom): Engine ignites at launch

Drag parts in the staging list to reorder them. When in flight, press Space to activate the next stage.

#section-heading([The Science Jr. and Goo])

On your first rocket, add a *SC-9001 Science Jr.* (materials bay) and a *Mystery Goo Containment Unit* attached radially to the fuselage. These generate science when activated in different situations (launch pad, low atmosphere, high atmosphere, space). Press the green clipboard icon in flight to review science opportunities.

#section-heading([Reaching Orbit])

#section-heading([The Gravity Turn])

Building a rocket that reaches space is easy. Reaching *orbit* requires speed — about 2,300 m/s sideways. The most efficient ascent profile is the gravity turn:

1. Launch vertically until you reach ~100 m/s or 1,000 m altitude
2. Tilt eastward (toward the 90-degree heading mark on the navball) by about 5–10 degrees
3. Follow the prograde marker (the green circle without an X on the navball) — it will naturally drift toward the horizon
4. By 10,000 m, you should be at roughly 45 degrees pitch
5. By 30,000 m, near-horizontal
6. Switch to Map view (M) and watch your apoapsis. Cut the engine when apoapsis reaches ~80,000 m (above 70 km = space)
7. Coast to apoapsis, then burn prograde to circularize

#tip[[
  If your rocket flips during the gravity turn: add fins at the bottom, make the rocket taller rather than wider, and keep your speed below ~300 m/s while still in the thick lower atmosphere (below 10 km).
]]

#section-heading([Delta-V Budget])

Delta-v (Δv) is your rocket's total ability to change velocity, measured in meters per second (m/s). Approximate requirements:

- Reach low Kerbin orbit (LKO, 80 km): ~3,400 m/s
- Mun transfer + capture: ~860 + 310 m/s
- Mun landing: ~580 m/s
- Mun return to Kerbin: ~860 m/s

#danger[[
  These are vacuum delta-v numbers! Atmospheric delta-v is different. Kerbal Engineer Redux (installed in this wave) shows both — look at the vacuum number for in-space maneuvers.
]]

#section-heading([Going to the Mun])

#section-heading([Transfer Burn])

From low Kerbin orbit (80–100 km circular, equatorial):

1. Switch to Map view. Rotate the camera so you can see the Mun's orbit.
2. The Mun rises over Kerbin's horizon — when it's about 45 degrees ahead of your craft in its orbit, you're at the transfer window.
3. Create a maneuver node on your orbit. Drag prograde until the projected path intersects the Mun's sphere of influence (SoI). It should take about 860 m/s.
4. Execute the burn at the node. Keep the craft pointed at the maneuver marker on the navball.

#info[[
  If you miss the Mun's SoI entirely, your burn timing was wrong. Adjust the maneuver node position along your orbit (drag the center circle of the node) — this changes *when* you burn, which changes *where* the Mun is when you arrive.
]]

#section-heading([Mun Capture and Landing])

When you enter the Mun's SoI, you'll be on a flyby trajectory. At Mun periapsis (Pe marker), burn retrograde to slow down and enter orbit. Target a 15–20 km circular orbit.

To land:

1. From low Mun orbit, burn retrograde until your trajectory line hits the surface. Target a flat area (the Mun's large craters — maria — are dark, flat regions).
2. As you descend, keep burning retrograde. Watch your surface velocity indicator (click the navball speed readout until it says "Surface").
3. When below ~2,000 m altitude, your speed should drop below 100 m/s.
4. In the final ~500 m, keep velocity below 20 m/s. Land at less than ~6 m/s to avoid breaking anything.
5. SAS set to "Retrograde Hold" (if unlocked) keeps you oriented for the burn — use Stability Assist otherwise and steer manually.

#tip[[
  Kill horizontal velocity first (retrograde marker centered on the horizon line), then control vertical descent. If you tip over on landing, your horizontal velocity was too high.
]]

#section-heading([Returning from the Mun])

1. Launch eastward from the Mun's surface (the Mun rotates slowly — east is still the efficient direction)
2. Establish a low circular orbit (~15 km)
3. Burn prograde to escape the Mun — your trajectory will bend back toward Kerbin
4. Target a Kerbin periapsis of ~35 km for aerocapture
5. Detach the command pod, deploy parachute, land in the ocean

#section-heading([Basic Docking])

#section-heading([Why Dock?])

Docking lets you join two spacecraft in orbit. It's essential for Apollo-style Mun missions (leave the lander in Mun orbit, dock to return), space stations, and refueling operations.

#section-heading([Rendezvous])

1. Launch the second craft into a lower orbit than the target (faster orbit = catches up) or higher (slower = target catches you).
2. Target the other craft in Map view (click it, select "Set as Target").
3. Create a maneuver node. Adjust until the closest approach markers (orange and magenta arrows) are within 2 km of each other.
4. Execute the burn.
5. When within ~2 km, your navball switches to "Target" mode. The prograde marker now shows your velocity *relative to the target*.
6. Burn retrograde (in target mode) to zero out relative velocity.
7. Point at the target (pink circle marker) and burn gently (~10–20 m/s) toward it.
8. Repeat: close distance, zero velocity, aim again. Don't rush — docking is a slow dance.

#section-heading([Docking Proper])

1. When within ~50 m, right-click your docking port and select "Control from Here."
2. Right-click the target's docking port and select "Set as Target."
3. Switch to fine-control mode (Caps Lock — pitch/yaw/roll indicators turn blue).
4. Use RCS (R key) and translation controls (I/J/K/L for up/down/left/right, H/N for forward/back).
5. Align the prograde marker with the target marker on the navball.
6. Drift in at less than 0.5 m/s. The magnetic docking ports will snap together.

#info[[
  RCS thrusters must be placed symmetrically around your craft's center of mass to avoid unwanted rotation during translation. In the VAB, toggle the center of mass indicator to check.
]]

#section-heading([Where to Go from Here])

At this point you can reach orbit, land on the Mun, dock two craft together, and return home safely. You've mastered the core skills. When you're comfortable with these maneuvers — able to execute them without reverting to the VAB every five minutes — you're ready for Wave 1.
```

- [ ] **Step 3: Write wave-1-going-further.typ**

```typst
// guide/wave-1-going-further.typ

#section-heading([About Wave 1])

Wave 1 expands KSP with graphics overhauls, parts packs, and light mechanical additions that add content without fundamentally changing difficulty. You should be comfortable with the skills taught in Wave 0 (orbit, Mun landing, docking) before installing these mods.

#wave-criteria-table()

#warning[[
  Wave 1 mods are cumulative with Wave 0. Do not skip Wave 0 — Wave 1 includes its mods. Install Wave 0 first, play until you've mastered the basics, then add Wave 1.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// TODO: Add mod entries here

// ═══════════════════════════════════════════════════════════════════
// TUTORIAL: GOING FURTHER
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 1 Guide — Going Further])

#section-heading([Interplanetary Transfer Windows])

#section-heading([Phase Angles])

Every planet has a specific launch window when the transfer is most efficient. The *phase angle* is the angle between your origin planet, the Sun, and the destination planet. Key windows:

- *Duna* (Mars analog): Phase angle ~44°, delta-v from LKO ~1,100 m/s
- *Eve* (Venus analog): Phase angle ~54°, delta-v from LKO ~1,100 m/s
- *Jool* (Jupiter analog): Phase angle ~96°, delta-v from LKO ~2,000 m/s
- *Moho* (Mercury analog): Phase angle ~-252°, delta-v from LKO ~2,200 m/s

#info[[
  Duna is the best first interplanetary target. It has an atmosphere (thin, but enough to aerobrake and use parachutes), low gravity, and a moderate transfer cost. Eve is easier to reach but brutally hard to leave — its thick atmosphere and high gravity make ascent nearly as expensive as Kerbin.
]]

#section-heading([Executing a Duna Transfer])

1. Wait for the Duna transfer window (phase angle ~44°). You can eyeball it: Duna should be about 1/8 of an orbit ahead of Kerbin.
2. From LKO, set Duna as your target.
3. Create a maneuver node. Pull prograde until the projected orbit touches Duna's. Adjust the node position until you get an encounter.
4. Burn. Mid-course correction: about halfway there, create another tiny node to fine-tune your Duna periapsis.
5. At Duna, aerobrake — set periapsis to ~15–20 km to use the atmosphere for capture. Bring heat shields.

#tip[[
  Ike (Duna's moon) is tidally locked and small — an even easier landing target than the Mun. If Duna itself intimidates you, go to Ike first.
]]

#section-heading([ISRU — Mining and Refueling])

#section-heading([The ISRU Chain])

In-Situ Resource Utilization converts raw ore into usable fuel. The components:

1. *Surface Scanner* — maps ore concentration from polar orbit
2. *Drill (e.g. Drill-O-Matic)* — extracts ore from the surface
3. *Ore Tank* — stores raw ore
4. *ISRU Converter (e.g. Convert-O-Tron)* — converts ore + electricity into liquid fuel, oxidizer, or monopropellant
5. *Radiators* — the converter generates immense heat and will shut down without sufficient cooling

#danger[[
  ISRU equipment is godlessly heavy. A full mining rig can weigh 20+ tons. Test the full chain on Minmus first — its low gravity makes landing and returning with heavy payloads far easier than the Mun. Minmus also has high ore concentrations in its flats.
]]

#section-heading([Space Stations])

#section-heading([Why Build a Station?])

- *Refueling depot* — dock tankers, mine on Minmus, ferry fuel to orbit
- *Science lab* — the Mobile Processing Lab multiplies science value over time
- *Crew rotation hub* — swap kerbals between missions without landing
- *Relay hub* — high-orbit station with powerful relay antennas extends comms coverage

#section-heading([Station Assembly])

1. Launch the core (lab, docking hub, power, probe core)
2. Dock additional modules (fuel tanks, habitation, antennas, extra docking ports)
3. Keep part count reasonable — too many parts and the physics engine crawls. Aim for under 200 parts per station.

#tip[[
  Always include a probe core on every station module. If you undock the wrong port and lose control of a drifting section, a probe core lets you recover it. Also: reaction wheels. Stations in KSP get wobbly without them.
]]

#section-heading([SSTO Spaceplanes])

#section-heading([Design Principles])

Single Stage To Orbit spaceplanes use jet engines to climb through the atmosphere, then switch to closed-cycle rocket mode for the final push to orbit. Key design considerations:

- *RAPIER engines* are the gold standard — they auto-switch between air-breathing and rocket mode
- *Center of mass vs. center of lift* — CoL must be behind CoM at all fuel levels. Check with tanks both full and empty in the SPH.
- *Wing area* — more is better. You need lift at high altitude where the air is thin.
- *Intake spam is dead* — KSP 1.0+ aerodynamics fixed this. One shock cone intake per ~4 RAPIERs is plenty.

#section-heading([Ascent Profile])

1. Accelerate along the runway to ~140 m/s, pull up at 10–15 degrees
2. Climb at 15–20 degrees until ~10,000 m
3. Level off to 5–10 degrees. Accelerate to ~1,400 m/s at ~20,000 m. This is where RAPIERs produce peak thrust.
4. When thrust drops (around 23–25 km), RAPIERs auto-switch to closed-cycle. Pitch up to 20–30 degrees.
5. Burn to apoapsis > 70 km, circularize as normal.

#section-heading([Relay Networks])

#section-heading([The CommNet System])

KSP's CommNet requires line-of-sight to Kerbin for probe control. Signal strength depends on antenna power, distance, and the tracking station level. A relay network places satellites between Kerbin and your destination to bounce the signal.

#section-heading([Relay Satellite Design])

- Every relay needs a relay-capable antenna (RA-2, RA-15, RA-100)
- Pair with a direct antenna for the satellite's own connection back to Kerbin
- Include solar panels, batteries, a probe core, and reaction wheels
- Always add a small engine + fuel for final orbit adjustments

#section-heading([Kerbin Relay Constellation])

For continuous coverage around Kerbin, launch 3–4 relay satellites equally spaced in a high circular orbit (~2,800 km for 4-sat coverage). Launch them all on one rocket, detach at apoapsis, and circularize each individually.

#section-heading([Asteroid Capture])

#section-heading([Finding Asteroids])

Asteroids spawn near Kerbin and are tracked in the Tracking Station. Unknown objects must be discovered first — upgrade the Tracking Station to level 3, then use the "Track Unknown Objects" button in the observatory.

#section-heading([The Claw])

The Advanced Grabbing Unit (the "Klaw") attaches to asteroids as if docking. Once grabbed, the asteroid becomes part of your craft and you can push/pull it. Tips:

- Approach slowly (asteroids are massive — 10 m/s is a collision, not a dock)
- Time warp with care — the Klaw can phase through the asteroid at high warp
- Bring extra reaction wheels — an E-class asteroid can weigh thousands of tons
- Target a Kerbin periapsis of ~35 km for aerocapture with a heat shield
```

- [ ] **Step 4: Write wave-2-the-long-ascent.typ**

```typst
// guide/wave-2-the-long-ascent.typ

#section-heading([About Wave 2])

Wave 2 is the endgame. It adds life support, colonization, interstellar travel, and realism overhauls. These mods change the game fundamentally — mistakes now have permanent consequences, and the systems interact in complex ways. You should have hundreds of hours in KSP and be fluent in interplanetary missions before attempting this wave.

#wave-criteria-table()

#danger[[
  Wave 2 mods are optional. Install only the ones that match your preferred challenge level. Removing a Wave 2 mod mid-save will likely break that save.
]]

// ═══════════════════════════════════════════════════════════════════
// MOD ENTRIES
// ═══════════════════════════════════════════════════════════════════

#section-heading([Mod List])

// TODO: Add mod entries here

// ═══════════════════════════════════════════════════════════════════
// STRATEGY GUIDE
// ═══════════════════════════════════════════════════════════════════

#pagebreak()
#chapter-heading([Wave 2 Guide — The Long Ascent])

#section-heading([Strategy, Not Tutorials])

Wave 2 assumes you can build, fly, dock, and interplanetary-transfer without assistance. This guide focuses on *how systems interact* and *how to plan* rather than step-by-step instructions.

#section-heading([Life Support Management])

#section-heading([Understanding the Stakes])

Life support mods (USI-LS, TAC-LS, Kerbalism) introduce consumable resources: supplies/food, water, oxygen, and waste management. Kerbals consume these constantly. If they run out, kerbals die — permanently or after a grace period, depending on the mod and configuration.

#section-heading([Supply Chain Design])

1. *Short missions* (Mun, Minmus): Bring all supplies from Kerbin. A Mk1 pod with two kerbals needs ~30 supplies for a Mun round trip. Trivial.
2. *Medium missions* (Duna, Eve orbit): Bring a greenhouse or recycler module. Water purifiers and CO2 scrubbers turn waste back into usable resources, reducing net consumption by 60–90%.
3. *Long missions* (Jool, Eeloo): Build self-sustaining habitats. Greenhouses running on ore + electricity produce supplies indefinitely, but require a mining outpost or regular resupply.
4. *Colonies*: Close the loop entirely. Combine ISRU, greenhouses, and waste processing. The goal is net-zero consumption.

#tip[[
  Always send supplies *ahead* of crewed missions. Launch an uncrewed supply depot to the destination's orbit before sending kerbals. A dead supply mission is inconvenient; dead kerbals are a mission failure.
]]

#section-heading([Habitation and Homesickness])

Some life support mods add a "habitation" timer — kerbals can't stay in cramped pods indefinitely without going stir-crazy (refusing to work, then going rogue). Counter with:

- Larger habitation modules (inflatable habitats, centrifuges)
- Shared living space (more volume per kerbal)
- Colonization modules (permanent structures with high habitation multipliers)

#section-heading([Colonization Workflows])

#section-heading([The Bootstrap Problem])

Building a colony requires heavy infrastructure (habitats, factories, power), but launching heavy infrastructure from Kerbin is expensive. This is the core colonization challenge: *how do you make a colony that builds itself?*

The solution is staged:

1. *Survey phase* — Scan for ore, water, rare resources. Send probes with scanners.
2. *Pioneer outpost* — Minimal crew, basic drill + ISRU, a power source (solar or nuclear). This outpost produces fuel for subsequent flights but cannot build new modules.
3. *Manufacturing hub* — Extraplanetary Launchpads or MKS workshops. These consume raw materials and MetalParts/SpecializedParts to build new vessels and modules *on site*.
4. *Self-sustaining colony* — The colony produces all of: supplies (food/water/O2), fuel, construction materials, and new vessels. At this point, Kerbin is a launch pad for initial crew, not a supply line.

#warning[[
  MKS and USI mods are designed to work together (they share USI-LS as a common dependency). MKS provides the colonization parts and resource chains; USI-LS provides the life support mechanics. Installing one without the other is possible but you will miss the full integration.
]]

#section-heading([Resource Chains — Colonization])

A typical MKS-style colonization resource chain:

- *Raw materials:* Dirt, Water, Substrate, Minerals, MetallicOre, Uraninite (mined by drills)
- *Refined materials:* Chemicals, Polymers, Metals, RefinedExotics (produced by refineries)
- *Construction:* MaterialKits, SpecializedParts, Machinery (produced by workshops from refined materials)
- *Life support:* Supplies, Mulch, Fertilizer (Mulch + Fertilizer + greenhouse = more Supplies)
- *Maintenance:* Machinery slowly wears out. Workshops consume MaterialKits to produce replacement Machinery.

#info[[
  This is the "Everything is a resource chain" phase of KSP. If you enjoy Factorio-style logistics puzzles, this is your moment. If it sounds exhausting, skip the colonization layer and stick with life support + interstellar travel only.
]]

#section-heading([Interstellar Travel])

#section-heading([Engine Classes])

Interstellar mods (KSP Interstellar Extended, Far Future Technologies) introduce propulsion technologies beyond chemical rockets:

- *Nuclear thermal (NERVA):* Heats propellant with a fission reactor. Isp 800–1,000 s. Good for interplanetary heavy lift.
- *Fusion drives:* Isp 5,000–30,000 s. Requires massive power plants (often the engine IS the power plant). Interstellar-capable.
- *Antimatter:* Isp 100,000+ s. Exotic, dangerous, requires antimatter production infrastructure.
- *Warp/Alcubierre:* Science fiction. Warp drive contracts space ahead and expands it behind. Instant or near-instant travel, requires exotic matter.

#danger[[
  High Isp, low thrust engines mean *burns measured in days or weeks*. A fusion drive with 0.1 m/s² acceleration needs hours to change velocity by 1 km/s. Plan your burns around periapsis kicks — multiple short burns at periapsis to raise apoapsis gradually. Do not attempt to circularize an interstellar trajectory with a single burn.
]]

#section-heading([Interstellar Mission Planning])

1. *Power infrastructure:* Interstellar engines consume gigawatts. You need nuclear reactors, beamed power networks, or on-board fusion. Solar panels are useless beyond Duna's orbit.
2. *Radiators:* Thermal management becomes the limiting factor. Every reactor and engine produces waste heat. Without enough radiator area, your ship melts. High-temperature radiators (graphene) are more mass-efficient.
3. *Braking:* Arriving in another star system requires deceleration. Bring enough delta-v for capture — aerocapture at the target star is rarely practical at interstellar velocities.
4. *Communications:* At interstellar distances, CommNet latency becomes absurd. Plan for autonomous probe operation.

#section-heading([Realism Overhaul — What Changes])

#section-heading([FAR (Ferram Aerospace Research)])

Stock KSP's aerodynamics are a simplified "soup" model. FAR replaces it with voxel-based aerodynamic simulation:
- Nose cones and fairings now matter enormously (stock KSP ignores them for drag)
- Aircraft stalls are real — exceed critical angle of attack and you lose lift
- Supersonic drag is realistic — Mach 1 is a barrier, not a suggestion
- Re-entry heating becomes more dangerous without proper heat shields

#section-heading([RealFuels / RealPlume])

Fuel is no longer a generic "Liquid Fuel + Oxidizer" mix. RealFuels adds realistic propellants:
- Kerosene/LOX (RP-1): High thrust, moderate Isp, used in first stages
- Hydrogen/LOX (LH2): High Isp, low density, used in upper stages
- Hypergolics (UDMH/NTO): Storable, lower performance, used for landers and RCS
- Solid rockets: High thrust, cannot throttle, single burn only

Each fuel type has different tank volumes, boil-off rates (cryogenics evaporate), and ignition requirements.

#section-heading([System Interactions — The Full Picture])

With all Wave 2 mods active, the systems interact:

1. *Life support* determines mission duration → duration determines *engine choice* (short trip or long)?
2. *RealFuels* determines engine performance → engine choice determines *delta-v budget*
3. *FAR* determines ascent efficiency → ascent efficiency determines *payload to orbit*
4. *Colonization* provides *in-situ fuel production* → reduces required launch mass from Kerbin
5. *Interstellar engines* consume *reactor fuel* (fission/fusion/antimatter) → colonization must produce reactor fuel too

#tip[[
  When all systems are active, Minmus becomes your most important asset. Its low gravity means cheap ISRU, its high ore concentration means efficient resource extraction, and its location at Kerbin's edge means you're already partway out of the gravity well. Build your first major colony on Minmus, not the Mun.
]]
```

- [ ] **Step 5: Write appendix.typ**

```typst
// guide/appendix.typ

#section-heading([Maneuver Reference Card])

#section-heading([Delta-V Map — Stock Kerbol System])

Approximate vacuum delta-v from low Kerbin orbit (LKO, 80 km):

#table(
  columns: (auto, auto),
  inset: 6pt,
  align: (left, right),
  stroke: 0.5pt + mun-gray,
  table.header([*Destination*], [*Delta-V (m/s)*]),
  [Low Kerbin Orbit (starting point)], [0],
  [Mun transfer], [860],
  [Mun capture], [310],
  [Mun landing (from low orbit)], [580],
  [Mun return to Kerbin], [860],
  [Minmus transfer], [930],
  [Minmus capture], [160],
  [Minmus landing], [180],
  [Minmus return to Kerbin], [930],
  [Duna transfer], [1,100],
  [Duna aerocapture], [0–300],
  [Duna landing (parachutes)], [100–300],
  [Duna ascent], [1,400],
  [Eve transfer], [1,100],
  [Eve capture], [300],
  [Eve landing (parachutes)], [50],
  [Eve ascent], [8,000+],
  [Jool transfer], [2,000],
  [Jool aerocapture (Laythe)], [0–500],
  [Moho transfer], [2,200],
  [Moho capture], [2,400],
  [Eeloo transfer], [2,100],
  [Eeloo capture], [1,400],
)

#info[[
  These are vacuum numbers. Atmospheric launches require more — use atmospheric delta-v in the VAB. Values assume optimal transfer windows and Hohmann transfers. Add 10–20% margin for imperfect execution.
]]

#section-heading([Keybinding Quick Reference])

#table(
  columns: (auto, auto),
  inset: 4pt,
  align: (left, left),
  stroke: 0.5pt + mun-gray,
  table.header([*Key*], [*Action*]),
  [Space], [Activate next stage],
  [Z / X], [Full throttle / Cut throttle],
  [Shift / Ctrl], [Throttle up / down],
  [T], [Toggle SAS],
  [F], [Hold SAS (temporary)],
  [R], [Toggle RCS],
  [G], [Toggle landing gear],
  [U], [Toggle lights],
  [M], [Toggle Map view],
  [. / ,], [Time warp up / down],
  [Tab], [Cycle focus in Map view],
  [Backspace], [Reset focus to current vessel],
  [Caps Lock], [Fine-control mode],
  [Alt+L], [Lock current stage],
  [F5 / F9], [Quicksave / Quickload (hold F9)],
  [Esc], [Pause menu],
)

#section-heading([Acronym Glossary])

- *Ap / Pe* — Apoapsis / Periapsis (highest and lowest points of orbit)
- *CoL / CoM / CoT* — Center of Lift / Mass / Thrust
- *Dv / Δv* — Delta-V (change in velocity, your "fuel budget" in m/s)
- *ISRU* — In-Situ Resource Utilization (mining and refining resources where you land)
- *KSC* — Kerbal Space Center
- *LKO* — Low Kerbin Orbit (~80 km)
- *RCS* — Reaction Control System (translation thrusters for docking)
- *SAS* — Stability Augmentation System (autopilot assist)
- *SSTO* — Single Stage To Orbit
- *TWR* — Thrust-to-Weight Ratio (must be >1 to lift off)
- *VAB / SPH* — Vehicle Assembly Building / Spaceplane Hangar

#section-heading([Recommended Resources])

- *KSP Wiki* — https://wiki.kerbalspaceprogram.com
- *Delta-V Map (community)* — https://wiki.kerbalspaceprogram.com/wiki/Delta-v_map
- *KSP Forum* — https://forum.kerbalspaceprogram.com
- *r/KerbalSpaceProgram* — https://reddit.com/r/KerbalSpaceProgram
- *CKAN Metadata* — https://github.com/KSP-CKAN/CKAN-meta
- *Scott Manley (YouTube)* — Tutorials and career playthroughs
- *Matt Lowne (YouTube)* — Build guides and mission showcases
```

- [ ] **Step 6: Commit**

```bash
git add guide/installation.typ guide/wave-0-first-steps.typ guide/wave-1-going-further.typ guide/wave-2-the-long-ascent.typ guide/appendix.typ
git commit -m "feat: add full guide content — installation, 3 wave tutorials, appendix"
```

---

### Task 5: CKAN Metapackages (4 files)

**Files:**

- Create: `the-long-ascent.ckan`
- Create: `the-long-ascent-wave-0.ckan`
- Create: `the-long-ascent-wave-1.ckan`
- Create: `the-long-ascent-wave-2.ckan`

- [ ] **Step 1: Write the-long-ascent.ckan (combined — all waves)**

```json
{
    "spec_version": "v1.34",
    "identifier": "TheLongAscent",
    "name": "The Long Ascent",
    "abstract": "A curated 3-wave modlist and comprehensive game guide for Kerbal Space Program 1.12.5",
    "author": "Nimrod Perez",
    "license": "CC-BY-4.0",
    "version": "1.0.0",
    "depends": [
        { "name": "ModuleManager" }
    ],
    "recommends": [
    ],
    "suggests": [
    ],
    "supports": [
        { "name": "BreakingGround-DLC" },
        { "name": "MakingHistory-DLC" }
    ]
}
```

- [ ] **Step 2: Write the-long-ascent-wave-0.ckan**

```json
{
    "spec_version": "v1.34",
    "identifier": "TheLongAscentWave0",
    "name": "The Long Ascent — Wave 0: First Steps",
    "abstract": "Wave 0 of The Long Ascent: UI and QoL mods for KSP 1.12.5. No gameplay changes.",
    "author": "Nimrod Perez",
    "license": "CC-BY-4.0",
    "version": "1.0.0",
    "depends": [
        { "name": "ModuleManager" }
    ],
    "recommends": [
    ],
    "supports": [
        { "name": "BreakingGround-DLC" },
        { "name": "MakingHistory-DLC" }
    ]
}
```

- [ ] **Step 3: Write the-long-ascent-wave-1.ckan**

```json
{
    "spec_version": "v1.34",
    "identifier": "TheLongAscentWave1",
    "name": "The Long Ascent — Wave 1: Going Further",
    "abstract": "Wave 1 of The Long Ascent: Graphics, parts packs, and light mechanical additions. Requires Wave 0.",
    "author": "Nimrod Perez",
    "license": "CC-BY-4.0",
    "version": "1.0.0",
    "depends": [
        { "name": "ModuleManager" }
    ],
    "recommends": [
    ],
    "supports": [
        { "name": "BreakingGround-DLC" },
        { "name": "MakingHistory-DLC" }
    ]
}
```

- [ ] **Step 4: Write the-long-ascent-wave-2.ckan**

```json
{
    "spec_version": "v1.34",
    "identifier": "TheLongAscentWave2",
    "name": "The Long Ascent — Wave 2: The Long Ascent",
    "abstract": "Wave 2 of The Long Ascent: Life support, colonization, interstellar travel, and realism overhauls. Requires Waves 0–1.",
    "author": "Nimrod Perez",
    "license": "CC-BY-4.0",
    "version": "1.0.0",
    "depends": [
        { "name": "ModuleManager" }
    ],
    "suggests": [
    ],
    "supports": [
        { "name": "BreakingGround-DLC" },
        { "name": "MakingHistory-DLC" }
    ]
}
```

- [ ] **Step 5: Commit**

```bash
git add the-long-ascent.ckan the-long-ascent-wave-0.ckan the-long-ascent-wave-1.ckan the-long-ascent-wave-2.ckan
git commit -m "feat: add CKAN metapackages — one per wave plus combined"
```

---

### Task 6: Font Download

**Files:**

- Create: `scripts/download_fonts.py`
- Target: `assets/fonts/` (populated with Orbitron, Inter, JetBrains Mono .ttf files)

- [ ] **Step 1: Write download_fonts.py**

```python
"""Download bundled fonts for reproducible Typst builds.

Orbitron, Inter, and JetBrains Mono are all SIL OFL licensed.
Downloads individual .ttf files from the official Google Fonts GitHub repository
(raw.githubusercontent.com) — stable, version-independent URLs.
Only the needed weights are fetched.
"""

import os
import urllib.request

FONTS_DIR = os.path.join(os.path.dirname(__file__), "..", "assets", "fonts")

# URLs from github.com/google/fonts — main branch, ofl/ directory
# These are the static (non-variable) TTF files
FONTS = {
    "Orbitron": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/orbitron/static",
        "files": [
            "Orbitron-Regular.ttf",
            "Orbitron-Bold.ttf",
            "Orbitron-SemiBold.ttf",
            "Orbitron-ExtraBold.ttf",
            "Orbitron-Black.ttf",
        ],
    },
    "Inter": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/inter/static",
        "files": [
            "Inter-Regular.ttf",
            "Inter-Bold.ttf",
            "Inter-Italic.ttf",
        ],
    },
    "JetBrains Mono": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/jetbrainsmono/static",
        "files": [
            "JetBrainsMono-Regular.ttf",
            "JetBrainsMono-Bold.ttf",
        ],
    },
}


def download_font(name, base_url, files):
    for filename in files:
        url = f"{base_url}/{filename}"
        dest = os.path.join(FONTS_DIR, filename)
        print(f"  {filename}")
        urllib.request.urlretrieve(url, dest)


def main():
    os.makedirs(FONTS_DIR, exist_ok=True)

    # Remove existing .ttf files for clean re-download
    for f in os.listdir(FONTS_DIR):
        if f.endswith(".ttf"):
            os.remove(os.path.join(FONTS_DIR, f))

    for name, info in FONTS.items():
        print(f"Downloading {name}...")
        try:
            download_font(name, info["base"], info["files"])
        except Exception as e:
            print(f"  ERROR: {e}")
            print(f"  You may need to download {name} manually from https://fonts.google.com")
            return 1

    total = len(os.listdir(FONTS_DIR))
    print(f"\nDone. {total} font files in {FONTS_DIR}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
```

- [ ] **Step 2: Run font download script**

```bash
python scripts/download_fonts.py
```

Expected output: Lists each downloaded .ttf, ends with "Done. 10 font files in assets\fonts"

- [ ] **Step 3: Verify font files exist**

```bash
Get-ChildItem assets/fonts/*.ttf | Select-Object Name
```

Expected: 10 `.ttf` files (Orbitron x5, Inter x3, JetBrains Mono x2)

- [ ] **Step 4: Commit**

```bash
git add scripts/download_fonts.py assets/fonts/
git commit -m "feat: add font download script and bundled fonts"
```

---

### Task 7: Build Scripts

**Files:**

- Create: `scripts/build.bat`
- Create: `scripts/build.sh`

- [ ] **Step 1: Write build.bat**

```batch
@echo off
REM ============================================================
REM  The Long Ascent — PDF Build Script (Windows)
REM  Requires: Typst 0.13+ on PATH, Python 3 for font download
REM ============================================================

echo.
echo === The Long Ascent ===
echo Building PDF from Typst sources...
echo.

REM Check Typst is installed
where typst >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [FAIL] Typst is not installed or not on PATH.
    echo Install Typst 0.13+ from: https://github.com/typst/typst/releases
    exit /b 1
)

REM Ensure output directory exists
if not exist "output" mkdir output

REM Check if fonts are present
if not exist "assets\fonts\Orbitron-Regular.ttf" (
    echo [!] Fonts not found. Downloading...
    python scripts\download_fonts.py || python3 scripts\download_fonts.py
    if %ERRORLEVEL% NEQ 0 (
        echo [FAIL] Font download failed. Run 'python scripts\download_fonts.py' manually.
        exit /b 1
    )
    echo.
)

REM Compile
echo [1/1] Compiling PDF with Typst...
typst compile --font-path assets/fonts template/main.typ output/the-long-ascent.pdf

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [FAIL] Typst compilation failed. See errors above.
    exit /b 1
)

echo.
echo === Build complete ===
echo PDF: output\the-long-ascent.pdf
echo.
```

- [ ] **Step 2: Write build.sh**

```bash
#!/usr/bin/env bash
# ============================================================
#  The Long Ascent — PDF Build Script (Linux / macOS)
#  Requires: Typst 0.13+ on PATH, Python 3 for font download
# ============================================================

set -euo pipefail

echo ""
echo "=== The Long Ascent ==="
echo "Building PDF from Typst sources..."
echo ""

# Check Typst is installed
if ! command -v typst &> /dev/null; then
    echo "[FAIL] Typst is not installed or not on PATH."
    echo "Install Typst 0.13+ from: https://github.com/typst/typst/releases"
    exit 1
fi

# Ensure output directory exists
mkdir -p output

# Determine Python command (python3 vs python)
PYTHON=""
if command -v python3 &> /dev/null; then
    PYTHON="python3"
elif command -v python &> /dev/null; then
    PYTHON="python"
else
    echo "[FAIL] Python not found. Install Python 3 to download fonts."
    exit 1
fi

# Check if fonts are present
if [ ! -f "assets/fonts/Orbitron-Regular.ttf" ]; then
    echo "[!] Fonts not found. Downloading..."
    $PYTHON scripts/download_fonts.py
    echo ""
fi

# Compile
echo "[1/1] Compiling PDF with Typst..."
typst compile --font-path assets/fonts template/main.typ output/the-long-ascent.pdf

echo ""
echo "=== Build complete ==="
echo "PDF: output/the-long-ascent.pdf"
echo ""
```

- [ ] **Step 3: Make build.sh executable (in git index)**

```bash
git update-index --chmod=+x scripts/build.sh
```

- [ ] **Step 4: Commit**

```bash
git add scripts/build.bat scripts/build.sh
git commit -m "feat: add cross-platform build scripts with Typst/--font-path support"
```

---

### Task 8: Build and Verify PDF

No new files — verify the pipeline works end-to-end.

- [ ] **Step 1: Run build**

```bash
scripts\build.bat
```

Expected: Typst compilation succeeds, `output/the-long-ascent.pdf` is created.

- [ ] **Step 2: Verify PDF exists and has reasonable size**

```bash
Get-Item output\the-long-ascent.pdf | Select-Object Name, Length
```

Expected: File exists, size > 50 KB (meaningful content, not empty).

- [ ] **Step 3: Verify .gitignore excludes the PDF from the tracked set on next commit**

```bash
git status output/
```

Expected: Output directory not shown as untracked (covered by `.gitignore`).

---

## Completion Checklist

After all tasks are done:

- [ ] Directory structure matches the spec
- [ ] `.gitignore` excludes PDFs, Python cache, OS files, IDE files
- [ ] `AGENTS.md` and `README.md` provide clear project documentation
- [ ] All 5 guide `.typ` files have complete tutorial/strategy content and mod entry format
- [ ] `template/lib.typ` has all styling helpers (colors, fonts, mod entries, wave pages, callouts)
- [ ] `template/main.typ` uses `--font-path` compatible font resolution and safe cover page rendering
- [ ] 4 CKAN `.ckan` files — one per wave plus combined — with valid JSON structure
- [ ] `scripts/build.bat` and `scripts/build.sh` check for Typst, create output dir, use `--font-path`, resolve `python`/`python3`
- [ ] Bundled fonts are present in `assets/fonts/` from GitHub raw URLs
- [ ] `output/the-long-ascent.pdf` exists and contains the full guide
- [ ] `mod-ideas.md` skeleton exists (not in PDF)
- [ ] `scripts/download_fonts.py` uses stable GitHub raw URLs
