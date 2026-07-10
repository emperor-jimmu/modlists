# Cyberpunk 2077 Modlist — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create the modlist repository scaffolding: directory structure, boilerplate files for all 19 categories, research tracker, mod ideas tracker, AGENTS.md, README.md, .gitignore, and a PDF generator script.

**Architecture:** Repository is a flat documentation tree — 19 Markdown category files under `modlist/`, a `research/` directory for candidate evaluation, a `mods-to-develop.md` for original ideas, a `scripts/` directory for the PDF generator, and root-level `README.md` and `AGENTS.md`.

**Tech Stack:** Markdown, Python 3 (for PDF generator via markdown + weasyprint or similar)

---

## File Structure

```
cyberpunk-2077-modlist/
├── README.md
├── AGENTS.md
├── .gitignore
├── modlist/
│   ├── 01-mo2-setup-and-tools.md
│   ├── 02-core-utilities.md
│   ├── 03-bug-fixes.md
│   ├── 04-ui-and-hud.md
│   ├── 05-gameplay-overhaul.md
│   ├── 06-living-world.md
│   ├── 07-quests-and-stories.md
│   ├── 08-relationships-and-romance.md
│   ├── 09-collectibles-and-exploration.md
│   ├── 10-appearance-and-character.md
│   ├── 11-clothing-and-fashion.md
│   ├── 12-armor-and-gear.md
│   ├── 13-weapons.md
│   ├── 14-apartments-and-housing.md
│   ├── 15-vehicles-and-transport.md
│   ├── 16-locations-and-world-expansion.md
│   ├── 17-visuals-and-atmosphere.md
│   ├── 18-audio-and-music.md
│   └── 19-performance-and-optimization.md
├── research/
│   └── mods-to-investigate.md
├── mods-to-develop.md
└── scripts/
    └── generate-pdf.py
```

**Each category file has one responsibility:** document the mods for that category, with install order, per the mod entry template.

---

### Task 1: Create Directory Structure

**Files:**

- Create: `modlist/`
- Create: `research/`
- Create: `scripts/`

- [ ] **Step 1: Create directories**

Run:

```powershell
New-Item -ItemType Directory -Path "H:\Projects\cyberpunk-2077-modlist\modlist" -Force
New-Item -ItemType Directory -Path "H:\Projects\cyberpunk-2077-modlist\research" -Force
New-Item -ItemType Directory -Path "H:\Projects\cyberpunk-2077-modlist\scripts" -Force
```

Expected: Directories created. All succeed without error.

- [ ] **Step 2: Verify directories exist**

Run:

```powershell
Get-ChildItem -Directory -Path "H:\Projects\cyberpunk-2077-modlist" | Select-Object Name
```

Expected: `modlist`, `research`, `scripts` listed.

- [ ] **Step 3: Commit**

```bash
git add modlist/ research/ scripts/
git commit -m "chore: create directory structure"
```

---

### Task 2: Create .gitignore

**Files:**

- Create: `.gitignore`

- [ ] **Step 1: Write .gitignore**

```gitignore
# Windows
Thumbs.db
Desktop.ini

# Temp files
*.tmp
*.bak
~$*

# Python
__pycache__/
*.pyc
.venv/
venv/

# PDF output (generated artifact)
*.pdf
```

- [ ] **Step 2: Verify the file exists and has content**

Run:

```powershell
Get-Content "H:\Projects\cyberpunk-2077-modlist\.gitignore"
```

Expected: All lines from the content above appear.

- [ ] **Step 3: Commit**

```bash
git add .gitignore
git commit -m "chore: add .gitignore"
```

---

### Task 3: Create AGENTS.md

**Files:**

- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

```markdown
# AGENTS.md — Cyberpunk 2077 Modlist

## Project Purpose

A curated, performance-conscious modlist and guide for Cyberpunk 2077 (v2.31,
v2.3-compatible), organized via Mod Organizer 2. Focused on RPG depth, living
world, collectibles, and meaningful relationships.

## File Structure

- `modlist/` — 19 categorized mod guides with install order
- `research/` — Candidate mods under investigation
- `mods-to-develop.md` — Original mod ideas (mods that don't exist yet)
- `scripts/` — PDF generator and utilities

## Mod Entry Rules

Every mod added to a category file MUST include all these fields:

```markdown
### Mod Name
- **Nexus:** URL
- **Version:** x.y.z
- **Released:** YYYY-MM-DD
- **Summary:** One-line description
- **Why:** How it serves the modlist goals
- **Conflicts:** Known conflicts
- **Dependencies:** Required mods and load-order position
- **MO2 Notes:** Install instructions, FOMOD choices, merge guidance
- **Performance:** None | Light | Moderate | Heavy
```

Rules:

- Always search Nexus Mods for the latest version before adding a mod
- Conflicts and dependencies MUST be cross-referenced across category files
- Mods are listed in recommended install order within each category
- Performance tags must be accurate — test if unsure

## Terminology

- **MO2** — Mod Organizer 2
- **CET** — Cyber Engine Tweaks
- **REDmod** — CDPR's official modding toolkit
- **RED4ext** — Native plugin loader
- **ArchiveXL** — Archive expansion framework
- **TweakXL** — TweakDB modification framework
- **Codeware** — UI scripting runtime

## Design Philosophy

- **No "cheat" mods** — no free items, no vendor price hacks, no unlimited carry
  weight, no mechanics removal
- Mods must enhance depth, not remove friction
- Survival/immersion features should add challenge, not bypass it
- When a mod offers both cheat and balanced options, only the balanced config is
  used and documented
- Prefer mods that are actively maintained and version-compatible with v2.31

## Research Workflow

1. Discover mods on Nexus Mods
2. Add to `research/mods-to-investigate.md` with status `candidate`
3. Research: check comments, bug reports, compatibility, design fit
4. Update status: `testing` → `approved` or `rejected`
5. Approved mods move from research to the correct category file
6. Rejected mods STAY in the research file — add rejection reason, never delete

## Commit Conventions

- `feat:` — new mod added to a category
- `research:` — mod added/updated in research file
- `idea:` — new entry in mods-to-develop.md
- `chore:` — infrastructure, formatting, template changes
- `fix:` — correction to mod info, conflicts, versions

```

- [ ] **Step 2: Commit**

```bash
git add AGENTS.md
git commit -m "chore: add AGENTS.md"
```

---

### Task 4: Create README.md

**Files:**

- Create: `README.md`

- [ ] **Step 1: Write README.md**

```markdown
# Cyberpunk 2077 Modlist

A curated, performance-conscious modlist for **Cyberpunk 2077 v2.31**
(v2.3-compatible), organized via Mod Organizer 2.

## Goals

- Transform Cyberpunk 2077 into a **deep RPG**, not an action game
- **Living world** with daily activities, survival-lite features, NPC routines,
  and meaningful interactivity
- **Abundant collectibles** and exploration rewards
- **Meaningful relationships** — expanded romance and companion systems
- **Playable performance** — detailed optimization guide included

## Requirements

- Cyberpunk 2077 v2.31 (with Phantom Liberty)
- All DLCs
- Mod Organizer 2 ([download](https://www.nexusmods.com/skyrimspecialedition/mods/6194))
- Windows 10/11 64-bit

## Hardware

See the [Performance & Optimization guide](modlist/19-performance-and-optimization.md)
for detailed hardware recommendations and benchmarks.

## Quick Start

1. Install [Mod Organizer 2](https://www.nexusmods.com/skyrimspecialedition/mods/6194)
2. Follow the category files in order: 01 through 19
3. Each category lists mods in recommended install order
4. Run the game through MO2

## Categories

| #  | Category                                                                   | Focus                                     |
|----|----------------------------------------------------------------------------|-------------------------------------------|
| 01 | [MO2 Setup & Tools](modlist/01-mo2-setup-and-tools.md)                     | Prerequisites, launch workflow            |
| 02 | [Core Utilities](modlist/02-core-utilities.md)                             | Script extenders, frameworks, libraries   |
| 03 | [Bug Fixes](modlist/03-bug-fixes.md)                                       | Quest fixes, animation fixes, world holes |
| 04 | [UI & HUD](modlist/04-ui-and-hud.md)                                       | Interface, menus, minimap, inventory      |
| 05 | [Gameplay Overhaul](modlist/05-gameplay-overhaul.md)                       | RPG systems, combat, loot, crafting       |
| 06 | [Living World](modlist/06-living-world.md)                                 | Daily activities, survival, immersion     |
| 07 | [Quests & Stories](modlist/07-quests-and-stories.md)                       | New quests, expanded storylines, gigs     |
| 08 | [Relationships & Romance](modlist/08-relationships-and-romance.md)         | Romance systems, companions               |
| 09 | [Collectibles & Exploration](modlist/09-collectibles-and-exploration.md)   | Hidden items, secrets                     |
| 10 | [Appearance & Character](modlist/10-appearance-and-character.md)           | Body mods, skin, hair, cyberware visuals  |
| 11 | [Clothing & Fashion](modlist/11-clothing-and-fashion.md)                   | Clothing pieces, sets, virtual ateliers   |
| 12 | [Armor & Gear](modlist/12-armor-and-gear.md)                               | Armor pieces, gear sets, transmog         |
| 13 | [Weapons](modlist/13-weapons.md)                                           | New weapons, attachments, optics          |
| 14 | [Apartments & Housing](modlist/14-apartments-and-housing.md)               | New apartments, customization             |
| 15 | [Vehicles & Transport](modlist/15-vehicles-and-transport.md)               | Driving, new vehicles, customization      |
| 16 | [Locations & World Expansion](modlist/16-locations-and-world-expansion.md) | New areas, open buildings                 |
| 17 | [Visuals & Atmosphere](modlist/17-visuals-and-atmosphere.md)               | Lighting, weather, LUTs, textures         |
| 18 | [Audio & Music](modlist/18-audio-and-music.md)                             | Sound overhaul, custom radio              |
| 19 | [Performance & Optimization](modlist/19-performance-and-optimization.md)   | Benchmarks, settings, tools               |

## Design Philosophy

This modlist will **never** include:

- Cheat mods (free items, unlimited carry weight, price hacks)
- Mods that remove game mechanics rather than enhance them
- Paywalled mods or mods behind exclusive discords

## Contributing

Have a mod suggestion? Found a conflict? Open an issue with the mod's Nexus URL
and a brief explanation of why it fits the modlist goals.

## PDF

Generate a printable PDF:
```bash
python -m venv .venv
.venv\Scripts\activate
pip install -r scripts/requirements.txt
python scripts/generate-pdf.py
```

Output: `cyberpunk-2077-modlist.pdf`

```

- [ ] **Step 2: Commit**

```bash
git add README.md
git commit -m "chore: add README.md"
```

---

### Task 5: Create All 19 Category Boilerplate Files

**Files:**

- Create: `modlist/01-mo2-setup-and-tools.md` through `modlist/19-performance-and-optimization.md`

All 19 category files share the same structure: a header with the category name and goal, followed by a note that mods will be added through the research pipeline.

- [ ] **Step 1: Write `modlist/01-mo2-setup-and-tools.md`**

```markdown
# 01 — MO2 Setup & Tools

**Goal:** Everything needed to get Mod Organizer 2 running with Cyberpunk 2077.
Prerequisites, installation, profile setup, launch workflow, and essential
tooling.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 2: Write `modlist/02-core-utilities.md`**

```markdown
# 02 — Core Utilities

**Goal:** Script extenders, frameworks, and essential libraries that other mods
depend on. Nothing here is optional — these are the foundation of the modlist.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 3: Write `modlist/03-bug-fixes.md`**

```markdown
# 03 — Bug Fixes

**Goal:** Fix bugs CDPR hasn't addressed. Quest fixes, animation fixes, world
holes, scripting errors, and general polish. No gameplay changes — only fixes.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 4: Write `modlist/04-ui-and-hud.md`**

```markdown
# 04 — UI & HUD

**Goal:** Interface improvements. Menus, minimap, notifications, inventory
screens, dialogue interface, and anything the player interacts with on screen.
Clean, informative, immersive.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 5: Write `modlist/05-gameplay-overhaul.md`**

```markdown
# 05 — Gameplay Overhaul

**Goal:** Transform the game into a proper RPG. Skill trees, combat rebalance,
loot economy, damage model, level scaling, enemy AI, stealth systems, and
crafting. This section defines how the game plays.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 6: Write `modlist/06-living-world.md`**

```markdown
# 06 — Living World

**Goal:** Make Night City feel alive. Daily activities, survival-lite features,
NPC routines and schedules, interactivity with the environment, immersion
elements, metro/NCART, food/drink systems, and world reactivity.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 7: Write `modlist/07-quests-and-stories.md`**

```markdown
# 07 — Quests & Stories

**Goal:** New quests, expanded storylines, additional gigs, and narrative
content. Quality over quantity — quests must feel like they belong in Night
City.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 8: Write `modlist/08-relationships-and-romance.md`**

```markdown
# 08 — Relationships & Romance

**Goal:** Meaningful relationships. Expanded romance systems (M/F and F/F
options), companion interactions, friendship mechanics, text messages, dates,
and relationship progression.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 9: Write `modlist/09-collectibles-and-exploration.md`**

```markdown
# 09 — Collectibles & Exploration

**Goal:** More things to find and reasons to explore. Hidden items, collectathon
expansions, secrets, easter eggs, and rewards for thorough exploration.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 10: Write `modlist/10-appearance-and-character.md`**

```markdown
# 10 — Appearance & Character

**Goal:** Character customization. Body mods, skin textures, hair, cyberware
visuals, tattoos, and character creator presets. Visual-only — no gameplay
impact.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 11: Write `modlist/11-clothing-and-fashion.md`**

```markdown
# 11 — Clothing & Fashion

**Goal:** Clothing, fashion, and style. Clothing pieces, full sets, virtual
atelier stores, outfit management systems, and wardrobe expansion.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 12: Write `modlist/12-armor-and-gear.md`**

```markdown
# 12 — Armor & Gear

**Goal:** Armor and combat gear. Armor pieces, gear sets, transmog/vanity
systems, and equipment that provides gameplay-affecting stats.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 13: Write `modlist/13-weapons.md`**

```markdown
# 13 — Weapons

**Goal:** Weapons and combat tools. New firearms, melee weapons, cyberware
weapons, attachments, optics, and weapon visuals.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 14: Write `modlist/14-apartments-and-housing.md`**

```markdown
# 14 — Apartments & Housing

**Goal:** Housing and personal spaces. New apartments, apartment customization,
decorations, garage expansions, and player home systems.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 15: Write `modlist/15-vehicles-and-transport.md`**

```markdown
# 15 — Vehicles & Transport

**Goal:** Vehicles and getting around Night City. Driving overhaul, new
vehicles, car customization, vehicle handling, and transport systems.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 16: Write `modlist/16-locations-and-world-expansion.md`**

```markdown
# 16 — Locations & World Expansion

**Goal:** More places to go. New areas, interior expansions, open buildings,
rooftop access, and environmental additions that expand Night City.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 17: Write `modlist/17-visuals-and-atmosphere.md`**

```markdown
# 17 — Visuals & Atmosphere

**Goal:** Visual quality and atmosphere. Lighting, weather, LUTs/color grading,
texture improvements, and environmental effects. Performance-conscious choices
only — every visual mod must justify its frametime cost.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 18: Write `modlist/18-audio-and-music.md`**

```markdown
# 18 — Audio & Music

**Goal:** Sound and music. Sound overhauls, custom radio stations, ambient
soundscapes, weapon audio, and vehicle sounds.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---
```

- [ ] **Step 19: Write `modlist/19-performance-and-optimization.md`**

```markdown
# 19 — Performance & Optimization

**Goal:** Run the modlist at playable framerates. Hardware recommendations,
benchmark methodology, optimization tools, engine settings, driver tuning, and
per-mod performance analysis.

## Hardware Recommendations

<!--
  PLACEHOLDER TABLE — rows will be populated after benchmarking.
  Each tier needs CPU, GPU, and RAM specs filled in.
  Do NOT remove the table structure — it's intentional scaffolding.
-->
| Tier        | Target       | CPU | GPU | RAM |
|-------------|--------------|-----|-----|-----|
| Minimum     | 1080p 30 FPS | —   | —   | —   |
| Recommended | 1440p 60 FPS | —   | —   | —   |
| Ultra       | 4K 60+ FPS   | —   | —   | —   |

*Hardware specs TBD — will be filled after benchmarking.*

## Benchmark Methodology

1. Clean install of Cyberpunk 2077 v2.31 + Phantom Liberty
2. Mod Organizer 2 with all category mods installed
3. Run game on each hardware tier
4. Measure: average FPS, 1% lows, 0.1% lows, frame time consistency
5. Test locations: Little China (CPU-bound), Badlands (GPU-bound), Dogtown (mixed)

## Optimization Tools

> Mods and tools will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

## Engine & Driver Settings

> Settings guide will be populated during the research phase.

## Per-Mod Performance Summary

<!--
  PLACEHOLDER TABLE — rows will be populated as mods are approved.
  One row per mod with its performance tag.
  Do NOT remove — this is intentional scaffolding for the centralized guide.
-->
| Mod | Performance Cost | Category |
|-----|------------------|----------|
| —   | —                | —        |

*Table will be populated as mods are added to the list.*

---
```

- [ ] **Step 20: Verify all category files exist**

Run:

```powershell
Get-ChildItem "$PWD\modlist\*.md" | Select-Object Name
```

Expected: 19 files listed, `01-` through `19-`.

- [ ] **Step 21: Commit**

```bash
git add modlist/
git commit -m "chore: create all 19 category boilerplate files"
```

---

### Task 6: Create Research File

**Files:**

- Create: `research/mods-to-investigate.md`

- [ ] **Step 1: Write `research/mods-to-investigate.md`**

```markdown
# Mods to Investigate

Candidates under evaluation for inclusion in the modlist. Each mod goes through:
`candidate` → `testing` → `approved` or `rejected`.

Rejected mods stay documented — never deleted.

---

## Mod Name

- **Nexus:** URL
- **Status:** candidate | testing | approved | rejected
- **Category:** Which section it belongs to
- **Pros:** What it adds
- **Cons:** Stability issues, bloat, design mismatch
- **Alternatives:** Other mods doing similar things
- **Notes:** Open questions, compatibility findings

---

*Mods will be added here as they are discovered on Nexus Mods.*
```

- [ ] **Step 2: Commit**

```bash
git add research/
git commit -m "chore: create research file"
```

---

### Task 7: Create Mods to Develop File

**Files:**

- Create: `mods-to-develop.md`

- [ ] **Step 1: Write `mods-to-develop.md`**

```markdown
# Mods to Develop

Original mod ideas that don't have an existing implementation. These are
candidates for development.

---

## Idea: Short Title

- **Category:** Which section it fits
- **Problem:** What gap does it fill?
- **Proposal:** What would the mod do?
- **Design:**
  - **UI:** Wireframe/flow descriptions, HUD elements, menus
  - **Technical:** RED4ext/CET/ArchiveXL approach, hooks, data structures
  - **Game Design:** Balance philosophy, integration with vanilla systems
- **Scope:** simple | moderate | large
- **Dependencies:** Required frameworks/APIs
- **Status:** idea | scoping | in-progress | released

---

*Ideas will be added here as gaps in the mod ecosystem are identified.*
```

- [ ] **Step 2: Commit**

```bash
git add mods-to-develop.md
git commit -m "chore: create mods-to-develop file"
```

---

### Task 8: Create PDF Generator Script

**Files:**

- Create: `scripts/generate-pdf.py`
- Create: `scripts/requirements.txt`

- [ ] **Step 1: Write `scripts/requirements.txt`**

```
markdown==3.7
weasyprint==63.1
Pygments>=2.17
```

- [ ] **Step 2: Write `scripts/generate-pdf.py`**

```python
#!/usr/bin/env python3
"""Generate a PDF from the Cyberpunk 2077 modlist Markdown files."""

import re
import sys
from pathlib import Path

try:
    import markdown
    from weasyprint import HTML, CSS
except ImportError:
    print("Missing dependencies. Run: pip install -r scripts/requirements.txt")
    sys.exit(1)

REPO_ROOT = Path(__file__).resolve().parent.parent
MODLIST_DIR = REPO_ROOT / "modlist"
OUTPUT_PATH = REPO_ROOT / "cyberpunk-2077-modlist.pdf"

CATEGORY_FILES = sorted(MODLIST_DIR.glob("*.md"))

CSS_STYLE = """
@page {
    size: A4;
    margin: 2cm 2.2cm;
    @bottom-center {
        content: counter(page);
        font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
        font-size: 9pt;
        color: #666;
    }
}

@page toc {
    @bottom-center {
        content: none;
    }
}

body {
    font-family: Georgia, 'DejaVu Serif', serif;
    font-size: 11pt;
    line-height: 1.6;
    color: #1a1a1a;
}

h1 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 22pt;
    font-weight: 700;
    color: #111;
    margin-top: 0;
    margin-bottom: 0.5cm;
    padding-bottom: 0.2cm;
    border-bottom: 2px solid #f0c040;
    page-break-before: always;
}

h1:first-of-type {
    page-break-before: avoid;
}

h2 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 16pt;
    font-weight: 700;
    margin-top: 0.6cm;
    margin-bottom: 0.3cm;
    color: #333;
}

h3 {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 13pt;
    font-weight: 700;
    margin-top: 0.4cm;
    margin-bottom: 0.2cm;
    color: #444;
}

strong {
    color: #222;
}

a {
    color: #d4a017;
    text-decoration: none;
}

code {
    font-family: Consolas, 'DejaVu Sans Mono', monospace;
    font-size: 9pt;
    background: #f5f5f5;
    padding: 1px 4px;
    border-radius: 2px;
}

pre {
    background: #f5f5f5;
    padding: 0.4cm;
    border-radius: 4px;
    font-size: 9pt;
    overflow-x: auto;
}

pre code {
    background: none;
    padding: 0;
}

blockquote {
    border-left: 3px solid #f0c040;
    margin-left: 0;
    padding-left: 0.5cm;
    color: #555;
    font-style: italic;
}

table {
    border-collapse: collapse;
    width: 100%;
    margin: 0.3cm 0;
}

th, td {
    border: 1px solid #ddd;
    padding: 6px 10px;
    text-align: left;
    font-size: 10pt;
}

th {
    background: #f8f8f0;
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-weight: 700;
}

hr {
    border: none;
    border-top: 1px solid #ddd;
    margin: 0.5cm 0;
}

ul, ol {
    padding-left: 0.6cm;
}

li {
    margin-bottom: 2px;
}

.toc-page h1 {
    page-break-before: avoid;
    border-bottom: none;
    text-align: center;
    font-size: 26pt;
    margin-bottom: 1cm;
}

.toc-page ul {
    list-style: none;
    padding-left: 0;
}

.toc-page li {
    font-family: 'Segoe UI', 'DejaVu Sans', sans-serif;
    font-size: 12pt;
    margin-bottom: 6px;
    border-bottom: 1px dotted #ccc;
    padding-bottom: 4px;
}

.toc-page li a {
    color: #222;
    text-decoration: none;
}
"""

HEADING_RE = re.compile(r"^#\s+(.+)$", re.MULTILINE)


def extract_heading(md_file: Path) -> str:
    """Return the first H1 heading from a markdown file, or its stem."""
    text = md_file.read_text(encoding="utf-8")
    match = HEADING_RE.search(text)
    if match:
        return match.group(1)
    return md_file.stem


def build_toc_html() -> str:
    """Generate a table of contents page from category file headings."""
    items = []
    for md_file in CATEGORY_FILES:
        heading = extract_heading(md_file)
        slug = heading.lower().replace(" ", "-").replace("&", "").replace("—", "")
        items.append(f'<li><a href="#{slug}">{heading}</a></li>')

    toc_list = "\n".join(items)
    return f"""<div class="toc-page">
<h1>Contents</h1>
<ul>
{toc_list}
</ul>
</div>"""


def build_html() -> str:
    toc_html = build_toc_html()

    pages = []
    for md_file in CATEGORY_FILES:
        md_content = md_file.read_text(encoding="utf-8")
        html_body = markdown.markdown(
            md_content, extensions=["extra", "codehilite", "toc", "tables"]
        )
        pages.append(html_body)

    full_body = toc_html + "\n" + "\n".join(pages)

    return f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cyberpunk 2077 Modlist</title>
</head>
<body>
{full_body}
</body>
</html>"""


def main() -> None:
    if not CATEGORY_FILES:
        print("Error: no category files found in modlist/ directory.")
        sys.exit(1)

    print("Generating Cyberpunk 2077 Modlist PDF...")
    print(f"  Categories found: {len(CATEGORY_FILES)}")

    html = build_html()
    doc = HTML(string=html)
    css = CSS(string=CSS_STYLE)

    try:
        doc.write_pdf(str(OUTPUT_PATH), stylesheets=[css])
    except Exception as exc:
        print(f"Error: PDF generation failed: {exc}")
        print("WeasyPrint requires system libraries (GTK3 on Windows).")
        print("See: https://doc.courtbouillon.org/weasyprint/stable/first_steps.html#installation")
        sys.exit(1)

    size_kb = OUTPUT_PATH.stat().st_size / 1024
    print(f"  Done: {OUTPUT_PATH} ({size_kb:.0f} KB)")


if __name__ == "__main__":
    main()
```

- [ ] **Step 3: Test PDF generation**

Run:

```powershell
pip install -r scripts/requirements.txt
python scripts/generate-pdf.py
```

Expected: `cyberpunk-2077-modlist.pdf` created at repo root. No errors.

- [ ] **Step 4: Commit**

```bash
git add scripts/
git commit -m "feat: add PDF generator script"
```

---

### Task 9: Final Verification

- [ ] **Step 1: Verify all files exist**

Run:

```powershell
$repoRoot = Resolve-Path "$PWD"
Get-ChildItem -Recurse -File -Path $repoRoot -Exclude ".git" | ForEach-Object { $_.FullName.Replace("$repoRoot\", "") } | Sort-Object
```

Expected output matches the file structure map at the top of this plan.

- [ ] **Step 2: Check git status**

Run:

```bash
git status
```

Expected: Clean working tree, all committed.

- [ ] **Step 3: Review commit history**

Run:

```bash
git log --oneline
```

Expected: One commit per task (9 commits), all with descriptive messages.
