# Football Life 26 — "Apex Life 26" Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Produce a complete, verified, PDF-rendered guide for SP Football Life 2026 covering installation, mod stack (11 layers + Sider config), game tutorial, and theatrical manager roleplay personas.

**Architecture:** Typst pipeline — `template.typ` as master document importing three guide sections from `guide/`. Scaffold follows Kenshi/X-COM 2/Factorio repo conventions. A verification task gates all content authoring — every mod is confirmed real and FL26 v2.2 compatible before it enters the guide. STATUS.md is populated incrementally as decisions are made, not reconstructed at the end.

**Tech Stack:** Typst 0.15+, `build.bat` (cmd), Git (conventional commits).

## Global Constraints

- Typst 0.15 or 0.15.1 required for PDF compilation. `build.bat` MUST check version with `typst --version` and fail with a clear message if below 0.15.
- Font family: Bahnschrift for headings, Georgia for body (matching Kenshi convention). Fall back to system-available equivalents if missing.
- All mods referenced MUST be verified as real and compatible with FL26 v2.2 before any prose is written. Verification means: locate the mod on EvoWeb or SmokePatch, confirm the thread/download is active, note the current version, and record the URL.
- NEVER fabricate mod names, download links, or install paths.
- Guide sections use `#include` into `template.typ`. Each section is self-contained Typst content.
- Conventional commits: `docs(football-life): <message>`.
- The `football-life/` directory already exists (empty). Create all files within it.
- STATUS.md decisions are written incrementally — after each content task completes, append the relevant decisions. Do not defer to the final task.

---

### Persona Template

All four personas follow this identical structure. The implementer fills in the bracketed values for each:

```typst
=== [Persona Title]

#quote(block: true)[
*[Opening hook — 1 sentence, italic, punchy.]*

[Backstory — 2 paragraphs of theatrical prose establishing who they were, what went wrong or right, and why they're here now.]

[Present situation — 1 paragraph. What club, what league, what's at stake.]
]

- *Suggested teams:* [2–4 concrete team names]
- *Formation:* [Mandatory system + alternatives]
- *Transfers:* [Restrictions]
- *Youth:* [Academy requirements]
- *Budget/Wages:* [Financial constraints, if any]
- *Match settings:* [Difficulty, half length, game speed — with rationale]
- *Narrative goal:* [Concrete win condition, with deadline if applicable]
```

---

### Task 1: Mod Verification (GATE — must complete before any content writing)

**Files:**

- Modify: `football-life/STATUS.md` (append verification results)

**Interfaces:**

- Produces: A verified table of every mod with current name, version, source URL, and compatibility status. STATUS.md updated. This task gates Tasks 2–6 — if a mod can't be found or is incompatible, the plan pauses here.

- [ ] **Step 1: Verify SmokePatch official mods**

Navigate to [pessmokepatch.com](https://www.pessmokepatch.com/). Confirm FL26 base is available, latest update version (expected v2.2), English Commentary pack exists. Note exact filenames and download page URLs. Record in STATUS.md under "Verified — SmokePatch."

- [ ] **Step 2: Verify EvoWeb community mods — Part A (Audio + Visual Foundation)**

Navigate to [evoweb.uk](https://evoweb.uk/). Search for and confirm each of these has an active thread/download:

- SoundServer (by nesa24/juce) — confirm current version and thread
- Predator002 Chant Pack — confirm version (expected V8/V8.1), note thread URL
- Referee Whistle Mod — confirm existence, note thread URL
- Atmosphere/Stadium Sound Overhaul — confirm existence, note thread URL
- Essentials Mod Pack (SPFL 26) — confirm current version, note thread URL

Record each in STATUS.md under "Verified — EvoWeb Audio/Visual." If any mod is missing or has been superseded, note the replacement or mark it as UNVERIFIED and flag for resolution.

- [ ] **Step 3: Verify EvoWeb community mods — Part B (Faces, Stadiums, Graphics, Camera, Balls)**

Continue on EvoWeb. Confirm:

- SmokePatch Facepack AIO (may also be on SmokePatch site) — confirm version and size
- Stadium Server module — confirm current version
- AIO Stadium Pack for FL26 — confirm existence, approximate size
- Soccer Revolution — confirm current version, note thread URL
- Jeremiah's Ultra Turfs — confirm current version
- ReShade presets (KnightMD or Machete) — confirm one or both exist and are FL26-compatible
- Nesa24's Camera Modules — confirm current version
- Ball Server (Hawke or community fork) — confirm current maintainer and version

Record each in STATUS.md under "Verified — EvoWeb Graphics." Flag anything missing.

- [ ] **Step 4: Verify gameplay and career mods**

On EvoWeb, confirm:

- Gameplay Loader — confirm current version
- Holland's Gameplay Mod — confirm FL26 compatibility and version
- Allstar Mix (alternative gameplay) — confirm existence as fallback
- Ultimate Master League (UML) v3 — confirm Patreon is active, FL26 v2.2 compatibility stated, approximate price
- Ultra League Patch (ULP) or equivalent — confirm existence for Liga MX/CSL

Record each in STATUS.md under "Verified — Gameplay & Career."

- [ ] **Step 5: Resolve any UNVERIFIED items and commit**

If any mod from Steps 2–4 could not be found, search Reddit r/SPFootballLife for community alternatives. If still unfound, mark it as DROPPED in STATUS.md with rationale and note what gap it leaves. Once all mods are either VERIFIED or DROPPED, commit.

```bash
git add football-life/STATUS.md
git commit -m "docs(football-life): verify all mod sources and compatibility"
```

---

### Task 2: Project Scaffolding

**Files:**

- Create: `football-life/AGENTS.md`
- Create: `football-life/mod-ideas.md`
- Create: `football-life/conflicts-mods.md`
- Create: `football-life/build.bat`
- Create: `football-life/template.typ`
- Create: `football-life/assets/.gitkeep`

**Interfaces:**

- Produces: `template.typ` with cover page, TOC, and commented-out `#include` placeholders. `build.bat` with Typst 0.15+ version check.

- [ ] **Step 1: Create AGENTS.md**

Write following Kenshi conventions. Content:

```
# Apex Life 26 - Agent Instructions

SP Football Life 2026 (v2.2) modlist and game guide.

## Structure
- `guide/` - Typst sources (installation, sider-config, lets-play)
- `output/` - generated PDF (`apex-life-26.pdf`)
- `assets/` - cover art
- `template.typ` - Typst master template (cover, TOC, page setup, fonts)
- `build.bat` - one-click PDF generator
- `STATUS.md` - live audit: decisions, verified mods, compatibility notes
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future/UNVERIFIED candidates (excluded from PDF)

## Key Rules
- NEVER fabricate or suggest mods. All mods must be verified real and FL26 v2.2 compatible.
- Mod sources: SmokePatch official (primary), EvoWeb (community), UML Patreon (paid).
- Decision log maintained in STATUS.md. Update incrementally.
- FL27 expected late 2026; note migration path in mod-ideas.md.

## PDF Generation
Run `build.bat` -> `typst compile template.typ output/apex-life-26.pdf` (Typst 0.15+).
Fonts: Bahnschrift / Georgia.
```

- [ ] **Step 2: Create mod-ideas.md and conflicts-mods.md**

`mod-ideas.md`: `# Mod Ideas` header, "Future candidates, unverified mods, FL27 migration notes." Leave body empty.
`conflicts-mods.md`: `# Known Conflicts` header, "Known incompatibilities between mods." Leave body empty.

- [ ] **Step 3: Create build.bat**

Structure matching Kenshi's `build.bat` with one addition — version check:

```bat
@echo off
echo ============================================
echo  Apex Life 26 - PDF Generator (FL26 v2.2)
echo ============================================
echo.
echo Checking Typst installation...
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: typst is not installed or not in PATH.
    echo Please install Typst 0.15 or later from https://typst.app/
    pause
    exit /b 1
)
for /f "tokens=2" %%v in ('typst --version') do set TYPST_VER=%%v
echo Typst %TYPST_VER% found.
echo.
echo Building PDF...
if not exist output mkdir output
typst compile template.typ output/apex-life-26.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/apex-life-26.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
```

- [ ] **Step 4: Create template.typ skeleton**

Typst master document:

```typst
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1", both: true)
    ]
  },
)

#set text(font: "Georgia", size: 11pt, fill: rgb("#2b2622"))
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)
#show heading.where(level: 1): set text(fill: rgb("#1a5c2a"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#2d8a4e"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#3a3a3a"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#1a5c2a")) }
#show link: set text(fill: rgb("#2d8a4e"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#1a5c2a"), font: "Bahnschrift", "Apex Life 26")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2b2622"), "SP Football Life 2026")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2b2622"), "Modlist & Manager's Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#6b6b6b"), "Version 2.2 — 2026")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)
#pagebreak()

// == Installation & Mod Stack
== Installation & Mod Stack
// #include "guide/installation.typ"
// Uncomment after Task 3
#pagebreak()

// == Sider Configuration
== Sider Configuration
// #include "guide/sider-config.typ"
// Uncomment after Task 4
#pagebreak()

// == Manager's Dossier
== Manager's Dossier
// #include "guide/lets-play.typ"
// Uncomment after Task 5
```

Colors: green palette (`#1a5c2a`, `#2d8a4e`) for football/pitch theme. Insert a simple text-based `assets/logo.jpg` — a centered title card generated via Typst or a plain color block.

- [ ] **Step 5: Create logo placeholder**

Since we have no football artwork, produce a text-only cover. In `assets/`, create a minimal `logo.jpg` — a solid green rectangle with white text "FL26" centered. Use any image tool or generate programmatically. If image generation isn't available, modify the template cover to use `#rect` and `#text` instead of `#image` — a pure-Typst cover requires no external file.

- [ ] **Step 6: Verify template compiles and commit**

Run `build.bat`. Expected: PDF with cover page, TOC, and three placeholder section headings (Installation, Sider, Dossier). The includes are commented out so the build succeeds with no content.

```bash
git add football-life/AGENTS.md football-life/mod-ideas.md football-life/conflicts-mods.md football-life/build.bat football-life/template.typ football-life/assets/logo.jpg football-life/assets/.gitkeep
git commit -m "docs(football-life): scaffold project files and Typst pipeline"
```

---

### Task 3: Installation Guide — Base Game + Layers 1–5

**Files:**

- Create: `football-life/guide/installation.typ`

**Interfaces:**

- Consumes: `template.typ` (included via `#include "guide/installation.typ"`), verified mod URLs from Task 1 STATUS.md
- Produces: Base game install section (4.1) plus mod layers 1–5 with verified URLs, install paths, and notes. STATUS.md updated with decisions for these layers.

- [ ] **Step 1: Write Base Game section (4.1)**

Content: download FL26 base + update from SmokePatch (link to verified download page from Task 1), install outside `C:\Program Files`, verify launch, directory anatomy walkthrough of `Sider/`, `livecpk/`, `content/`, `sider.ini`.

- [ ] **Step 2: Write Layer 1 — Commentary**

Table row: English Commentary (Peter Drury & Jim Beglin), SmokePatch, `.exe` installer → point to FL26 root → select in System Settings > Language. Use the verified URL from Task 1.

- [ ] **Step 3: Write Layer 2 — Audio Framework & Atmosphere**

Subsection with table: SoundServer (framework, Sider module → `sider.ini`), Predator002 Chant Pack V8 (thousands of team-specific chants + ChantsBase, Sider `livecpk/preds-root` → `cpk.root` line), Referee Whistle Mod (Sider `livecpk`), Atmosphere Overhaul (Sider `livecpk`). Volume tuning note: Commentary 10–12, balance Stadium Sound. Use verified EvoWeb URLs from Task 1.

- [ ] **Step 4: Write Layers 3–5 — Visual Foundation, Faces, Stadiums**

Layer 3: Essentials Mod Pack — EvoWeb → extract, merge `SiderAddons`.
Layer 4: SmokePatch Facepack AIO — `content/faces` → `cpk.root` in `sider.ini`.
Layer 5: Stadium Server (Sider module) + AIO Stadium Pack (`content/stadium-server` → `map_teams.txt`).

- [ ] **Step 5: Append STATUS.md decisions**

Document: why Predator002 over alternatives, why SmokePatch Facepack over community packs, stadium pack source choice.

- [ ] **Step 6: Verify compiles and commit**

Uncomment `#include "guide/installation.typ"` in template.typ. Run `build.bat`. Fix Typst errors.

```bash
git add football-life/guide/installation.typ football-life/template.typ football-life/STATUS.md
git commit -m "docs(football-life): add installation guide — base game through Layer 5"
```

---

### Task 4: Installation Guide — Layers 6–11 + Limitations + Save Warning

**Files:**

- Modify: `football-life/guide/installation.typ` (append layers 6–11 + 4.4 + 4.5)

**Interfaces:**

- Consumes: `installation.typ` from Task 3 (append after Layer 5 content)
- Produces: Complete installation guide through all 11 layers plus known limitations and save warning. STATUS.md updated.

- [ ] **Step 1: Write Layers 6–7 — Graphics Overhaul + Camera**

Layer 6 table: Soccer Revolution (lighting, Sider `livecpk`), Jeremiah's Ultra Turfs (grass, Sider `livecpk`), ReShade (`.ini` preset into FL26 root, install ReShade from reshade.me targeting `FL 26.exe`).
Layer 7: Nesa24's Camera Modules (Sider module → `sider.ini`).

- [ ] **Step 2: Write Layers 8–9 — Balls + Gameplay**

Layer 8: Ball Server (Hawke/community), Sider module, in-game Spacebar → `~` → OMB.lua.
Layer 9: Gameplay Loader + Holland's Gameplay Mod (or Allstar Mix as fallback), Sider modules.

- [ ] **Step 3: Write Layers 10–11 — Career Depth + Optional Leagues**

Layer 10: UML v3 — marked as **paid** with Patreon price note, FL26 v2.2 compatibility verified, database files + Sider modules + kit server config per UML team guide.
Layer 11: Ultra League Patch — adds Liga MX, CSL, follow per-mod instructions. Note that lower leagues beyond this are engine-limited.

- [ ] **Step 4: Write Known Limitations (4.4) and Save Compatibility Warning (4.5)**

4.4: no full lower-league pyramid (engine limit, Championship is lowest tier 2), UML is paid, no classic/legendary teams.
4.5: SmokePatch updates break ML saves — backup `save/` + `FL 26.exe`, recommend locking at v2.2 for career duration.

- [ ] **Step 5: Append STATUS.md decisions**

Document: gameplay mod choice (Holland vs Allstar Mix rationale), UML inclusion rationale, ULP scope note, save compatibility policy.

- [ ] **Step 6: Verify compiles and commit**

Run `build.bat`. Fix errors.

```bash
git add football-life/guide/installation.typ football-life/STATUS.md
git commit -m "docs(football-life): add installation guide — Layers 6-11, limitations, save warning"
```

---

### Task 5: Sider Configuration Guide

**Files:**

- Create: `football-life/guide/sider-config.typ`

**Interfaces:**

- Consumes: `template.typ` (included via `#include "guide/sider-config.typ"`), mod stack from Tasks 3–4 (exact `.lua` names needed)
- Produces: Complete `sider.ini` walkthrough with concrete module names. STATUS.md updated.

- [ ] **Step 1: Write sider.ini walkthrough**

How Sider injects mods, `.ini` structure:

- `[lua]` section: `lua.module = "StadiumServer.lua"`, `lua.module = "BallServer.lua"`, `lua.module = "SoundServer.lua"`, etc.
- `[cpk]` section: `cpk.root = ".\livecpk\faces"`, `cpk.root = ".\livecpk\preds-root"`, etc.
- Order matters rule: later `cpk.root` overrides earlier.
- Use exact module names from the verified mods in Task 1.

- [ ] **Step 2: Write pitfalls + backup strategy**

Common issues:

- Unmapped stadiums → check `map_teams.txt` in `content/stadium-server`
- Faces not loading → verify `cpk.root` path and order; facepack must load before other `livecpk` mods
- Sider not injecting → launch via `sider.exe`, not `FL 26.exe` directly
- Module load conflicts → only one gameplay mod active at a time via Gameplay Loader
- Black screen on launch → malformed `sider.ini`; restore from backup

Backup: zip entire `SiderAddons/` + `sider.ini` before each major layer. Keep timestamped snapshots.

- [ ] **Step 3: Append STATUS.md and commit**

Document: Sider version shipped with FL26 v2.2, module load order decisions.

```bash
git add football-life/guide/sider-config.typ football-life/template.typ football-life/STATUS.md
git commit -m "docs(football-life): add sider.ini configuration walkthrough"
```

Don't forget to uncomment `#include "guide/sider-config.typ"` in template.typ before committing.

---

### Task 6: Game Tutorial (Part 2 — Learning the Game)

**Files:**

- Create: `football-life/guide/lets-play.typ`

**Interfaces:**

- Consumes: `template.typ` (included via `#include "guide/lets-play.typ"`)
- Produces: Section 5.1 Learning the Game. STATUS.md updated. Personas go in Task 7.

- [ ] **Step 1: Write prerequisites and controls primer**

Controller: Xbox native, DualShock 4/DualSense may need DS4Windows or Steam Input (add `FL 26.exe` as non-Steam game, enable PlayStation Configuration Support). Keyboard is a handicap — analog precision for dribbling, passing weight, shot placement.

Controls: tactical D-pad (fluid formation switching, attack/defense levels 1–5), off-ball movement (super cancel = R1+R2, teammate pressure = Square), set pieces (free kick aiming with left stick, corner routines with player selection).

- [ ] **Step 2: Write tactics and scouting sections**

Tactics: fluid formations vs fixed, advanced instructions (tight marking, counter-target, defensive line depth, compactness), team spirit gates tactical effectiveness, familiarity builds over matches.

Scouting: scout network assigns regions by scout nationality/experience, player reports show star ratings and attribute ranges, UML improves scouting logic, wonderkid identification (age 16–21, high potential stat, key attributes for position already above average).

- [ ] **Step 3: Write transfers, training, and match-day sections**

Transfers: negotiation flow (bid → counter → accept/reject), release clauses mandatory in Spanish leagues, wage budget vs transfer budget slider, sell-on clauses, loan-to-buy mechanics.

Training: growth curve types (early peak 18–23, late bloomer 24–29, steady), peak age by position (wingers peak earliest, CBs/GKs latest), position training takes weeks to months, mentoring passes traits and playing styles, team role (bandiera, maestro, etc.) affects development speed of nearby positions.

Match-day: game plan selection pre-match, substitution timing (Stamina bar drops visibly at ~60', sharp drop ~75'), form arrows (↑ = +stats, ↓ = -stats), morale from team talks and recent results affects in-game responsiveness.

- [ ] **Step 4: Append STATUS.md and commit**

Document: control scheme assumptions (Xbox layout as reference), tactical depth notes.

```bash
git add football-life/guide/lets-play.typ football-life/template.typ football-life/STATUS.md
git commit -m "docs(football-life): add game tutorial — controls, tactics, scouting, transfers, training"
```

Uncomment `#include "guide/lets-play.typ"` in template.typ before committing.

---

### Task 7: Manager Personas & Rule Frameworks

**Files:**

- Modify: `football-life/guide/lets-play.typ` (append after game tutorial content)

**Interfaces:**

- Consumes: `lets-play.typ` from Task 6 (append personas after the tutorial)
- Produces: Complete sections 5.2 + 5.3. STATUS.md updated.

- [ ] **Step 1: Write section 5.2 header and difficulty baseline**

Global note: Professional, 10-min halves, normal game speed. These are dials — the rules only constrain if the AI pushes back. Bump up if you're winning by February, drop down if you can't score.

- [ ] **Step 2: Write Persona 1 — The Disgraced Legend**

Use the persona template. Fill in:

- Title: "The Disgraced Legend"
- Hook: *They still sing his name in the Curva Sud. They also still spit it.*
- Backstory: Marco Vieri, Ballon d'Or podium, career detonated in Monaco, 18-month ban, punditry exile. Now back at a relegation-zone Championship side.
- Teams: Derby County, Portsmouth, Hull City
- Formation: Back-three mandatory (3-5-2, 3-4-3, 3-4-2-1)
- Transfers: No top-6 league signings for 2 full seasons
- Youth: 2 academy grads promoted to first team per season
- Budget: No single player above 50% of transfer budget
- Match settings: Baseline (Professional, 10-min) → Superstar after first promotion
- Narrative goal: Premier League in 4 seasons, domestic cup before season 6

- [ ] **Step 3: Write Persona 2 — The Data Unicorn**

- Title: "The Data Unicorn"
- Hook: *Lena Okonkwo has never kicked a ball professionally. She has, however, built three quantitative hedge funds, sold two of them, and retired at 34.*
- Backstory: Retired quant, bought a mid-table second-division club as a joke, fired the manager, installed PostgreSQL in the scouting department.
- Teams: Mid-table 2. Bundesliga / Segunda / Championship side
- Formation: 4-2-3-1 gegenpress, 4-3-3 inverted fullbacks, or 3-4-3 fluid
- Transfers: Above-avg match rating only, no signings over age 28
- Wages: Highest earner ≤ 2× squad median
- Scouting: Stat-ranked shortlist, cut below-replacement players after 10 matches
- Match settings: Professional, drop to Regular if losing too many data points
- Narrative goal: Top-flight promotion with U25 squad

- [ ] **Step 4: Write Persona 3 — The Basque Purist**

- Title: "The Basque Purist"
- Hook: *Iker Etxebarria was born 300 meters from San Mamés. His father laid the pitch. His grandfather watched Pichichi score.*
- Backstory: 412 matches for Athletic Bilbao, never left, negotiated control of La Cantera when offered the job — but Athletic passed him over. Now he takes the philosophy on the road.
- Teams: A club with strong regional identity and a functional academy — Freiburg, Real Sociedad, Fiorentina
- Formation: 4-2-3-1 or 4-4-2
- Transfers: Only from club's nation or immediate geographic region. Accept every transfer request — player wants out, they go.
- Youth: 3 first-team-ready academy grads within 4 seasons
- Squad: 3+ homegrown in match-day squad
- Match settings: Professional, 12-min halves (youth need real minutes)
- Narrative goal: Top-flight title with 50%+ academy/regional squad

- [ ] **Step 5: Write Persona 4 — The Journeyman**

- Title: "The Journeyman"
- Hook: *Fifty-three years old. Fourteen clubs. Eight countries. Zero major trophies.*
- Backstory: Thomas Krause, the firefighter, the stopgap, the safe pair of hands. Wife stopped asking which city. Kids track his career via Wikipedia. One last cycle.
- Teams: Lowest-ranked playable team in any league
- Job movement: Change clubs every 2 seasons — accept first reasonable offer
- Transfers: Free agents and loans only, no permanent purchases
- Squad: Fresh start each move, can't bring players from previous club
- Hard stop: Age 60 = 7 seasons. Honor-system rule — PES ML has no manager aging. If no major trophy by then, the career is complete but unfulfilled.
- Match settings: Top Player, 8-min halves, fast speed → Superstar at final club
- Narrative goal: Win a top-flight league title before retirement

- [ ] **Step 6: Write section 5.3 — Self-Imposed Rule Frameworks**

Five subsections, 2–3 sentences each:

- **Transfer realism:** Sell before buying above threshold, use release clauses honestly, no flipping free agents for profit.
- **Scouting realism:** Only scout regions with real-world ties, no global scouting below Champions League level.
- **Youth-first:** Minimum 2 academy grads in every match-day squad, transfer budget secondary to academy.
- **Financial fair play:** Wage-to-revenue ≤ 70%, no running deficits across two windows.
- **Sporting director mode:** Delegate all transfers to CPU, coach what you're given.

- [ ] **Step 7: Append STATUS.md and commit**

Document: persona design rationale, rule framework philosophy.

```bash
git add football-life/guide/lets-play.typ football-life/STATUS.md
git commit -m "docs(football-life): add manager personas and self-imposed rule frameworks"
```

---

### Task 8: Final Polish, PDF Review & Push

**Files:**

- Modify: `football-life/template.typ` (any final styling fixes)

**Interfaces:**

- Consumes: All prior content tasks
- Produces: Polished PDF passing the full review checklist. Pushed to remote.

- [ ] **Step 1: Run PDF review checklist**

Run `build.bat`. Review the output PDF against this checklist:

| #  | Check               | Criterion                                                                                                                       |
|----|---------------------|---------------------------------------------------------------------------------------------------------------------------------|
| 1  | Cover page          | Title "Apex Life 26" centered, subtitle "SP Football Life 2026", version "v2.2 — 2026". Logo/image renders. No clipping. |
| 2  | TOC                 | Page numbers correct. All major sections listed (Installation, Sider Configuration, Manager's Dossier). Subsections indented.   |
| 3  | Installation tables | All 11 layer tables render with aligned columns. No text overflow. URLs in footnotes or inline.                                 |
| 4  | Persona prose       | Blockquote styling applied. Italic hook renders. Rules list uses bullet points.                                                 |
| 5  | Page breaks         | Each major section starts on a new page. Personas don't split mid-prose across pages.                                           |
| 6  | Headings            | Three heading levels visually distinct (size + color). Section dividers (green line under H1).                                  |
| 7  | Typst warnings      | Zero compilation warnings in build output.                                                                                      |
| 8  | Font rendering      | Bahnschrift headings + Georgia body render correctly. No tofu/fallback glyphs.                                                  |
| 9  | Links               | All mod URLs are present, correctly formatted as Typst `#link("url")[text]`.                                                    |
| 10 | Save warning        | 4.5 prominently visible — reader can't miss it before starting a career.                                                        |

If any check fails, fix the source and rebuild.

- [ ] **Step 2: Fix any review issues**

Address all failed checklist items. Rebuild and re-check.

- [ ] **Step 3: Final commit and push**

```bash
git add football-life/template.typ football-life/STATUS.md
git commit -m "docs(football-life): final PDF polish — cover, styling, review checklist pass"
git push origin main
```

- [ ] **Step 4: Verify remote**

Confirm all 8 commits appear on the remote branch.
