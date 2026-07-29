# ETS2 Modlist Guide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a structured repo of markdown source files and a Typst pipeline that produces a professional PDF guide for an ETS2 modlist (game version 1.60).

**Architecture:** Monolithic Typst file (`build.typ`) imports markdown sources from `sources/` directory, screenshots from `screenshots/`, and assets from `assets/`. Each mod category is a separate markdown file in `sources/` with structured metadata blocks. A PowerShell script (`build.ps1`) compiles the Typst project to PDF.

**Tech Stack:** Markdown (sources), Typst 0.15+ (PDF generation), PowerShell (build script)

---

### Task 1: Install Prerequisites & Create Repo Structure

- [ ] **Step 1: Install Typst**

Run: `winget install Typst.Typst`
Expected: "Successfully installed"

- [ ] **Step 2: Create directory structure**

Run:
```powershell
New-Item -ItemType Directory -Path "sources" -Force
New-Item -ItemType Directory -Path "screenshots\installation" -Force
New-Item -ItemType Directory -Path "screenshots\maps" -Force
New-Item -ItemType Directory -Path "screenshots\graphics-compare" -Force
New-Item -ItemType Directory -Path "screenshots\benchmarks" -Force
New-Item -ItemType Directory -Path "assets" -Force
```

- [ ] **Step 3: Verify .gitignore exists**

Ensure `.gitignore` contains Playwright paths, log files, PDF artifacts.

- [ ] **Step 4: Commit**

```bash
git add .gitignore
git commit -m "chore: initial repo setup with .gitignore"
```

---

### Task 2: Write 00-introduction.md

**File:** Create `sources/00-introduction.md`

- [ ] **Step 1: Write introduction content**

Covers: purpose of the modlist guide, game version (1.60), mod sourcing philosophy (no Steam Workshop, downloaded from trusted sites), goals (better graphics, more trucks, more maps, gameplay depth, role-playing), explicit exclusion of cheating/overpowered mods, 4K baseline.

- [ ] **Step 2: Commit**

```bash
git add sources/00-introduction.md
git commit -m "docs: add introduction section"
```

---

### Task 3: Write 01-getting-started.md

**File:** Create `sources/01-getting-started.md`

- [ ] **Step 1: Write getting started content**

Covers:
- Buying ETS2 and required DLCs (map DLCs needed for ProMods)
- Basic controls and gameplay loop
- Role-playing: defining your goals, who do you want to be (owner-operator vs fleet owner), naming your company, choosing your home garage, role-playing prompts
- Profile creation for modded vs vanilla playthroughs

- [ ] **Step 2: Commit**

```bash
git add sources/01-getting-started.md
git commit -m "docs: add getting started with role-playing section"
```

---

### Task 4: Write 02-mod-manager.md

**File:** Create `sources/02-mod-manager.md`

- [ ] **Step 1: Write mod manager content**

Covers:
- Truck Mod Manager installation (Python dependency, download from GitHub)
- First-time setup: pointing to ETS2 install directory
- Profile detection and management
- Scanning mods (local + Workshop)
- Drag-and-drop load order management
- Cloud presets for backup/sharing
- Screenshot annotations for key UI steps

- [ ] **Step 2: Commit**

```bash
git add sources/02-mod-manager.md
git commit -m "docs: add mod manager setup section"
```

---

### Task 5: Write 03-configuration.md

**File:** Create `sources/03-configuration.md`

- [ ] **Step 1: Write configuration content**

Covers:
- Base `config.cfg` tweaks (increase `r_buffer_page_size`, `mm_max_resource_size`, `mm_max_tmp_buffers_size` for heavy mod loads)
- Enabling developer console (`g_developer`, `g_console`)
- Recommended 4K graphics settings (scaling, shadows, reflections, HDR, anti-aliasing)
- Mod-specific configuration tips (per-mod settings)
- Backing up original config files

- [ ] **Step 2: Commit**

```bash
git add sources/03-configuration.md
git commit -m "docs: add configuration section"
```

---

### Task 6: Research Map Mods & Write 04-maps.md

**File:** Create `sources/04-maps.md`

- [ ] **Step 1: Research ProMods 1.60 compatibility**

Use Playwright to browse promods.net — verify version, required DLCs, download procedure.

- [ ] **Step 2: Research ProMods Middle East Addon**

Verify 1.60 compatibility, download source.

- [ ] **Step 3: Research 2-3 additional curated map mods**

Browse these sources for 1.60-compatible maps:
- truckymods.io (search "map 1.60")
- ets2mods.lt (search maps)
- modhub.us (ETS2 maps)

Consider: RusMap, Project Balkans, RoExtended, Paris Rebuild, or Great Steppe.

- [ ] **Step 4: Write maps.md**

For each map mod, include structured block with name, version, source URL, description, compatibility, performance impact, load order position.

- [ ] **Step 5: Commit**

```bash
git add sources/04-maps.md
git commit -m "docs: add maps section with ProMods + ME + curated maps"
```

---

### Task 7: Research Graphics Mods & Write 05-graphics.md

**File:** Create `sources/05-graphics.md`

- [ ] **Step 1: Research graphics mods for 1.60**

Browse mod sites for high-resolution texture packs, lighting mods, ReShade presets.

Candidates: Project Next-Gen, Realistic Graphics Mod, JBX Graphics, ReShade presets.

- [ ] **Step 2: Write graphics.md**

For each graphics mod, include structured block with version, source, compatibility, estimated VRAM/FPS cost.

- [ ] **Step 3: Commit**

```bash
git add sources/05-graphics.md
git commit -m "docs: add graphics section"
```

---

### Task 8: Research Weather/Environment Mods & Write 06-weather.md

**File:** Create `sources/06-weather.md`

- [ ] **Step 1: Research weather/environment mods for 1.60**

Browse for weather, skybox, seasons, vegetation mods.

Candidates: Realistic Weather, Fael Environment, Frosty Winter, Next-Gen Vegetation.

- [ ] **Step 2: Write weather.md**

Structured mod blocks with compatibility and performance notes.

- [ ] **Step 3: Commit**

```bash
git add sources/06-weather.md
git commit -m "docs: add weather and environment section"
```

---

### Task 9: Research Truck Mods & Write 07-trucks.md

**File:** Create `sources/07-trucks.md`

- [ ] **Step 1: Research truck mods for 1.60**

Search for new truck models (brands not in base game), dashboard addons, interior accessories.

Candidates: Scania NG, MAN TGX, Ford F-MAX, dashboard accessories.

- [ ] **Step 2: Write trucks.md**

Structured mod blocks including dashboard compatibility notes.

- [ ] **Step 3: Commit**

```bash
git add sources/07-trucks.md
git commit -m "docs: add trucks and interiors section"
```

---

### Task 10: Research Audio Mods & Write 08-audio.md

**File:** Create `sources/08-audio.md`

- [ ] **Step 1: Research audio mods for 1.60**

Search for engine sound packs, radio/music addons, ambient sound overhauls, horn packs, UI sounds.

Candidates: Kriechbaum engine sound packs, Zeemod sounds, Sound Fixes Pack, radio station addons.

- [ ] **Step 2: Write audio.md**

Structured mod blocks noting which engine sounds pair with which truck mods.

- [ ] **Step 3: Commit**

```bash
git add sources/08-audio.md
git commit -m "docs: add audio section"
```

---

### Task 11: Research Gameplay & Role-Playing Mods & Write 09-gameplay.md

**File:** Create `sources/09-gameplay.md`

- [ ] **Step 1: Research gameplay mods for 1.60**

Search for:
- Economy mods (realistic fuel costs, tolls, maintenance)
- Traffic mods (density, behavior, AI)
- Role-playing mods (company management depth, route planning, fatigue system)
- QoL improvements (better route advisor, navigation)

Candidates: Realistic Economy, Real Traffic Density, SiSL's Route Advisor, TruckersMP integration notes.

- [ ] **Step 2: Write gameplay.md**

Emphasize role-playing potential — which mods support character immersion.

- [ ] **Step 3: Commit**

```bash
git add sources/09-gameplay.md
git commit -m "docs: add gameplay and role-playing section"
```

---

### Task 12: Research Trailer & Cargo Mods & Write 10-trailers.md

**File:** Create `sources/10-trailers.md`

- [ ] **Step 1: Research trailer/cargo mods for 1.60**

Search for cargo packs, trailer skins, oversized load packs, trailer ownership mods.

Candidates: Jazzycat's cargo packs, Trailer & Company Pack, heavy cargo DLC addons.

- [ ] **Step 2: Write trailers.md**

Structured mod blocks with load order and compatibility notes.

- [ ] **Step 3: Commit**

```bash
git add sources/10-trailers.md
git commit -m "docs: add trailers and cargo section"
```

---

### Task 13: Write 11-load-order.md

**File:** Create `sources/11-load-order.md`

- [ ] **Step 1: Write definitive load order guide**

Document the complete load order from top (highest priority) to bottom (lowest priority):

| Priority | Category | Notes |
|----------|----------|-------|
| 1 (Top) | Map base (ProMods) | Foundation |
| 2 | Map addons (ME, RusMap, etc.) | Below ProMods |
| 3 | Graphics | Textures, lighting |
| 4 | Weather/Environment | Skyboxes, seasons |
| 5 | Audio (sounds, music) | Engine packs, radio |
| 6 | Trucks/Interiors | Models, dashboards |
| 7 | Gameplay & Economy | Rules, data |
| 8 | Trailers & Cargo | Addon cargo |
| 9 (Bottom) | Traffic packs | Final overrides |

Explain why this order matters (overriding behavior, map compatibility, preventing crashes).

- [ ] **Step 2: Commit**

```bash
git add sources/11-load-order.md
git commit -m "docs: add load order guide"
```

---

### Task 14: Write 12-installation.md

**File:** Create `sources/12-installation.md`

- [ ] **Step 1: Write installation guide**

Step-by-step:
1. Install ETS2 + all DLCs
2. Install Typst (if building PDF)
3. Install Truck Mod Manager
4. Clone/download this repo
5. Download each mod from its source URL
6. Place mod .zip/.scs files in Documents/Euro Truck Simulator 2/mod
7. Configure config.cfg tweaks (from section 03)
8. Open Truck Mod Manager, create profile
9. Enable mods in correct load order
10. Launch game, verify

- [ ] **Step 2: Add screenshot placeholders**

`![Truck Mod Manager load order setup](screenshots/installation/mm-load-order.png)`

- [ ] **Step 3: Commit**

```bash
git add sources/12-installation.md
git commit -m "docs: add installation guide"
```

---

### Task 15: Write Performance Methodology & 13-performance.md

**File:** Create `sources/13-performance.md`

- [ ] **Step 1: Write benchmark methodology**

Document:
- Test setup (hardware specs: 4K resolution, GPU, CPU, RAM)
- Controlled route selection (same route, time, weather)
- Tools: MSI Afterburner for FPS logging
- Metrics: avg FPS, 1% lows, frame time variance
- Test conditions: vanilla vs full modlist vs per-category

- [ ] **Step 2: Create performance tables (template)**

Empty tables ready to fill with benchmark data:
- Vanilla baseline
- Full modlist
- Per-category deltas

- [ ] **Step 3: Commit**

```bash
git add sources/13-performance.md
git commit -m "docs: add performance methodology section (benchmark data TBD)"
```

---

### Task 16: Write 14-troubleshooting.md

**File:** Create `sources/14-troubleshooting.md`

- [ ] **Step 1: Write troubleshooting guide**

Common issues:
- Game crashes on launch (config.cfg buffer sizes, mod conflicts)
- Map gaps or missing sectors (incorrect load order)
- CTD when entering certain cities (map mod conflict)
- Missing textures (priority too low in load order)
- Performance stutters (overloaded VRAM, reduce graphics)
- Truck Mod Manager not detecting mods (wrong folder path)
- ProMods compatibility errors (missing map DLCs)

- [ ] **Step 2: Commit**

```bash
git add sources/14-troubleshooting.md
git commit -m "docs: add troubleshooting section"
```

---

### Task 17: Write 15-missing-mods.md

**File:** Create `sources/15-missing-mods.md`

- [ ] **Step 1: Brainstorm missing mods**

Think about gaps discovered during research:
- What mods would enhance role-playing but don't exist?
- What quality-of-life features are missing?
- What gameplay mechanics could be deeper?

Each entry: concept, why it doesn't exist, design sketch, priority.

- [ ] **Step 2: Write missing-mods.md**

Catalog all ideas with structured entries.

- [ ] **Step 3: Commit**

```bash
git add sources/15-missing-mods.md
git commit -m "docs: add missing mods catalog"
```

---

### Task 18: Create Typst Build Pipeline

**Files:**
- Create: `build.typ`
- Create: `build.ps1`

- [ ] **Step 1: Create build.typ**

Typst master file that imports all markdown sources, applies styling, and generates the PDF.

```typst
#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  numbering: "1",
  number-align: center
)

#set text(font: ("DejaVu Sans", "Liberation Sans"), size: 11pt)

#set heading(numbering: "1.1")

#set par(justify: true, leading: 0.65em)

// Title page
#align(center, text(size: 28pt, weight: "bold")[ETS2 Modlist Guide])
#align(center, text(size: 14pt)[Game Version 1.60])
#v(1cm)
#align(center, text(size: 10pt)[Compiled from community mods, curated for stability and performance])
#pagebreak()

// Import table of contents
#outline(title: "Table of Contents", indent: auto)
#pagebreak()

// Import each source section
#include "sources/00-introduction.md"
#include "sources/01-getting-started.md"
#include "sources/02-mod-manager.md"
#include "sources/03-configuration.md"
#include "sources/04-maps.md"
#include "sources/05-graphics.md"
#include "sources/06-weather.md"
#include "sources/07-trucks.md"
#include "sources/08-audio.md"
#include "sources/09-gameplay.md"
#include "sources/10-trailers.md"
#include "sources/11-load-order.md"
#include "sources/12-installation.md"
#include "sources/13-performance.md"
#include "sources/14-troubleshooting.md"
#include "sources/15-missing-mods.md"
```

- [ ] **Step 2: Create build.ps1**

```powershell
param(
    [string]$OutputFile = "ets2-modlist-guide.pdf"
)

$ProjectRoot = Split-Path -Parent $PSScriptRoot

Write-Host "Compiling ETS2 Modlist Guide..." -ForegroundColor Cyan
Write-Host "Output: $OutputFile" -ForegroundColor Cyan

typst compile "$ProjectRoot\build.typ" "$ProjectRoot\$OutputFile"

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated successfully: $OutputFile" -ForegroundColor Green
} else {
    Write-Host "Compilation failed with exit code: $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
```

- [ ] **Step 3: Verify Typst compilation**

Run: `.\build.ps1`
Expected: "PDF generated successfully" (even if content is still incomplete)

- [ ] **Step 4: Commit**

```bash
git add build.typ build.ps1
git commit -m "feat: add Typst build pipeline"
```

---

### Task 19: Add README.md

**File:** Create `README.md`

- [ ] **Step 1: Write README.md**

Repo overview, what this guide covers, how to build the PDF, link to latest release.

- [ ] **Step 2: Commit**

```bash
git add README.md
git commit -m "docs: add README"
```

---

### Task 20: Take Installation Screenshots

**Folder:** `screenshots/installation/`

- [ ] **Step 1: Capture Truck Mod Manager screenshots**

Use Playwright or manual screenshots:
- Truck Mod Manager main window
- Profile selection
- Load order view
- Mod activation

- [ ] **Step 2: Capture config.cfg location screenshot**

- [ ] **Step 3: Commit**

```bash
git add screenshots/installation/
git commit -m "docs: add installation screenshots"
```
