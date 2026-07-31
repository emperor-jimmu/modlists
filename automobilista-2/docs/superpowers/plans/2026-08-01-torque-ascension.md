# Torque Ascension Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build the Torque Ascension AMS2 modlist framework — all boilerplate, guide content, Typst templates, and build pipeline. Mod entries are stubs (pending user-provided mod list).

**Architecture:** Markdown files rendered via Typst `cmarker` v0.1.10. Typst `style.typ` defines reusable components (mod-panel, wave-banner, callout). `guide.typ` imports style + renders each `.md` via cmarker's `render(read("..."))`. PowerShell build script handles font download, version reading, and compile.

**Tech Stack:** Typst 0.15.1, cmarker v0.1.10, PowerShell 7+, Montserrat/Inter/JetBrains Mono (auto-downloaded by build script)

**Verification strategy:** Compile PDF after every guide file is written. Each task's final step is `typst compile` — if it fails, stop and fix before next task.

**Version:** Single source of truth — `VERSION` file. Build script and template read it; nothing hardcodes it.

---

### Task 1: Scaffold directories + boilerplate

**Files:**
- Create: `automobilista-2/.gitignore`
- Create: `automobilista-2/VERSION`
- Create: `automobilista-2/STATUS.md`
- Create: `automobilista-2/mod-ideas.md`
- Create: `automobilista-2/conflicts-mods.md`
- Create: `automobilista-2/README.md`
- Create: `automobilista-2/AGENTS.md`

**Depends on:** Nothing.

- [ ] **Step 1: Create directories**

```powershell
New-Item -ItemType Directory -Force -Path automobilista-2/guide, automobilista-2/templates, automobilista-2/scripts, automobilista-2/output, automobilista-2/assets/screenshots, automobilista-2/assets/fonts, automobilista-2/docs/superpowers/specs, automobilista-2/docs/superpowers/plans
```

- [ ] **Step 2: Write .gitignore**

```gitignore
output/
*.pdf
```

- [ ] **Step 3: Write VERSION**

```
1.0.0
```

- [ ] **Step 4: Write STATUS.md**

Decision log with table columns: Date | Decision | Rationale, plus Approval Log, Rejected, Conflicts tables. All empty except the initial design decisions from the spec (wave structure, AMS2CM choice, DLC policy, quality curation, Typst+cmarker, light theme, mods-provided-later).

- [ ] **Step 5: Write mod-ideas.md**

```markdown
# Mod Ideas
Future candidates. Graduate to STATUS.md after verification.

| Mod | Source | Notes |
|-----|--------|-------|
| - | - | Awaiting exploration |
```

- [ ] **Step 6: Write conflicts-mods.md**

```markdown
# Conflicts
Not included in PDF.

| Mod A | Mod B | Conflict | Resolution | Date |
|-------|-------|----------|------------|------|
| - | - | - | - | - |
```

- [ ] **Step 7: Write README.md**

Quick-start: structure overview, generate-pdf command, prerequisites (Typst 0.15.1+, fonts auto-downloaded by script).

- [ ] **Step 8: Write AGENTS.md**

Mission, 5 design pillars (career progression, quality curation, print-first, no fabrication, beginner-friendly), file layout table, wave structure table, mod entry format spec, 6-step research pipeline, conventions.

- [ ] **Step 9: Commit**

```powershell
git add automobilista-2/
git commit -m "feat: project scaffolding"
```

---

### Task 2: Write + test Typst style template

**Files:**
- Create: `automobilista-2/templates/style.typ`
- Create: `automobilista-2/templates/test.typ` (throwaway — deleted after verification)

**Depends on:** Task 1.

- [ ] **Step 1: Write style.typ**

Typst module defining: font constants (Montserrat/Inter/JetBrains Mono with system-font fallbacks), color palette (white bg, `#cc2936` red, `#1d3557` blue, `#f4a261` orange, `#2a9d8f` green, `#6a4c93` purple, `#f8f8f8` panel bg), page defaults, heading show rules, table show rules, and six reusable functions:

1. `wave-banner(number, title, subtitle)` — full-width red block with white text
2. `story-intro(body)` — italic blockquote with red left-border
3. `category-color(category)` — maps category string to hex color
4. `mod-panel(...)` — styled box with colored left border, category badge, metadata grid, description sections
5. `callout(type, body)` — tip/warn/note box with colored left border and icon
6. `cover-page(title, subtitle, version-text, logo-path)` — centered layout with logo, title, accent line, version badge
7. `completion-checklist(items)` — blue-bordered box with checklist header

- [ ] **Step 2: Write test.typ (temporary)**

```typst
#import "style.typ": *

#cover-page("Test", "Subtitle", "V1.0.0", "../assets/logo.jpg")
#pagebreak()
#outline()
#pagebreak()
#wave-banner(0, "Rookie License", "Test banner")
#story-intro[lorem(50)]
#mod-panel(category: "Skins/Liveries", name: "Test Mod", version: "v1.0", url: "https://example.com", wave: "1", what: "Test description", why: "Test rationale", notes: "Test notes")
#callout(type: "tip")[This is a tip]
#callout(type: "warn")[This is a warning]
#completion-checklist[☐ Test item 1
☐ Test item 2]
```

- [ ] **Step 3: Compile test PDF**

```powershell
Push-Location automobilista-2/templates
try { typst compile test.typ ../output/test.pdf } finally { Pop-Location }
```

- [ ] **Step 4: Verify test.pdf renders correctly, delete test.typ**

```powershell
Remove-Item automobilista-2/templates/test.typ
Remove-Item automobilista-2/output/test.pdf
```

- [ ] **Step 5: Commit**

```powershell
git add automobilista-2/templates/style.typ
git commit -m "feat: Typst style template with verified components"
```

---

### Task 3: Write build script

**Files:**
- Create: `automobilista-2/scripts/generate-pdf.ps1`

**Depends on:** Task 1.

- [ ] **Step 1: Write generate-pdf.ps1**

PowerShell script that:
1. Reads version from `VERSION` file (no hardcoded version)
2. Checks `typst --version` is installed; exits with message if not
3. Checks for fonts in `assets/fonts/`; if missing, downloads from Google Fonts CDN (Montserrat, Inter, JetBrains Mono) using `Invoke-WebRequest`
4. Creates `output/` directory if needed
5. Uses `Push-Location` with `try/finally` around the compile step to prevent directory leaks
6. Runs `typst compile guide.typ "$outputDir/torque-ascension-v$Version.pdf"` from `templates/`
7. Prints file path and size on success; opens output directory
8. Exits with code 1 on any failure

Reject any variable with spaces (all subexpressions wrapped in `"..."`). Font download URLs: Google Fonts CDN paths for each font's regular + bold weight .ttf files.

- [ ] **Step 2: Test script runs without errors**

```powershell
automobilista-2/scripts/generate-pdf.ps1
```

Expected: "Typst found: ..." then "ERROR: Typst compilation failed" (guide.typ doesn't exist yet). This validates the script up to the compile step.

- [ ] **Step 3: Commit**

```powershell
git add automobilista-2/scripts/generate-pdf.ps1
git commit -m "feat: build script with font auto-download and version-from-file"
```

---

### Task 4: Write + test cmarker bridge (guide.typ)

**Files:**
- Create: `automobilista-2/templates/guide.typ`
- Create: `automobilista-2/guide/_test.md` (throwaway)

**Depends on:** Tasks 2, 3

- [ ] **Step 1: Verify cmarker is installable**

```powershell
Push-Location automobilista-2/templates
try {
    # cmarker will be auto-downloaded by typst on first compile
    New-Item -Path ../guide/_test.md -Value "# Test Heading`n`nTest paragraph with **bold** and *italic*." -Force
    Set-Content -Path ./guide.typ -Value '#import "@preview/cmarker:0.1.10"`n#import "style.typ": *`n`n#cover-page("Torque Ascension", "Test", "V1.0.0", "../assets/logo.jpg")`n#cmarker.render(read("../guide/_test.md"))'
    typst compile guide.typ ../output/_test.pdf
} finally {
    Pop-Location
}
```

- [ ] **Step 2: Verify _test.pdf renders markdown correctly**

Check the PDF has styled heading, bold, and italic text. If cmarker fails to install or render, investigate alternative (write Typst markup directly instead of markdown).

- [ ] **Step 3: Clean up throwaway files**

```powershell
Remove-Item automobilista-2/guide/_test.md
Remove-Item automobilista-2/output/_test.pdf
Remove-Item automobilista-2/templates/guide.typ
```

- [ ] **Step 4: Commit**

```powershell
git commit -m "verify: cmarker v0.1.10 renders markdown correctly"
```

---

### Task 5: Write install guide + glossary

**Files:**
- Create: `automobilista-2/guide/00-install.md`
- Create: `automobilista-2/guide/appendix-glossary.md`
- Modify: `automobilista-2/templates/guide.typ` — add renders for these two files

**Depends on:** Task 4

- [ ] **Step 1: Write 00-install.md**

Covers: System requirements, Steam install + update verification, DLC recommendation table (per-wave), AMS2CM download + install + feature overview + workflow, SimHub optional install, initial game config (controls, graphics, assists table), launch verification. ~200 lines. No mods section.

- [ ] **Step 2: Write appendix-glossary.md**

A-Z racing terminology. 80-100 terms covering: ABS, apex, bootfile, brake bias, camber, chicane, differential, dirty air, downforce, DRS, DLC, endurance, ERS, FFB, formula vee, graining, GT3/GT4, GTP, heel-and-toe, IMSA, LMDh, marbles, multi-class, oversteer/understeer, pit stop, qualifying, racing line, Reiza, setup, SimHub, sprint race, stint, TC, telemetry, test day, threshold braking, tow, trail braking, track limits, tyre compound, VSC, WEC, wet line, wheelspin, wing. Each term: 1-3 sentence definition.

- [ ] **Step 3: Write guide.typ**

```typst
#import "@preview/cmarker:0.1.10"
#import "style.typ": *

// Read version from file
#let version = read("../VERSION").trim()

#cover-page(
  title: "Torque Ascension",
  subtitle: "An Automobilista 2 Modlist & Career Guide",
  version-text: "V" + version + " — AMS2 V1.6+",
  logo-path: "../assets/logo.jpg",
)

#pagebreak()
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#cmarker.render(read("../guide/00-install.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-glossary.md"))
```

- [ ] **Step 4: Compile and verify**

```powershell
Push-Location automobilista-2/templates
try { typst compile guide.typ ../output/_wip.pdf } finally { Pop-Location }
```

Open `_wip.pdf` — check: cover renders, TOC has two entries, install guide renders correctly, glossary terms are readable.

- [ ] **Step 5: Commit**

```powershell
git add automobilista-2/guide/00-install.md automobilista-2/guide/appendix-glossary.md automobilista-2/templates/guide.typ
git commit -m "feat: install guide + glossary + cmarker bridge"
```

---

### Task 6: Write Wave 0 + Wave 1 guide chapters

**Files:**
- Create: `automobilista-2/guide/01-wave-0-rookie.md`
- Create: `automobilista-2/guide/02-wave-1-national.md`
- Modify: `automobilista-2/templates/guide.typ` — add renders for these two files

**Depends on:** Task 5

- [ ] **Step 1: Write 01-wave-0-rookie.md**

Sections:
- Wave overview (short paragraph)
- Assists configuration table
- Three training cars: Rental Kart (momentum, no gears), Formula Trainer (manual gears intro), Formula Vee (rear-engine challenge)
- Session types: Test Day (learning), Time Trial (measuring), Race Weekend (competing)
- "Your First Lap" — 5-step walkthrough: track walk, out lap, build speed gradually, racing line diagram, braking technique
- First race config table (Velo Citta, 5 laps, AI 50)
- Post-race analysis steps
- Mod section: `<!-- MODS: Pending — Essential HUD/UI mods -->`
- Completion checklist (5 items)

Short roleplay intro: 2-3 sentence epigraph only. Keep concise.

- [ ] **Step 2: Write 02-wave-1-national.md**

Sections:
- Assists reduction table (wave 0 vs wave 1)
- Car classes: GT4 (handling, cars to try, tracks), P4 prototypes (no aids, lightweight), Copa Classics (heavy V8, momentum)
- Tyre + fuel management basics
- Racecraft: overtaking (4 rules), defending (4 rules), driving in traffic (3 tips)
- First 10-lap race config (GT4 at Cascavel, AI 70)
- Mod section: `<!-- MODS: Pending — Skin packs, additional tracks, SimHub overlays -->`
- Completion checklist (5 items)

- [ ] **Step 3: Update guide.typ** — add renders after glossary:

```typst
#pagebreak()
#cmarker.render(read("../guide/01-wave-0-rookie.md"))
#pagebreak()
#cmarker.render(read("../guide/02-wave-1-national.md"))
```

- [ ] **Step 4: Compile and verify**

```powershell
Push-Location automobilista-2/templates
try { typst compile guide.typ ../output/_wip.pdf } finally { Pop-Location }
```

Verify: TOC has all 4 chapters, wave content renders, tables are readable, no cmarker errors.

- [ ] **Step 5: Commit**

```powershell
git add automobilista-2/guide/01-wave-0-rookie.md automobilista-2/guide/02-wave-1-national.md automobilista-2/templates/guide.typ
git commit -m "feat: Wave 0 + Wave 1 chapters"
```

---

### Task 7: Write Wave 2 + Wave 3 guide chapters

**Files:**
- Create: `automobilista-2/guide/03-wave-2-international.md`
- Create: `automobilista-2/guide/04-wave-3-championship.md`
- Modify: `automobilista-2/templates/guide.typ` — add renders for these two files

**Depends on:** Task 6

- [ ] **Step 1: Write 03-wave-2-international.md**

Sections: Assists reduction (TC low/off, stability off, manual gears, racing line off, damage on), car classes (GT3 with 5 cars + 4 tracks, F3 with 4 tracks, Stock Car Brasil with 4 tracks, Group C with 3 tracks + respect warning), telemetry workflow (key channels table, analysis loop), endurance intro (45-min config, fuel calc, tyre degradation, weather strategy). Mod stub. Completion checklist (5 items).

- [ ] **Step 2: Write 04-wave-3-championship.md**

Sections: Final assists (all off, full damage, authentic wear), car classes (Formula Ultimate Gen 2 + ERS/DRS/compounds, LMDh/GTP + hybrid + multi-class, Historic F1 with 4 eras and specific cars), setup engineering (workflow, priority order table, track-specific examples for Monza/Monaco/Spa), multi-class endurance (2-4 hour config, traffic management for LMDh, being lapped as GT3), championship season setup. Mod stub (largest — career apps, pro dashboards, historic skins, car mods). Mastery checklist (8 items). Post-Wave-3 "what's next" section (online racing, iRacing, real track days, coaching, hardware).

- [ ] **Step 3: Update guide.typ** — add renders after Wave 1, then final chapter:

```typst
#pagebreak()
#cmarker.render(read("../guide/03-wave-2-international.md"))
#pagebreak()
#cmarker.render(read("../guide/04-wave-3-championship.md"))
```

- [ ] **Step 4: Compile and verify**

```powershell
Push-Location automobilista-2/templates
try { typst compile guide.typ ../output/_wip.pdf } finally { Pop-Location }
```

- [ ] **Step 5: Commit**

```powershell
git add automobilista-2/guide/03-wave-2-international.md automobilista-2/guide/04-wave-3-championship.md automobilista-2/templates/guide.typ
git commit -m "feat: Wave 2 + Wave 3 chapters"
```

---

### Task 8: Write mod reference appendix + finalize guide.typ

**Files:**
- Create: `automobilista-2/guide/appendix-mod-reference.md`
- Modify: `automobilista-2/templates/guide.typ` — add render, add screenshot references, add cross-links

**Depends on:** Task 7

- [ ] **Step 1: Write appendix-mod-reference.md**

Sections:
- Mod summary table (placeholder row: "No mods configured")
- Mods by wave (4 subsections, each with placeholder text)
- DLC reference table (all AMS2 V1.6 DLC with content description and wave relevance)

- [ ] **Step 2: Finalize guide.typ** — complete file:

```typst
#import "@preview/cmarker:0.1.10"
#import "style.typ": *

#let version = read("../VERSION").trim()

#cover-page(
  title: "Torque Ascension",
  subtitle: "An Automobilista 2 Modlist & Career Guide",
  version-text: "V" + version + " — AMS2 V1.6+",
  logo-path: "../assets/logo.jpg",
)

#pagebreak()
#outline(title: [Table of Contents], depth: 3)
#pagebreak()

#cmarker.render(read("../guide/00-install.md"))
#pagebreak()
#cmarker.render(read("../guide/01-wave-0-rookie.md"))
#pagebreak()
#cmarker.render(read("../guide/02-wave-1-national.md"))
#pagebreak()
#cmarker.render(read("../guide/03-wave-2-international.md"))
#pagebreak()
#cmarker.render(read("../guide/04-wave-3-championship.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-mod-reference.md"))
#pagebreak()
#cmarker.render(read("../guide/appendix-glossary.md"))
```

- [ ] **Step 3: Full PDF compile**

```powershell
automobilista-2/scripts/generate-pdf.ps1
```

Expected: PDF generated, opens output directory. Verify all 8 sections render, TOC has all headings, tables readable, no page layout issues.

- [ ] **Step 4: Commit**

```powershell
git add automobilista-2/guide/appendix-mod-reference.md automobilista-2/templates/guide.typ
git commit -m "feat: mod reference appendix + finalized guide.typ"
```

---

### Task 9: Final verification + cleanup

**Files:**
- No new files. Verify all existing.

**Depends on:** Task 8

- [ ] **Step 1: Run generate-pdf.ps1 from scratch**

```powershell
Remove-Item automobilista-2/output/_wip.pdf -ErrorAction SilentlyContinue
automobilista-2/scripts/generate-pdf.ps1
```

- [ ] **Step 2: Check for:**
   - No cmarker warnings or errors in typst output
   - All pagebreaks honored (each chapter starts on new page)
   - Cover page has page number, logo, version, subtitle
   - TOC lists all sections
   - Tables render correctly (no broken rows, text fits columns)
   - Mod stubs marked with `<!-- MODS: Pending -->` are visible in rendered output
   - Fonts rendered correctly (if downloaded, Montserrat/Inter visible)

- [ ] **Step 3: Verify directory tree matches spec**

```powershell
Get-ChildItem -Recurse automobilista-2/ -Name | Where-Object { $_ -notmatch '\\\.git\\|node_modules|\.playwright|output\\' } | Sort-Object
```

Should match the spec structure exactly.

- [ ] **Step 4: Final commit**

```powershell
git add automobilista-2/
git status
git commit -m "feat: Torque Ascension v1.0.0 — complete framework"
```
