# Steel Genesis (Open Rails 1.6.1) Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the "Steel Genesis" Open Rails 1.6.1 modlist + game guide + glossary project (wave-based content manifest, install guide via the built-in Content system, and a colorful Typst 0.15 PDF) with every mod entry verified against a real URL.

**Architecture:** Markdown files for tracking (`STATUS.md`, `conflicts-mods.md`, `mod-ideas.md`) plus Typst source under `guide/` (one `wave-N/` folder per wave with `how-to-play|strategy`, `modlist`, `mechanics`, `content`, `graphics`), assembled by `template.typ` and compiled to `output/steel-genesis.pdf` by `build.bat`. No external content is authored into the repo — the user installs mods manually via the Content system; we curate the manifest + documentation only.

**Tech Stack:** Typst 0.15 (PDF), Windows batch (`build.bat`), web verification via `ctx_fetch_and_index` / websearch / Playwright.

**Non-negotiables:** NO multiplayer anywhere. No fabricated mod names/URLs/versions. Every mod entry must pass a URL-resolution gate before inclusion. Mods must load/run in Open Rails 1.6.1.

---

### Task 1: Audit gates (implementation step 0)

**Files:**
- Create: `open-rails/STATUS.md` (audit findings section)
- Modify: none

**Goal:** Confirm what content actually exists before writing any wave, so the guide is grounded in real, installable content. Record all findings in `STATUS.md` under a `## Audit (2026-08-03)` section.

- [ ] **Step 1: Audit the official OR 1.6.1 content catalogue**

Run in the sandbox (one call, all four fetches):

```javascript
// ctx_execute(language: "javascript")
const urls = [
  "https://openrails.org/download/content/",
  "https://openrails.org/discover/get-started/",
  "https://openrails.org/download/program/",
  "https://openrails.org/discover/version-1-6/"
];
const out = [];
for (const u of urls) {
  try {
    const r = await fetch(u, { method: "HEAD", redirect: "follow" });
    out.push(`${r.status} ${u}`);
  } catch (e) { out.push(`ERR ${u} ${e.message}`); }
}
console.log(out.join("\n"));
```

Expected: four `200` lines. This confirms the catalogue/download pages are live. Then fetch and index the catalogue page and extract the **actual list of routes / train cars / train sets** it exposes (it is a JS-driven page — if the list is empty in the markdown conversion, load it in Playwright and record the visible items).

Acceptance: `STATUS.md` Audit section lists every catalogue item found (name + type), with a note of which are Free vs Donation vs Commercial, and confirms Demo Model 1 is present.

- [ ] **Step 2: Audit the Elvas Tower Open Rails Download Library**

Index the library forum and its route subforums:

```
- https://www.elvastower.com/forums/index.php?/forum/307-open-rails-download-library/
- https://www.elvastower.com/forums/index.php?/forum/395-routes-for-open-rails/
- https://www.elvastower.com/forums/index.php?/forum/393-rio-grande-southern/
- https://www.elvastower.com/forums/index.php?/forum/396-goose-island/
- https://www.elvastower.com/forums/index.php?/forum/408-conrail-fgs/
```

Record in `STATUS.md` Audit section: each subforum's topics and last-post dates. Flag which routes look installable-in-1.6.1 (any thread whose title mentions "for Open Rails" or a 2020+ release).

Acceptance: Audit section lists candidate routes with their thread URLs; at least 2 real candidates identified for Wave 1 and 2.

- [ ] **Step 3: Inspect the logo**

Run: `Get-Item open-rails\assets\logo.jpg | Select-Object Length, @{n='MB';e={[math]::Round($_.Length/1MB,2)}}`

Also open it (read the file as an image) and confirm it is a real, usable logo (not blank/grey). Record dimensions and verdict in `STATUS.md`.

Acceptance: `STATUS.md` states logo verdict: usable or typographic fallback (dimensions/size noted).

- [ ] **Step 4: Verify Typst 0.15 and fonts**

Run: `typst --version` — expect `typst 0.15.1` or `0.15.x`.
Run: `typst fonts | Select-String -Pattern "New Computer Modern"` — confirm the body font exists.

Acceptance: both commands succeed; if "New Computer Modern" is missing, pick and record a fallback font (e.g., "Liberation Serif") in `STATUS.md` and use it in the template.

- [ ] **Step 5: Commit**

```bash
git add open-rails/STATUS.md
git commit -m "chore(open-rails): record Steel Genesis audit findings"
```

---

### Task 2: Project scaffolding

**Files:**
- Create: `open-rails/AGENTS.md`
- Create: `open-rails/README.md` (skeleton, filled fully in Task 9)
- Create: `open-rails/STATUS.md` (tracking headers; audit section already added in Task 1)
- Create: `open-rails/conflicts-mods.md`
- Create: `open-rails/mod-ideas.md`
- Create: `open-rails/build.bat`
- Create: `open-rails/template.typ` (skeleton with cover, footer, TOC, section placeholders wired to real includes)
- Create: `open-rails/guide/installation.typ`, `open-rails/guide/glossary.typ`, and all 20 wave files as empty-but-commented stubs so `template.typ` compiles from Task 2 onward

**Note on compilation order:** `template.typ` must compile at every task. Create all `guide/wave-N/*.typ` files as minimal valid stubs in this task (a `== Wave N` heading), then fill them in Tasks 3–7. `installation.typ` and `glossary.typ` get minimal stubs here too, filled in Task 7.

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

The full steel-blue template. This is the complete file (reused verbatim in later tasks; only the include targets' contents change):

```typst
#set page(
  margin: (x: 2cm, y: 2.5cm),
  footer: context {
    align(center)[
      #counter(page).display(numbering: "1 / 1")
    ]
  },
)

#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.65em, spacing: 0.6em)
#set heading(numbering: none)
#show heading: set block(above: 1.4em, below: 0.5em)

#show heading.where(level: 1): set text(fill: rgb("#3b6ea5"), weight: "bold", size: 22pt)
#show heading.where(level: 2): set text(fill: rgb("#2c3e50"), weight: "bold", size: 16pt)
#show heading.where(level: 3): set text(fill: rgb("#34495e"), weight: "bold", size: 13pt)
#show heading.where(level: 1): it => { it; line(length: 100%, stroke: 0.5pt + rgb("#3b6ea5")) }
#show link: set text(fill: rgb("#3b6ea5"))

// == Cover Page
#v(3.5cm)
#align(center)[#image("assets/logo.jpg", width: 45%)]
#v(3.5cm)
#align(center)[
  #text(size: 36pt, weight: "bold", fill: rgb("#3b6ea5"), "Steel Genesis")
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

- [ ] **Step 3: Create stub includes**

Create each of these files with exactly this shape (so the skeleton compiles):

```typst
// open-rails/guide/wave-0/modlist.typ — filled in Task 3
== Wave 0 Modlist
```
(Repeat for every `guide/wave-{0..3}/{how-to-play|strategy,modlist,mechanics,content,graphics}.typ`, plus `guide/installation.typ` and `guide/glossary.typ`.)

- [ ] **Step 4: Create tracking files**

`STATUS.md` header:

```markdown
# Steel Genesis — STATUS

Target: Open Rails 1.6.1 (released 14 Jan 2026). Mod organizer: built-in Content system.
Mod sources: Elvas Tower Download Library (primary), OR content catalogue, reputable freeware.

## Audit (2026-08-03)
(recorded in Task 1)

## Decisions
- Wave 0 = config-as-QoL; no external content.
- Wave 3 = steam-era named passenger; NO multiplayer.
- Compatibility = loads/runs in 1.6.1 (release date is not a gate).

## Accepted Mods
| Wave | Mod | Source URL | Version/Date | Dependencies | Notes |

## Rejected Mods
| Mod | Reason |

## Conflicts
| Mod A | Mod B | Issue | Mitigation |

## Notes
```

`conflicts-mods.md`:

```markdown
# Conflicting Mods (excluded from PDF)
| Mod A | Mod B | Issue |
```
`mod-ideas.md`:

```markdown
# Future Mod Ideas (excluded from PDF)
- (none yet — populated as unverified candidates arise)
```

- [ ] **Step 5: Create `AGENTS.md`** (project-specific instructions; mirror the sibling's structure, adapted: Content system instead of RPFM, `build.bat` → `output/steel-genesis.pdf`, no-multiplayer rule, verification discipline)

- [ ] **Step 6: Create `README.md` skeleton** (title, overview, waves table, install note, project structure tree, PDF generation — final polish in Task 9)

- [ ] **Step 7: Compile to verify the skeleton builds**

Run: `build.bat`
Expected: SUCCESS, `output/steel-genesis.pdf` created with cover + TOC + section headings, page numbers at bottom.

- [ ] **Step 8: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): scaffold Steel Genesis project with buildable Typst skeleton"
```

---

### Task 3: Wave 0 — The Rookie (how-to-play + config-as-QoL)

**Files:**
- Create: `open-rails/guide/wave-0/how-to-play.typ` (full beginner guide)
- Create: `open-rails/guide/wave-0/modlist.typ` (Demo Model 1 entry)
- Create: `open-rails/guide/wave-0/mechanics.typ`
- Create: `open-rails/guide/wave-0/content.typ`
- Create: `open-rails/guide/wave-0/graphics.typ`
- Modify: `open-rails/STATUS.md` (Wave 0 accepted mods)

**Goal:** A complete, accurate "first day" guide for a complete beginner: install OR 1.6.1, use the built-in Content system to install Demo Model 1, then learn to drive.

- [ ] **Step 1: Define the shared `mod-entry()` function**

Add this function to the top of **every** `wave-N/modlist.typ` (self-contained; do not rely on includes):

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

- [ ] **Step 2: Verify Demo Model 1 details**

From the indexed getting-started page (already fetched): confirm the Content-form install flow and the ~600 MB / diesel-locomotive facts. Record the official GitHub release URL for the 1.6.1 installer: `https://github.com/openrails/openrails/releases/download/1.6.1/Open.Rails.1.6.1.Setup.exe`. Verify it resolves (HTTP 200 via fetch HEAD) and record in `STATUS.md`.

- [ ] **Step 3: Write `how-to-play.typ`**

Content must cover, grounded in the official getting-started steps (see indexed `or-get-started` content):
- Roleplay backstory: fresh hire at a fictional shortline, first day — moving a diesel freight on a training route.
- Installing Open Rails 1.6.1 (Setup.exe) + first launch.
- The Content form: select "Demo Model 1", set Install Path, Install (≈600 MB).
- Start a session: Pause menu → Esc to begin.
- Controls primer: keys `1` (cab), `2` (external), `v` (wipers), `Esc`, `Alt+Enter` (fullscreen/windowed), `Alt+F4` (exit), `F4` (Track Monitor), `F5` (Train Driving Info).
- Driving a diesel: throttle/brake basics, speed limits, why you don't just slam the throttle.
- HUD/QoL configuration walkthrough (the "config as QoL" wave philosophy): graphics settings, HUD windows, camera toggles, controls remap.

Acceptance: every stated key/fact traceable to the official getting-started content; no invented UI features.

- [ ] **Step 4: Write `modlist.typ`**

```typst
== Wave 0 — Modlist: Vanilla + Config-as-QoL
This wave uses only the built-in Content system and Open Rails' own settings. No external content.

== Routes
#mod-entry(
  "Demo Model 1",
  "https://openrails.org/download/content/",
  "Built-in catalogue (v1.6.1)",
  "None — self-contained",
  "Learning route included with the Content system. ~600 MB diesel-freight route used for the Wave 0 tutorial.",
  "Install via the Content form at first launch. Set the Install Path before clicking Install.",
)
```

- [ ] **Step 5: Write `mechanics.typ`, `content.typ`, `graphics.typ`**

- `mechanics.typ`: beginner railroading concepts introduced in Wave 0 (throttle/brake, couplers, track monitor, speed limits) — no content mods.
- `content.typ`: explains the Content system content types (Routes / Train cars / Train sets) and the Free/Donation/Commercial filters.
- `graphics.typ`: built-in graphics options (renderer, superelevation, windowed/fullscreen) — no external graphics mods in Wave 0.

- [ ] **Step 6: Update `STATUS.md`** — add Demo Model 1 to Accepted Mods (Wave 0).

- [ ] **Step 7: Compile + verify**

Run: `build.bat` — expect SUCCESS and the PDF now contains the Wave 0 section with the mod card.

- [ ] **Step 8: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 0 beginner guide with Demo Model 1 entry"
```

---

### Task 4: Wave 1 — The Road Freight (research + content)

**Files:**
- Create: `open-rails/guide/wave-1/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** A verified real route + train set for main-line diesel freight, with a strategy section on signals, train handling, and consists.

- [ ] **Step 1: Research candidate routes (verification gate)**

Candidates to investigate from the Task 1 audit (URLs as recorded): Goose Island, Rio Grande Southern, CRKB Conrail & FG&S, plus any others found in the library scan. For EACH candidate, run a verification fetch:

```
ctx_fetch_and_index(url: "<thread or download URL>", source: "verify-<name>")
```
then record: real existence, download location (Elvas Tower Files section vs forum attachment), release date, dependencies (per the OR dependency model: base assets / scenery / rolling stock / none), and whether community reports indicate it runs on OR 1.6.1.

Acceptance: at least ONE route passes (real URL resolves, 1.6.1-compatible, dependency list known). Failed candidates go to `mod-ideas.md` + `STATUS.md` Rejected.

- [ ] **Step 2: Research a matching train set**

Find a diesel freight train set that works with the chosen route (same railroad / era ideally). Verify URL + release date + dependencies. If none pairs cleanly, choose the route first and note the train-set gap in `mod-ideas.md`.

Acceptance: one train set verified, dependency-compatible with the route.

- [ ] **Step 3: Write the wave files**

- `strategy.typ`: roleplay backstory (promoted to road freight on a fictional Class I regional) + main-line freight strategy: reading signals, throttle discipline, longer consists, basic timetables, brake handling.
- `modlist.typ`: `mod-entry()` cards for the verified route and train set, with real URLs, versions (release dates), dependencies, impact, and install notes (manual zip → Content folder for Elvas Tower content).
- `mechanics.typ`: signals and train handling mechanics; install-order / config notes for the route.
- `content.typ`: what the route adds (tracks, scenery, activities) and what the train set adds.
- `graphics.typ`: visual notes for the route (if any documented), else a short "no changes needed" note.

- [ ] **Step 4: Update `STATUS.md`** — accepted/rejected mods for Wave 1; any conflicts.

- [ ] **Step 5: Compile + verify**

Run: `build.bat` — SUCCESS; PDF shows the Wave 1 section with real linked mod cards. Click-check at least one URL resolves (HTTP 200).

- [ ] **Step 6: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 1 road-freight guide with verified route + train set"
```

---

### Task 5: Wave 2 — The Yard (research + content)

**Files:**
- Create: `open-rails/guide/wave-2/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** A yard/switching-focused route and rolling stock, with a strategy section on shunting ops.

- [ ] **Step 1: Research a yard/switching route + switcher locomotive**

Same verification gate as Task 4 Step 1. Prefer routes/stock whose material emphasizes switching (industries, runaround tracks). If the chosen Elvas Tower library route covers a yard, it can be reused here **only if** it was not already installed in Wave 1 (no redundant installs; otherwise pick a new route).

Acceptance: route + switcher train set verified (URL resolves, 1.6.1-compatible, dependencies known).

- [ ] **Step 2: Write the wave files**

- `strategy.typ`: roleplay backstory (yard foreman assignment) + switching strategy: coupler work, runaround moves, industry spotting, working limits, yard signals.
- `modlist.typ`: verified entries via `mod-entry()`.
- `mechanics.typ`: coupling, uncoupling, reversing moves, handbrakes — mechanics the Wave 1 player hasn't touched.
- `content.typ` / `graphics.typ`: as per Task 4 Step 3 pattern.

- [ ] **Step 3: Update `STATUS.md`**

- [ ] **Step 4: Compile + verify**

Run: `build.bat` — SUCCESS.

- [ ] **Step 5: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 2 yard-operations guide with verified route + switcher"
```

---

### Task 6: Wave 3 — The Limited (research + content)

**Files:**
- Create: `open-rails/guide/wave-3/{strategy,modlist,mechanics,content,graphics}.typ`
- Modify: `open-rails/STATUS.md`

**Goal:** Steam-era named passenger service — demanding timetable running with heavy AI traffic. **No multiplayer, no multiplayer references anywhere.**

- [ ] **Step 1: Research steam locomotive + passenger consists + a suitable route**

Same verification gate as Task 4 Step 1. Look for a steam loco + passenger car set (freeware) and a route that suits passenger service. If the audit found no steam-era route, fall back to modern diesel passenger and log the substitution in `STATUS.md` (per spec).

Acceptance: at least a verified steam loco + passenger stock set; route either verified or the diesel-passenger fallback logged.

- [ ] **Step 2: Write the wave files**

- `strategy.typ`: roleplay backstory (senior engineer given a named limited) + timetable strategy: station stops, punctuality, steam firing/basic handling, reading the schedule, heavy AI traffic awareness.
- `modlist.typ`: verified entries via `mod-entry()`.
- `mechanics.typ`: steam-era mechanics (if steam), passenger operations (station stops, dwell), timetable running.
- `content.typ` / `graphics.typ`: as per Task 4 Step 3 pattern.

- [ ] **Step 3: Update `STATUS.md`**

- [ ] **Step 4: Compile + verify**

Run: `build.bat` — SUCCESS.

- [ ] **Step 5: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): write Wave 3 steam-era limited guide with verified content"
```

---

### Task 7: Installation guide + glossary

**Files:**
- Create: `open-rails/guide/installation.typ` (full Content-system install guide)
- Create: `open-rails/guide/glossary.typ` (OR + railroading glossary)

- [ ] **Step 1: Write `installation.typ`**

Full installation and configuration instructions for the **built-in Content system** (the mandated mod organizer):

1. Download & install Open Rails 1.6.1 (official release URL verified in Task 3).
2. First launch → the Content form appears.
3. Browse the catalogue: Routes / Train cars / Train sets; filter Free / Donation / Commercial.
4. Select an item, set the Install Path, click Install (self-installing; Demo Model 1 ≈600 MB).
5. Manual install for community content (Elvas Tower etc.): download the zip → extract into the Content folder → verify the item appears in the Content form / route list.
6. Configure: graphics (renderer, windowed/fullscreen, superelevation), HUD windows, controls, telemetry opt-out note if applicable.
7. Per-wave install order: activate/install in wave order; never install a wave's content before finishing the previous wave's tutorial (Wave 0 first).

- [ ] **Step 2: Write `glossary.typ`**

Alphabetized glossary of every term used in the guide: cab, consist, coupler, handbrake, HUD, track monitor, signal, timetable, throttle, yard/switching, runaround, industry spotting, superelevation, Content form, Install Path, etc. Each entry: term + 1–2 sentence definition. No fabricated terms.

- [ ] **Step 3: Compile + verify**

Run: `build.bat` — SUCCESS; verify glossary renders at the end of the PDF.

- [ ] **Step 4: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): add Content-system install guide and glossary"
```

---

### Task 8: PDF polish + final build verification

**Files:**
- Modify: `open-rails/template.typ` (if polish needed)
- Modify: `open-rails/build.bat` (if needed)
- Verify: `open-rails/output/steel-genesis.pdf`

- [ ] **Step 1: Review the compiled PDF**

Open `output/steel-genesis.pdf` and verify the task-required elements:
1. Cover page with modlist name + `assets/logo.jpg` + page numbers at the bottom.
2. Top-level table of contents.
3. Full installation instructions (Content system).
4. Complete guide + modlist (all 4 waves).
5. Glossary at the end.

Fix any rendering issues (heading colors, mod-card layout, TOC depth, cover spacing) directly in `template.typ`.

- [ ] **Step 2: Verify link integrity of all mod entries**

For every URL used in any `modlist.typ`, run a HEAD fetch and confirm HTTP 200. Any dead link must be fixed or the entry moved to `mod-ideas.md` before completion.

- [ ] **Step 3: Rebuild clean**

Run: `build.bat` from a fresh console; confirm exit 0 and that `output/steel-genesis.pdf` exists and is non-trivial (> 100 KB).

- [ ] **Step 4: Final review pass against constraints**

Grep the `guide/` folder for forbidden content:
```
grep -ri "multiplayer\|multi-player\|steam multiplayer" open-rails/guide open-rails/template.typ
```
Expected: no matches. Also confirm no `example.com` or placeholder URLs remain: `grep -ri "example.com\|TBD\|TODO\|lorem" open-rails/guide open-rails/template.typ`

- [ ] **Step 5: Commit**

```bash
git add open-rails/
git commit -m "feat(open-rails): finalize PDF layout and verify all mod links"
```

---

### Task 9: README + final close-out

**Files:**
- Modify: `open-rails/README.md` (full polish)
- Modify: `open-rails/STATUS.md` (final decisions/rejections summary)
- Modify: `open-rails/AGENTS.md` (final touches if needed)

- [ ] **Step 1: Finish `README.md`**

Title, overview, waves table, install + build instructions, project structure, link to the design spec. Ensure it reflects the final wave titles used in the guide.

- [ ] **Step 2: Finish `STATUS.md`**

Close out: full Accepted/Rejected/Conflicts tables, final notes, and any unresolved items pushed to `mod-ideas.md`.

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
- Built-in Content system as mod organizer + full install/config instructions → Tasks 2, 3 (mod-entry + install flow), 7 (installation.typ).
- 4 waves, escalating route complexity, roleplay backstories → Tasks 3–6.
- Wave 0 config-as-QoL, no external content → Task 3.
- Wave 2 = pure yard ops, Wave 3 = steam-era passenger, NO multiplayer → Tasks 5, 6 (+ Task 8 grep gate).
- Glossary → Task 7.
- OR-specific dependency model + conflict definition → Tasks 4–6 steps writing deps/notes; conflicts tracked in `STATUS.md`/`conflicts-mods.md`.
- Compatibility rule (loads in 1.6.1, release date not a gate) → verification gates in Tasks 1, 4–6.
- Mod entry format (name+URL, version, deps, impact, notes) → `mod-entry()` in Task 3 and used everywhere.
- PDF requirements (cover+logo+page numbers, TOC, install, full guide) → Task 8 Step 1.
- Build via `build.bat` (Typst 0.15) → Task 2, verified every task.
- No fabrication + STATUS.md traceability → every content task; `STATUS.md` updated each wave.
- Audit gates (catalogue, Elvas library, logo, typst/font) → Task 1.

**Type consistency:** `mod-entry()` signature is defined once in Task 3 (`name, url, version, deps, impact, notes` with `none`-tolerant args) and used identically in Tasks 4–6. `build.bat` target constant: `output/steel-genesis.pdf`.
