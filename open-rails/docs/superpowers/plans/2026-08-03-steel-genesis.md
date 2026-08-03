# Steel Genesis (Open Rails 1.6.1) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the "Steel Genesis" Open Rails 1.6.1 modlist + game guide + glossary project — 4 waves of verified, installable content driven through the built-in Content system — and produce a themed Typst 0.15 PDF (`output/steel-genesis.pdf`).

**Architecture:** Phase 1 (research) is **already complete** — all content and URLs below were verified on 2026-08-03 against the live OR 1.6.1 content catalogue, Elvas Tower library, and direct download hosts (every URL passed an HTTP 200 HEAD check). Phase 2 assembles the documentation: Markdown tracking files (`STATUS.md`, `conflicts-mods.md`, `mod-ideas.md`) plus Typst source under `guide/`, assembled by `template.typ` and compiled by `build.bat`. No external content is authored into the repo — the user installs mods via the Content system; we curate the manifest + documentation.

**Tech Stack:** Typst 0.15.1 (PDF), Windows batch (`build.bat`), URL verification via sandbox `fetch` HEAD (200 = valid).

**Non-negotiables:** NO multiplayer anywhere. No fabricated mod names/URLs/versions. Every mod entry carries a URL that passed an HTTP 200 check. Mods must load/run in Open Rails 1.6.1.

---

## Phase 1 — Research (COMPLETE)

### Verified content — the Steel Genesis wave map

All four routes come from the **official OR 1.6.1 content catalogue** (the mandated built-in Content system). All are Free, self-contained, and installed via the in-app Content form. All URLs verified HTTP 200 on 2026-08-03.

| Wave | Content | URL (verified 200) | Size | Creator | Notes |
|------|---------|--------------------|------|---------|-------|
| 0 | Demo Model 1 | `https://static.openrails.org/files/DemoModel1.zip` | 272 MB dl / 330 MB install | Making Tracks Ltd | BR 'blue' era diesel express, Edinburgh Waverley → Linlithgow, ~20 min. The official tutorial route (see getting-started guide). |
| 1 | BNSF Starter Route | `https://ts-files.com/files/TS_STARTER_ROUTE.zip` | 598 MB dl / 894 MB install | TrainSimulations.net | BNSF Scenic Subdivision (Pacific NW). **Ships with trainsets + activities** — no separate train set needed. |
| 2 | Craven Timber Railway | `http://www.craven.coalstonewcastle.com.au/` | free (small) | Peter Newell | 5.8-mile NSW timber tramway to a sawmill; two saddle-tank steam locos (PWD32, 529X). Switching/industry operations. |
| 3 | Great Zig Zag Railway | `http://www.zigzag.coalstonewcastle.com.au/` | 210 MB dl | Peter Newell | Blue Mountains NSW engineering marvel. **7 progressive tutorial activities teaching steam handling.** Mountain grades + reversing moves. |

Additional verified references:
- OR 1.6.1 installer: `https://github.com/openrails/openrails/releases/download/1.6.1/Open.Rails.1.6.1.Setup.exe` (200 ✓)
- Content catalogue page: `https://openrails.org/download/content/`
- Getting Started (v1.6+): `https://openrails.org/discover/get-started/` — source of truth for the Wave 0 tutorial key bindings (Esc start, `1` cab, `2` external, `v` wipers, `F4` Track Monitor, `F5` Train Driving Info, `Alt+Enter` fullscreen, `Alt+F4` exit).

### Audit findings (record into `STATUS.md` in Task 1)

1. **OR catalogue:** 14 routes live, incl. all 4 used. Catalogue is limited to self-contained routes (per site note). Free/Donation/Commercial filters.
2. **Elvas Tower Open Rails Download Library is thin:** Routes for OR subforum = 6 topics; Goose Island = 0 topics (empty); Rio Grande Southern = 1 "testing" thread; Conrail & FG&S = CRKB_FJG route (5 parts, Oct 2023). **Contingency exercised:** wave content sourced from the official catalogue instead; Elvas candidates logged to `mod-ideas.md`.
3. **Logo:** `assets/logo.jpg` is a valid JPEG (header `FF D8 FF E1`, 460 KB). Visual confirmation still required during PDF verification (Task 9).
4. **Environment:** Typst 0.15.1 on PATH. Fonts verified available: **Cinzel** (cover), **Bahnschrift** (headings), **Georgia** (body), "New Computer Modern" also present.

### Sourcing & verification policy (applies to every entry)

- **Single verification method:** sandbox `fetch(..., { method: "HEAD", redirect: "follow" })`; `200` = valid. A `403`/login-wall on a forum attachment is NOT a valid link — use the direct download URL instead. Only URLs that pass 200 may appear in a mod card.
- **Named fallback sources** if any wave content needs replacement: (a) other catalogue routes (Burrinjuck, Tweed, Manning River — all Peter Newell freeware), (b) TrainSimulations.net freeware, (c) TrainSim.com. Scan depth = the catalogue list + one layer of subforums. Stop condition = one route per wave; every entry must pass the 200 gate before inclusion.
- Version field uses the release/file date when the content has no version number (all catalogue content is versioned by publication date).

---

## Phase 2 — Assembly Tasks

### Task 1: Audit close-out (record Phase 1 findings)

**Files:**
- Create: `open-rails/STATUS.md`

- [ ] **Step 1: Create `STATUS.md`**

```markdown
# Steel Genesis — STATUS

Target: Open Rails 1.6.1 (released 14 Jan 2026). Mod organizer: built-in Content system.
Mod sources: official OR 1.6.1 content catalogue (primary, all 4 waves), Elvas Tower Download Library (audited — thin), other reputable freeware (fallback).

## Audit (2026-08-03)
- OR catalogue: 14 routes live; all 4 wave routes confirmed Free + self-contained + installed via Content form.
- Elvas Tower OR Download Library: Routes for OR = 6 topics; Goose Island = 0; RGS = 1 (testing); Conrail & FG&S = CRKB_FJG (5 parts). Contingency exercised — wave content from catalogue.
- Logo: assets/logo.jpg valid JPEG (FF D8 FF E1, 460 KB). Visual check pending in Task 9.
- Environment: Typst 0.15.1; fonts Cinzel / Bahnschrift / Georgia available.

## Decisions
- Wave 0 = config-as-QoL; no external content beyond Demo Model 1.
- Wave 3 = steam mastery on Great Zig Zag; NO multiplayer.
- Compatibility = loads/runs in 1.6.1; release date is not a gate.
- URL policy: only HTTP-200-verified URLs go in mod cards; forum/login walls are not valid links.

## Accepted Mods
| Wave | Mod | URL (verified) | Version/Date | Dependencies | Notes |

## Rejected Mods
| Mod | Reason |

## Conflicts
| Mod A | Mod B | Issue | Mitigation |

## Notes
```

- [ ] **Step 2: Populate Accepted Mods** with the 4 rows from the Phase 1 table (Wave, Mod, URL, "Catalogue freeware — 2026", "None — self-contained", "Install via Content form").

- [ ] **Step 3: Commit**

```bash
git add open-rails/STATUS.md
git commit -m "chore(open-rails): record Steel Genesis audit + verified wave content"
```

---

### Task 2: Project scaffolding

**Files:**
- Create: `open-rails/AGENTS.md`
- Create: `open-rails/README.md` (skeleton, polished in Task 10)
- Create: `open-rails/conflicts-mods.md`
- Create: `open-rails/mod-ideas.md` (seed with Elvas Tower candidates: CRKB Conrail & FG&S, RGS, Goose Island — audited but unused)
- Create: `open-rails/build.bat`
- Create: `open-rails/template.typ` (skeleton, section includes wired to stubs)

**Compilation order rule:** `template.typ` must compile after every task. All `guide/wave-{0..3}/*.typ`, `guide/installation.typ`, `guide/glossary.typ` are created as valid stubs in Task 3 (after the probe) so the skeleton compiles from Task 3 onward.

- [ ] **Step 1: Create `build.bat`**

```bat
@echo off
echo ============================================
echo  Steel Genesis - PDF Generator (Open Rails 1.6.1)
echo ============================================
echo.
echo Checking Typst installation...
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: typst is not installed or not in PATH.
    echo Please install Typst 0.15 from https://typst.app/
    pause
    exit /b 1
)
echo Typst found.
echo.
echo Building PDF...
typst compile template.typ output/steel-genesis.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/steel-genesis.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
```

- [ ] **Step 2: Create `template.typ` skeleton**

Theme fonts (all verified available): body `Georgia`, headings `Bahnschrift`, cover title `Cinzel`. Steel-blue railroad palette. Footer page numbers at bottom.

```typst
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display("1 / 1")
    ]
  },
)

#set text(font: "Georgia", size: 11pt)
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)

#show heading.where(level: 1): set text(fill: rgb("#3b6ea5"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 2): set text(fill: rgb("#2c3e50"), weight: "bold", size: 16pt, font: "Bahnschrift")
#show heading.where(level: 3): set text(fill: rgb("#34495e"), weight: "bold", size: 13pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#3b6ea5")) }
#show link: set text(fill: rgb("#3b6ea5"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#3b6ea5"), font: "Cinzel", "Steel Genesis")
  #v(0.8em)
  #text(size: 16pt, fill: rgb("#2c3e50"), "Open Rails 1.6.1")
  #v(0.2em)
  #text(size: 14pt, fill: rgb("#2c3e50"), "Modlist & Guide")
  #v(0.6em)
  #text(size: 11pt, fill: rgb("#7f8c8d"), "Version 1.6.1 — January 2026")
]
#pagebreak()

// == Table of Contents
== Table of Contents
#v(0.5em)
#outline(depth: 3)
#pagebreak()

// == Installation
== Installation Guide
#include "guide/installation.typ"
#pagebreak()

// == Waves
== Waves & New-Game Setups
=== Wave 0: The Rookie
#include "guide/wave-0/how-to-play.typ"
#include "guide/wave-0/modlist.typ"
#include "guide/wave-0/mechanics.typ"
#include "guide/wave-0/content.typ"
#include "guide/wave-0/graphics.typ"
#pagebreak()

=== Wave 1: The Road Freight
#include "guide/wave-1/strategy.typ"
#include "guide/wave-1/modlist.typ"
#include "guide/wave-1/mechanics.typ"
#include "guide/wave-1/content.typ"
#include "guide/wave-1/graphics.typ"
#pagebreak()

=== Wave 2: The Yard
#include "guide/wave-2/strategy.typ"
#include "guide/wave-2/modlist.typ"
#include "guide/wave-2/mechanics.typ"
#include "guide/wave-2/content.typ"
#include "guide/wave-2/graphics.typ"
#pagebreak()

=== Wave 3: The Limited
#include "guide/wave-3/strategy.typ"
#include "guide/wave-3/modlist.typ"
#include "guide/wave-3/mechanics.typ"
#include "guide/wave-3/content.typ"
#include "guide/wave-3/graphics.typ"
#pagebreak()

// == Glossary
== Glossary
#include "guide/glossary.typ"
```

- [ ] **Step 3: Create tracking files** (`conflicts-mods.md`, `mod-ideas.md`, `AGENTS.md`)

`mod-ideas.md` seed:

```markdown
# Future Mod Ideas (excluded from PDF)

## Elvas Tower Download Library (audited 2026-08-03, thin)
- CRKB Conrail & FG&S route (Weter, 5 parts, Oct 2023) — https://www.elvastower.com/forums/index.php?/topic/37477-or-route-crkb-fjg-route-part-5-of-5/
- Rio Grande Southern route (1 thread, 2019)
- Goose Island route (0 topics)
## OR catalogue — other free routes (verified 200)
- Burrinjuck Railway — http://www.burrinjuck.coalstonewcastle.com.au/
- Tweed Railway — http://www.tweed.coalstonewcastle.com.au/
- Manning River Breakwall — http://www.manning-river.coalstonewcastle.com.au/
- MidEast Coast / New Forest / Chiltern / Portugal 79 (GitHub, large WIP routes)
```

`conflicts-mods.md`:

```markdown
# Conflicting Mods (excluded from PDF)
| Mod A | Mod B | Issue |
```
(Empty until a real conflict is identified. Definitions: file-overwrite collisions, duplicate exclusive assets, incompatible dependency requirements.)

`AGENTS.md`: project instructions mirroring the sibling structure, adapted — Content system (not RPFM), `build.bat` → `output/steel-genesis.pdf`, no-multiplayer rule, URL-200 verification policy, fonts theme, wave map.

- [ ] **Step 4: Create `README.md` skeleton** (title, waves table from Phase 1, install + build notes, structure tree — final polish in Task 10)

- [ ] **Step 5: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): scaffold Steel Genesis tracking files and build script"
```

---

### Task 3: Typst probe (validate template syntax BEFORE wiring 20 files)

**Files:**
- Create: `open-rails/_probe.typ` (temporary; deleted at the end of this task)
- Create: stub `guide/wave-{0..3}/*.typ`, `guide/installation.typ`, `guide/glossary.typ`

**Goal:** Prove the exact Typst constructs the template relies on (footer page counter, `#show heading.where(level: 1): it => { it; line(...) }`, `#outline`, `#image`) compile on Typst 0.15.1 — in isolation, before any real content exists. This is the fix for "untested syntax baked into Task 2."

- [ ] **Step 1: Write `_probe.typ`** containing ONLY the risky constructs:

```typst
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context { align(center)[ #counter(page).display("1 / 1") ] },
)
#set text(font: "Georgia", size: 11pt)
#show heading.where(level: 1): set text(fill: rgb("#3b6ea5"), weight: "bold", size: 22pt, font: "Bahnschrift")
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#3b6ea5")) }
#show link: set text(fill: rgb("#3b6ea5"))

== Probe
#link("https://openrails.org/")[link check]
#outline(depth: 2)
#image("assets/logo.jpg", width: 20%)
```

- [ ] **Step 2: Compile the probe**

Run: `typst compile _probe.typ _probe.pdf`
Expected: exit 0, `_probe.pdf` created, no warnings about fonts/constructs. **If it fails, fix the constructs in `_probe.typ` FIRST** (try `counter(page).display(numbering: "1 / 1")`, or a simpler `context { counter(page).display() }` footer), then port the corrected syntax into `template.typ` before continuing.

- [ ] **Step 3: Verify the page-number footer rendered**

Run: `typst compile _probe.typ _probe-{p}.png --format png --pages 1`
Then confirm the render step exits 0 (renders without error). The exact "1 / 1" text is confirmed by the final text-extraction check in Task 9.

- [ ] **Step 4: Create all stub includes**

Each of `guide/wave-{0..3}/{how-to-play|strategy,modlist,mechanics,content,graphics}.typ`, `guide/installation.typ`, `guide/glossary.typ` gets exactly:

```typst
// <path> — filled in Task N
== Wave 0
```
(Adjust heading per file. Purpose: `template.typ` compiles from this task onward.)

- [ ] **Step 5: Compile the full skeleton**

Run: `build.bat`
Expected: SUCCESS; `output/steel-genesis.pdf` exists (cover + TOC + stub sections + footer).

- [ ] **Step 6: Delete `_probe.typ` / `_probe.pdf` / `_probe-1.png`**

Run: `Remove-Item open-rails\_probe.typ, open-rails\_probe.pdf, open-rails\_probe-1.png`

- [ ] **Step 7: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): validate Typst template syntax via probe; wire stub sections"
```

---

### Task 4: Wave 0 — The Rookie (how-to-play + config-as-QoL)

**Files:**
- Create: `open-rails/guide/wave-0/{how-to-play,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** Complete first-day guide grounded in the official getting-started steps (indexed source: openrails.org/discover/get-started). Single source of truth note: install steps live in `guide/installation.typ` (Task 8); `how-to-play.typ` REFERENCES that section instead of re-writing the install procedure — it covers driving, not installing.

- [ ] **Step 1: Add the shared `mod-entry()` function** to the top of `wave-0/modlist.typ` (and identically to every later `modlist.typ`; self-contained):

```typst
#let mod-entry(name, url, version: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f4f7fb"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#d5dee8"))[
    #link(url)[#text(weight: "bold", size: 11pt, name)]
    #if version != none [#v(4pt) *Version:* #version]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}
```

- [ ] **Step 2: Write `modlist.typ`**

```typst
== Wave 0 — Modlist: Vanilla + Config-as-QoL
This wave uses only the built-in Content system and Open Rails' own settings. No external content.

== Routes
#mod-entry(
  "Demo Model 1",
  "https://static.openrails.org/files/DemoModel1.zip",
  version: "Catalogue freeware — 2026",
  deps: "None — self-contained",
  impact: "Learning route for the Wave 0 tutorial. BR 'blue'-era diesel express from Edinburgh Waverley to Linlithgow (~20 minutes). Teaches cab controls, track monitor, speed limits and brake handling on a short, forgiving run.",
  notes: "Install via the Content form at first launch (see Installation Guide). Set the Install Path before clicking Install. ~272 MB download / ~330 MB installed.",
)
```

**URL semantics (defined):** mod-card `url` = the direct download URL the Content system installs from (verified HTTP 200 in Phase 1). The in-app catalogue entry is referenced in `notes`. Catalogue-page links are used only as prose references, never as card URLs.

- [ ] **Step 3: Write `how-to-play.typ`**

Structure (facts traceable to the indexed getting-started content):
1. Roleplay backstory: fresh hire at a fictional shortline, first morning — a diesel express service.
2. Install + first launch (one paragraph, then reference the Installation Guide section — do NOT duplicate the full steps).
3. The Content form: select Demo Model 1, Install Path, Install (≈272 MB). (reference Installation Guide).
4. Start a session: Pause menu → Esc to begin.
5. Controls primer — use ONLY these sourced bindings: `Esc` start, `1` driver's seat, `2` external view (arrow keys / right-mouse + wheel to look around), `v` wipers, `F4` Track Monitor, `F5` Train Driving Info, `Alt+Enter` fullscreen/windowed, `Alt+F4` exit.
6. Driving a diesel: throttle + train brake via mouse on the handles (recommended over keyboard); watch Speed/Direction/Train Brake in F5.
7. Config-as-QoL walkthrough: graphics settings, HUD window placement, controls.

Acceptance: every key binding and UI claim traceable to the official getting-started page; no invented controls; no install-step duplication with Task 8's `installation.typ`.

- [ ] **Step 4: Write `mechanics.typ`, `content.typ`, `graphics.typ`**
- `mechanics.typ`: beginner concepts only — throttle/brake, track monitor, speed limits, couplers.
- `content.typ`: the Content system's content types (Routes / Train cars / Train sets) and Free/Donation/Commercial filters.
- `graphics.typ`: built-in graphics options (renderer, superelevation, fullscreen) — no external graphics mods in Wave 0.

- [ ] **Step 5: Update `STATUS.md`** — mark Demo Model 1 accepted (Wave 0).

- [ ] **Step 6: Compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 7: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 0 rookie guide with verified Demo Model 1 entry"
```

---

### Task 5: Wave 1 — The Road Freight (assembly, content pre-verified)

**Files:**
- Create: `open-rails/guide/wave-1/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** Main-line diesel freight using the verified **BNSF Starter Route** (ships with trainsets + activities — no separate train-set search needed).

- [ ] **Step 1: Write `modlist.typ`** (with `mod-entry()` from Task 4 Step 1):

```typst
== Wave 1 — Modlist: Road Freight
Adds the first real route and a complete diesel-freight trainset + activities, all self-contained.

== Routes
#mod-entry(
  "BNSF Starter Route",
  "https://ts-files.com/files/TS_STARTER_ROUTE.zip",
  version: "Catalogue freeware — 2026",
  deps: "None — self-contained (includes trainsets and activities)",
  impact: "BNSF Scenic Subdivision, Pacific Northwest. Main-line diesel freight: signals, longer consists, throttle/train-brake discipline, basic timetable running with built-in activities.",
  notes: "Install via the Content form. ~598 MB download / ~894 MB installed. Choose a BNSF freight activity to start.",
)

== Train Sets
#mod-entry(
  "BNSF Starter Trainsets",
  "https://ts-files.com/files/TS_STARTER_ROUTE.zip",
  version: "Included with BNSF Starter Route",
  deps: "BNSF Starter Route",
  impact: "Ships the diesel locomotives and freight cars needed by the route's activities. No separate download required.",
  notes: "Bundled — no extra install step.",
)
```

- [ ] **Step 2: Write `strategy.typ`** — roleplay (promoted to road freight on a fictional Class I regional) + main-line strategy: signal aspects, train handling on grades, longer consists, reading a basic timetable, brake discipline.

- [ ] **Step 3: Write `mechanics.typ` / `content.typ` / `graphics.typ`** — signals + consists mechanics; what the route/trainsets add; visual notes (no documented graphics changes → "none required").

- [ ] **Step 4: Update `STATUS.md`** — accept both entries (Wave 1); no conflicts.

- [ ] **Step 5: Compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 6: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 1 road-freight guide with verified BNSF Starter Route"
```

---

### Task 6: Wave 2 — The Yard (assembly, content pre-verified)

**Files:**
- Create: `open-rails/guide/wave-2/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** Switching operations on the verified **Craven Timber Railway** (sawmill industry, steam saddle tanks).

- [ ] **Step 1: Write `modlist.typ`**:

```typst
== Wave 2 — Modlist: The Yard
Adds a small industrial route focused on switching and industry spotting.

== Routes
#mod-entry(
  "Craven Timber Railway",
  "http://www.craven.coalstonewcastle.com.au/",
  version: "Freeware — 2026 (site version)",
  deps: "None — self-contained",
  impact: "5.8-mile NSW timber tramway to a sawmill, two saddle-tank steam locos (PWD32, 529X), tight 120m curves, six Wards River crossings. Switching, runaround moves and industry spotting on a small, manageable layout.",
  notes: "Install via the Content form. Download page on the creator's site.",
)
```

- [ ] **Step 2: Write `strategy.typ`** — roleplay (yard foreman transferred to the timber branch) + switching strategy: coupler work, runaround/reverse moves, industry spotting, working limits, yard signals.

- [ ] **Step 3: Write `mechanics.typ` / `content.typ` / `graphics.typ`** — coupling, uncoupling, reversing, handbrakes (new vs Wave 1); route content notes; visual notes.

- [ ] **Step 4: Update `STATUS.md`** — accept (Wave 2).

- [ ] **Step 5: Compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 6: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 2 yard-operations guide with verified Craven Timber Railway"
```

---

### Task 7: Wave 3 — The Limited (assembly, content pre-verified)

**Files:**
- Create: `open-rails/guide/wave-3/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** Steam mastery capstone on the verified **Great Zig Zag Railway** (7 progressive steam tutorial activities). **No multiplayer references anywhere.**

- [ ] **Step 1: Write `modlist.typ`**:

```typst
== Wave 3 — Modlist: The Limited
Steam-era capstone: an engineering-marvel mountain route with progressive steam tutorials.

== Routes
#mod-entry(
  "Great Zig Zag Railway",
  "http://www.zigzag.coalstonewcastle.com.au/",
  version: "Freeware — 2026 (site version)",
  deps: "None — self-contained",
  impact: "Blue Mountains NSW heritage line with reversing zig-zag moves and steep gradients. Includes 7 progressive tutorial activities that teach steam locomotive handling step by step.",
  notes: "Install via the Content form. ~210 MB download. Play the tutorial activities in order.",
)
```

- [ ] **Step 2: Write `strategy.typ`** — roleplay (senior engineer trusted with the mountain division's named steam service) + capstone strategy: steam handling fundamentals, firing/basic boiler awareness, gradient and reversing-zig-zag moves, station stops, heavy-AI-traffic awareness, reading the timetable.

- [ ] **Step 3: Write `mechanics.typ` / `content.typ` / `graphics.typ`** — steam-era mechanics; route/tutorial content; visual notes.

- [ ] **Step 4: Update `STATUS.md`** — accept (Wave 3); note the Elvas-Tower-thin contingency decision already logged.

- [ ] **Step 5: Compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 6: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 3 steam-limited guide with verified Great Zig Zag Railway"
```

---

### Task 8: Installation guide + glossary

**Files:**
- Create: `open-rails/guide/installation.typ`
- Create: `open-rails/guide/glossary.typ`

**Ownership rule (fix for duplicated install steps):** `installation.typ` is the **single source of truth** for the Content-system procedure. Wave guides and how-to-play reference it; they never re-write the steps.

- [ ] **Step 1: Write `installation.typ`** — canonical reference:

1. Download & install Open Rails 1.6.1 (`Open.Rails.1.6.1.Setup.exe`; verified URL in Phase 1 table).
2. First launch → the Content form appears.
3. Browse the catalogue: Routes / Train cars / Train sets; filter Free / Donation / Commercial.
4. Select an item, set the Install Path, click Install (self-installing; Demo Model 1 ≈272 MB download).
5. Manual install for non-catalogue content (Elvas Tower etc., when used): download zip → extract into the Content folder → confirm the item appears in the Content form / route list.
6. Configure: graphics (renderer, fullscreen/windowed), HUD windows, controls, superelevation.
7. Wave install order: install Wave 0 content before playing it through; install each wave's content only when starting that wave. Never install two waves' content and mix sessions without following the wave order.

- [ ] **Step 2: Write `glossary.typ`** — alphabetized terms (one-line definitions, only terms actually used in the guide): cab, consist, coupler, handbrake, HUD, track monitor, signal, timetable, throttle, train brake, yard/switching, runaround, industry spotting, superelevation, Content form, Install Path, zig-zag, saddle tank, limited (train). No invented terms.

- [ ] **Step 3: Compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 4: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): add canonical Content-system install guide and glossary"
```

---

### Task 9: PDF verification (agent-visible, text-based)

**Files:**
- Modify: `open-rails/template.typ` (layout fixes only if verification finds issues)
- Verify: `open-rails/output/steel-genesis.pdf`

**Verification approach (fix for "open the PDF" non-instruction):** render pages to PNG to prove the layout renders, and extract text to prove content presence. Do NOT rely on eyeballing — use tool output.

- [ ] **Step 1: Render pages to PNG**

Run: `typst compile template.typ output/preview-{p}.png --format png --pages 1,2,3`
Expected: exit 0 and 3 PNG files produced (cover, TOC, early content). Rendering without error = no layout crash.

- [ ] **Step 2: Extract text and verify content presence**

Run: `pdftotext output/steel-genesis.pdf output/steel-genesis.txt` (if `pdftotext` unavailable, use Python: `python -c "import pypdf,sys;print(''.join(p.extract_text() for p in pypdf.PdfReader('output/steel-genesis.pdf').pages))"`; if neither, use `typst compile template.typ --format pdf` success + PNG render as proxy).
Then verify the text contains: "Steel Genesis", "Demo Model 1", "BNSF Starter Route", "Craven Timber Railway", "Great Zig Zag Railway", "Glossary". Grep for each; all must match.

- [ ] **Step 3: Verify page-number footer text**

Confirm the extracted text contains the `1 / 1` page-numbering pattern on at least one page (page footer). If extraction shows no footer, fix the footer construct in `template.typ` and rebuild.

- [ ] **Step 4: Link integrity gate (all mod URLs)**

Run in the sandbox:

```javascript
// ctx_execute(language: "javascript")
const urls = [
  "https://static.openrails.org/files/DemoModel1.zip",
  "https://ts-files.com/files/TS_STARTER_ROUTE.zip",
  "http://www.craven.coalstonewcastle.com.au/",
  "http://www.zigzag.coalstonewcastle.com.au/"
];
const out = [];
for (const u of urls) {
  const r = await fetch(u, { method: "HEAD", redirect: "follow" });
  out.push(`${r.status} ${u}`);
}
console.log(out.join("\n"));
```

Expected: all four `200`. Any non-200 → remove/fix that entry before completion.

- [ ] **Step 5: Forbidden-content grep gate**

Run:
```
grep -ri "multiplayer\|multi-player\|steam multiplayer" open-rails/guide open-rails/template.typ
grep -ri "example.com\|TBD\|TODO\|lorem" open-rails/guide open-rails/template.typ
```
Expected: no output from either. (If `grep` is unavailable in PowerShell, use `Select-String -Pattern 'multiplayer|multi-player' -Path open-rails\guide\*` recursively.)

- [ ] **Step 6: User eyeball check (the one human gate)**

Ask the user to open `output/steel-genesis.pdf` and confirm the cover/logo/layout looks right before close-out.

- [ ] **Step 7: Clean up preview files + commit**

```bash
Remove-Item open-rails\output\preview-*.png
git add open-rails/
git commit -m "feat(open-rails): verify PDF render, content presence, footer and link integrity"
```

---

### Task 10: README + STATUS close-out

**Files:**
- Modify: `open-rails/README.md` (full polish)
- Modify: `open-rails/STATUS.md` (close-out)
- Modify: `open-rails/AGENTS.md` (final touches)

- [ ] **Step 1: Finish `README.md`** — title, overview, verified waves table (from Phase 1), install + build instructions, project structure tree, link to design spec.

- [ ] **Step 2: Finish `STATUS.md`** — complete Accepted/Rejected/Conflicts tables, final notes, unresolved items moved to `mod-ideas.md`.

- [ ] **Step 3: Final compile**

Run: `build.bat` — SUCCESS.

- [ ] **Step 4: Commit**

```bash
git add open-rails/
git commit -m "docs(open-rails): finish README and STATUS close-out for Steel Genesis"
```

---

## Self-Review Notes

**Spec coverage mapping:**
- Content system as mod organizer + full install/config instructions → Task 8 (`installation.typ` canonical), Tasks 4–7 mod cards.
- 4 waves, escalating route complexity, roleplay → Tasks 4–7.
- Wave 0 config-as-QoL, no external content → Task 4.
- Wave 2 yard, Wave 3 steam capstone, NO multiplayer → Tasks 6–7 (+ Task 9 grep gate).
- Glossary → Task 8.
- OR dependency model + conflict definition → dependency fields in mod cards; `conflicts-mods.md` defined in Task 2.
- Compatibility rule (loads in 1.6.1, release date not a gate) → Phase 1 policy + STATUS decisions.
- Mod entry format (name+URL, version, deps, impact, notes) → `mod-entry()` (Task 4 Step 1), used in every modlist.
- PDF requirements (cover+logo+page numbers, TOC, install, full guide, glossary) → Task 9 verification steps.
- Build via `build.bat` (Typst 0.15) → Task 2; compiled after every task.
- No fabrication + STATUS traceability → Phase 1 verified table; URL-200 policy; STATUS updates per wave.
- Sourcing contingency → Phase 1 audit findings + named fallbacks + stop conditions.
- Logo usability + typographic fallback → Phase 1 (valid JPEG) + Task 9 Step 6 human gate.

**Type consistency:** `mod-entry(name, url, version: none, deps: none, impact: none, notes: none)` defined once (Task 4 Step 1), used identically in Tasks 5–7. Build target constant: `output/steel-genesis.pdf`. Fonts constant: Cinzel/Bahnschrift/Georgia. URLs consistent with the Phase 1 table throughout.
