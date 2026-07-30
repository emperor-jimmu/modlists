# Aetherbound — Starbound Modlist Design Spec

**Game:** Starbound  
**Target Version:** 1.4.4 (August 7, 2019)  
**Mod Manager:** SBMM (Starbound Mod Manager) by korsir  
**Modlist Name:** Aetherbound  
**Status:** Draft

## 1. Overview

Aetherbound is a curated two-wave modlist guide for Starbound 1.4.4. Each wave represents a different level of game experience, introduced by a roleplaying backstory. The project outputs a professional PDF guide generated via Typst 0.15/0.15.1.

### Design Pillars

- **Beginner-friendly:** Wave 0 assumes zero prior Starbound experience and teaches vanilla mechanics
- **Progressive depth:** Wave 1 builds on experience with new content, mechanics, and strategy
- **Visual polish:** The PDF is a standalone product — colorful, beautiful, professional
- **No cheats:** No overpowered, all-knowing, or progression-skipping mods
- **Version-locked:** All mods must be compatible with Starbound 1.4 (minimum); 1.4.4 preferred

### Mod Rules

- No conflicting mods within or across waves
- No porn mods (adult/nude is acceptable where relevant; ask user when in doubt)
- No redundant mods
- No mods incompatible with version 1.4.x — verify update dates against the 1.4.4 release (August 2019); mods last updated before 2019 are suspicious, mods updated after 2020 are likely compatible
- No cheating, overpowered, or "all-knowing" mods

### Mod Sources (ordered by priority)

1. **Steam Workshop** — primary source; largest collection, easy subscription workflow
2. **Chucklefish Forums** — official game forums with modding section; fallback for mods not on Workshop
3. **GitHub** — fallback for mods distributed as source/standalone releases
4. **Nexus Mods** — secondary; ~840 mods available; use when Workshop lacks coverage

## 2. Project Structure

```bash
starbound/
├── AGENTS.md                         # Project-specific agent instructions
├── README.md                         # Project overview and quick start
├── STATUS.md                         # Development journal: decisions, rejected mods, notes
├── conflicts.md                      # Canonical mod conflict reference (NOT in PDF)
├── mod-ideas.md                      # Future mod development ideas (NOT in PDF)
├── assets/
│   ├── logo.jpg                      # Cover page logo (already exists)
│   └── fonts/
│       ├── SpaceGrotesk-Bold.otf     # Heading font (SIL OFL)
│       ├── SpaceGrotesk-Regular.otf  # Heading font (SIL OFL)
│       ├── Inter-Regular.otf         # Body font (SIL OFL)
│       ├── Inter-Bold.otf            # Body bold (SIL OFL)
│       └── Inter-Italic.otf          # Body italic (SIL OFL)
├── guide/
│   ├── introduction.typ              # About this guide, philosophy, how to use
│   ├── install.typ                   # Shared installation: SBMM setup, game prep
│   ├── wave-0/
│   │   ├── story.typ                 # Roleplaying backstory
│   │   ├── how-to-play.typ           # Focused vanilla guide for new players
│   │   └── modlist/
│   │       ├── 01-qol-ui.typ         # Quality of life and UI enhancements
│   │       └── 02-bugfixes.typ       # Community bugfixes for 1.4.4
│   └── wave-1/
│       ├── story.typ                 # Roleplaying backstory
│       ├── strategy.typ              # Advanced topics and systems
│       └── modlist/
│           ├── 01-graphics.typ       # Visual and graphical enhancements
│           ├── 02-races.typ          # New playable species
│           ├── 03-content.typ        # Quests, planets, biomes, dungeons
│           ├── 04-mechanics.typ      # New gameplay systems and mechanics
│           ├── 05-ships.typ          # Ship expansion and customization
│           ├── 06-weapons-armor.typ  # Weapons, armor, equipment
│           ├── 07-building.typ       # Furniture, blocks, colony
│           ├── 08-audio.typ          # Music and ambient audio
│           └── 09-adult.typ          # Adult/nude content
├── templates/
│   └── aetherbound.typ               # Typst PDF template (main entry point)
├── output/
│   └── aetherbound.pdf               # Generated PDF (gitignored)
└── tools/
    └── build.ps1                     # PDF build script
```

**Key structural decisions:**

- Guide content is authored in `.typ` (Typst native format) — avoids markdown-to-Typst conversion complexity
- `conflicts.md` and `mod-ideas.md` are at project root, outside `guide/` — excluded from PDF by path, not by name
- `build.ps1` lives in `tools/` for consistency with other modlists in this monorepo (Skyrim uses `tools/`)
- Fonts are bundled in `assets/fonts/` — both Space Grotesk and Inter are **SIL Open Font License**, freely distributable
- `output/aetherbound.pdf` is gitignored (generated artifact)

## 3. Content Format (Typst Native)

All guide content is authored in **Typst markup** (`.typ` files), not Markdown. Typst's native syntax is similar to Markdown but avoids the need for a conversion layer.

### Basic Typst Syntax Reference

| Element | Typst                | Markdown equivalent |
|---------|----------------------|---------------------|
| H1      | `= Title`            | `# Title`           |
| H2      | `== Section`         | `## Section`        |
| H3      | `=== Subsection`     | `### Subsection`    |
| Bold    | `*bold*`             | `**bold**`          |
| Italic  | `_italic_`           | `*italic*`          |
| Link    | `#link("url")[text]` | `[text](url)`       |
| List    | `- item`             | `- item`            |
| Image   | `#image("path")`     | `![](path)`         |
| Code    | `` `code` ``         | `` `code` ``        |

### Mod Entry Format

Mod entries use a named Typst function (`#mod-entry`) defined in the template. Each modlist file contains a series of these calls:

```typst
#mod-entry(
  name: "Better Inventory",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXXXXXX",
  category: "QoL",
  version: "2024-03",
  dependencies: (),
  system-impact: none,
  description: [Improves inventory sorting, filtering, and search. Does not add items or change balance.],
  install-notes: [Load after any UI mods. Place in SBMM group "UI/QoL".],
  wave: 0,
)
```

**Field specification:**

| Field           | Type             | Description                                                                                                                   |
|-----------------|------------------|-------------------------------------------------------------------------------------------------------------------------------|
| `name`          | string           | Mod display name                                                                                                              |
| `url`           | string           | Verified Steam Workshop or alternative URL                                                                                    |
| `category`      | string           | One of: QoL, UI, Bugfix, Graphics, Races, Content, Mechanics, Ships, Weapons-Armor, Building, Audio, Adult                    |
| `version`       | string           | Last observed update date (YYYY-MM); approximate, since Workshop auto-updates                                                 |
| `dependencies`  | array of strings | Mod names this mod requires; empty `()` if none                                                                               |
| `system-impact` | `none` or string | If `none`, no indicator shown. Otherwise, a short label like `"adds hunger mechanics"`, `"replaces SAIL"`, `"adds tech tree"` |
| `description`   | content block    | Brief description of what the mod does                                                                                        |
| `install-notes` | content block    | SBMM-specific guidance (group, load order, conflict notes)                                                                    |
| `wave`          | integer          | 0 or 1                                                                                                                        |

### Callout Functions

The template also provides callout functions for prose chapters (how-to-play, strategy, install):

```typst
#tip[Quickly switch between Matter Manipulator modes with R.]  // Amber left-border, bulb icon
#concept[The **beam-down loop** is the core Starbound gameplay cycle...]  // Indigo left-border, info icon
#warning[This mod requires a **new save**. Do not install mid-playthrough.]  // Red left-border, warning icon
```

## 4. Wave Design

### Wave 0 — "First Steps"

**Roleplaying backstory:** Fresh Protectorate academy graduate. First planetary posting. Wide-eyed explorer armed with a basic Matter Manipulator and academy training, setting out into the unknown.

**Mod scope:** QoL and UI mods only (2 categories) — no gameplay changes, no new content, no mechanical additions. The experience should remain as close to vanilla as possible while smoothing rough edges.

**Mod categories:**

- **QoL / UI** — Improved inventory management, better SAIL interface, map enhancements. No new items, no balance changes
- **Bugfixes** — Community patches for known 1.4.4 issues that Chucklefish never fixed

**Guide content:** `how-to-play.typ` — A focused new-player walkthrough, NOT a comprehensive wiki. Scope is deliberately bounded:

1. Controls and interface basics (2 pages)
2. First hour: ship tutorial through first planet landing (3 pages)
3. Core survival loop: hunger, temperature, oxygen (2 pages)
4. Progression overview: matter manipulator upgrades, tech unlocks, story mission walkthrough (4 pages)
5. Key systems survey: crafting tiers, crew recruitment, colony building, farming basics, mech, bounty hunting — one page each, enough to get started (6 pages)

**Target: ~17 pages.** Enough to bootstrap a new player without replacing the wiki.

### Wave 1 — "Beyond the Horizon"

**Roleplaying backstory:** Veteran protector reassigned to fringe space. Deeper mysteries await beyond charted territory. Seasoned explorer with resources, reputation, and the honed instinct that only comes from surviving the unknown.

**Mod scope:** Full modlist across 9 categories. Player has completed the vanilla story at least once.

**Mod categories:**

- **Graphics** — Parallax layers, planet backgrounds, lighting improvements, visual effects
- **Races** — New playable species with custom ships, armor, and dialogue
- **Content** — Quests, planets, biomes, dungeons, microdungeons, NPCs
- **Mechanics** — New techs, crafting chains, survival additions, gameplay systems
- **Ships** — Ship expansion, custom ships, SAIL replacements, crew enhancements
- **Weapons & Armor** — New weapon types, armor sets, procedural generation improvements
- **Building** — Furniture packs, block sets, colony system expansions
- **Audio** — Music packs, ambient soundscapes, UI sounds
- **Adult** — Adult/nude content where thematically appropriate. No porn.

**Guide content:** `strategy.typ` — Advanced topics for experienced players:

1. Optimal planet-tier farming routes and resource efficiency
2. Faction dynamics and reputation optimization
3. Ship crew composition and synergies
4. Efficient base building and colony management
5. Rare resource locations and farming strategies
6. Boss tactics and loadout optimization
7. Modded mechanics deep dives (how new mod systems interact)

**Target: ~12 pages.**

## 5. PDF Generation

### Pipeline

```
guide/*.typ files  ──include──▶  templates/aetherbound.typ  ──typst compile──▶  output/aetherbound.pdf
```

**No preprocessor.** No markdown conversion. The build script is simple:

```powershell
# tools/build.ps1
typst compile ..\templates\aetherbound.typ ..\output\aetherbound.pdf
```

The Typst template (`templates/aetherbound.typ`) is the single entry point. It uses `#include` directives to pull in each guide file in the correct order. The template defines all styling, layout, fonts, and the `#mod-entry` / `#tip` / `#concept` / `#warning` functions.

### PDF Structure (page order)

1. **Cover page** — `assets/logo.jpg`, "Aetherbound" title, subtitle: "A Starbound Modlist Guide", version
2. **Table of contents** — Typst `#outline` auto-generated, top-level only (chapters, not mods)
3. **Introduction** — `guide/introduction.typ`: philosophy, how to use this guide, wave concept
4. **Installation** — `guide/install.typ`: SBMM setup, game preparation, workshop workflow
5. **Wave 0 divider** — full-bleed indigo page with story blurb
6. **Wave 0: How to Play** — `guide/wave-0/how-to-play.typ`
7. **Wave 0: Modlist** — `guide/wave-0/modlist/*.typ` files in numbered order
8. **Wave 1 divider** — full-bleed indigo page with story blurb
9. **Wave 1: Strategy** — `guide/wave-1/strategy.typ`
10. **Wave 1: Modlist** — `guide/wave-1/modlist/*.typ` files in numbered order

### Visual Design

**Cosmic Sci-Fi Palette:**

| Role              | Color        | Hex       | Usage                                    |
|-------------------|--------------|-----------|------------------------------------------|
| Background (dark) | Deep Indigo  | `#1a103c` | Section dividers, chapter headers, cover |
| Accent (bright)   | Cyan         | `#00e5ff` | Links, badges, borders, highlights       |
| Accent (warm)     | Amber        | `#ffb74d` | Tip callouts, emphasis                   |
| Warning           | Red          | `#ff5252` | Warning callouts                         |
| Body background   | Cream        | `#fafaf8` | Default page                             |
| Body text         | Charcoal     | `#1a1a2e` | Body copy                                |
| Code/inline       | Muted Purple | `#7c4dff` | Inline code, technical labels            |
| Info              | Steel Blue   | `#5c6bc0` | Concept callouts                         |

**Fonts:**

- **Headings:** Space Grotesk Bold — `assets/fonts/SpaceGrotesk-Bold.otf`
- **Body:** Inter Regular — `assets/fonts/Inter-Regular.otf`
- **Body emphasis:** Inter Bold, Inter Italic — `assets/fonts/Inter-Bold.otf`, `assets/fonts/Inter-Italic.otf`
- Both fonts are **SIL Open Font License** — free to distribute. Download from Google Fonts.

**Font fallback chain:** Space Grotesk → system sans-serif for headings; Inter → system sans-serif for body.

### Mod Panel Rendering

The `#mod-entry` function renders each mod as a styled information panel:

- **Container:** Rounded rectangle (4pt radius), 1pt cyan border, light cream fill (`#f0f0f8`), 6pt padding, 8pt bottom margin
- **Title row:** Mod name in Space Grotesk Bold, 11pt, charcoal, clickable (Typst `#link`)
- **Category badge:** Cyan pill (rounded, cyan fill, white text, 8pt) in top-right corner
- **System impact indicator:** Only rendered when `system-impact` is not `none`. Small amber badge next to category, reading e.g. "IMPACT: adds hunger mechanics"
- **Metadata row:** Version, dependencies listed inline below title in 9pt Inter, muted color
- **Description row:** Body text, 10pt Inter, charcoal
- **Install notes row:** Small italic text, 9pt Inter, prepended with wrench icon

**Single-column layout** for mod entries. The mod panel is full text width (~15cm on A4). Metadata is in-row, not side-column — avoids layout complexity while keeping entries scannable.

### Callout Panel Rendering

| Type       | Left border    | Background | Icon       | Usage                                         |
|------------|----------------|------------|------------|-----------------------------------------------|
| `#tip`     | 4pt amber      | `#fff8e1`  | 💡 bulb    | Quick advice, shortcuts, reminders            |
| `#concept` | 4pt steel blue | `#e8eaf6`  | ℹ️ info    | Explains a game system or mechanic            |
| `#warning` | 4pt red        | `#ffebee`  | ⚠️ warning | Compatibility, version, or save-game cautions |

### Page Layout

- **Paper:** A4 portrait (210 x 297 mm)
- **Margins:** 20mm all sides, 25mm top on chapter-start pages
- **Body text:** 10pt Inter Regular, 14pt line height
- **Headings:** Space Grotesk Bold — H1: 24pt, H2: 18pt, H3: 14pt
- **Chapter start:** Each top-level section begins on a new page with a cyan rule under the heading
- **Running headers:** Chapter title (left page), section title (right page), 8pt, muted
- **Page numbers:** Centered footer, 8pt

### Cover Page

- Full indigo background (`#1a103c`), 50% opacity starfield pattern (generated in Typst)
- `assets/logo.jpg` centered, 6cm wide
- Title "Aetherbound" in Space Grotesk Bold, 48pt, white, centered
- Subtitle "A Starbound Modlist Guide" in Inter Regular, 18pt, cyan, centered
- Bottom: "Starbound 1.4.4" + "Version 1.0" in Inter, 12pt, muted

## 6. Steam Workshop Versioning Strategy

**The problem:** Steam Workshop auto-updates mods silently. No version pinning. No rollback. A mod that works today may break tomorrow.

**Mitigations:**

1. **Timestamp-based compatibility check:** When researching a mod, check its Workshop page "Last Updated" date. If it was last updated after Starbound 1.4.4 (August 2019), it's likely compatible. If before, it may be for an older version. This is documented per mod entry in the `version` field.
2. **User-side backup workflow:** The install guide instructs users to:
   - Subscribe to all mods for a wave
   - Wait for Steam to download them
   - Copy the workshop folder (`Steam\steamapps\workshop\content\211820\`) to a backup location
   - Point SBMM at the backup, NOT the live workshop folder
   - This freezes the mod set at a known-good state
3. **Modlist as snapshot:** The PDF represents a tested, known-good combination. The `version` field records when each mod was last verified. If a user encounters issues, they can check whether a mod has updated since the snapshot date.
4. **SBMM profiles:** SBMM's profile system isolates Wave 0 and Wave 1 mod sets. Each wave points at its own backup folder.

**Acknowledged limitation:** This guide cannot guarantee perpetual compatibility. It guarantees that the specified combination was tested and working at the time of the guide's publication.

## 7. Mod Research Workflow

### Steam Workshop Discovery

Steam Workshop lacks category browsing and sort-by-popularity. Discovery methodology:

1. **Browse collections:** Search for curated Starbound mod collections on Workshop. Collections created by experienced players often surface quality mods.
2. **Search by keyword:** Use Workshop search with category-specific terms (e.g., "Starbound UI", "Starbound race", "Starbound quest").
3. **Community signal:** Check Chucklefish Forums "Mods" section and r/starbound for community recommendations, "must-have mods" threads, and mod review posts.
4. **Popularity proxies:** On Workshop, use "Most Subscribed" and "Top Rated" filters within search results. Note that subscription count isn't a perfect quality signal — older mods accumulate subs over time.
5. **Cross-reference:** A mod that appears in multiple curated collections AND has positive forum/Reddit discussion is a strong signal.

### Verification Steps (per mod)

1. Open Workshop page via Playwright
2. Record: last updated date, description, dependencies listed, any compat notes from author
3. Check if mod explicitly states version compatibility (1.3 vs 1.4)
4. Search Chucklefish Forums and Reddit for bug reports or compatibility issues
5. If mod conflicts with an already-selected mod, document in `conflicts.md` and pick the better fit
6. Add mod entry to the appropriate `.typ` file with verified URL

### Non-Workshop Mod Verification

For mods on GitHub or Chucklefish Forums:

1. Verify the mod is for Starbound 1.4+ (check release notes, readme, or forum thread date)
2. Confirm the distribution method (manual `.pak` file, source code requiring build, etc.)
3. Document in `install-notes` the non-standard installation process
4. Prefer Workshop versions when the same mod is available on both platforms

## 8. SBMM Integration

### About SBMM

- **Full name:** Starbound Mod Manager
- **Author:** korsir
- **Source:** GitHub repository (exact URL TBD — user knows the tool; URL will be verified during implementation)
- **SBMM manages:** Mod profiles, load order, conflict detection, workshop integration
- **Platform:** Windows (primary); Mac/Linux support TBD during research

### Install Guide Coverage

`guide/install.typ` covers:

1. Downloading SBMM from its canonical source
2. Installing and first-run setup
3. Creating Wave 0 and Wave 1 profiles
4. Workshop subscription workflow and backup strategy (see Section 6)
5. Configuring SBMM to use the backup workshop folder (not live Workshop)
6. Setting up mod groups within each profile (matching modlist categories)
7. Load order management and conflict resolution within SBMM
8. Profile switching between waves
9. Backup and recovery procedures

### Mod Entry SBMM Notes

Each `#mod-entry` includes an `install-notes` field with SBMM-specific guidance:

- Which SBMM group to place the mod in
- Load order relative to other mods in the same wave
- Known conflicts visible in SBMM's conflict detector
- Whether the mod requires a new save or can be added mid-playthrough

## 9. STATUS.md

Development journal. Not included in PDF. Lives at `starbound/STATUS.md`. Tracks the curation process:

```markdown
# Aetherbound STATUS

## Decisions Made
- [YYYY-MM-DD] **Decision:** Description. *Reasoning:* ...

## Rejected Mods
- **[Mod Name](url):** Reason for rejection (incompatible, redundant, conflicts with X, etc.)

## Known Conflicts
- **Mod A vs Mod B:** Nature of conflict. Resolution: [picked A / picked B / can coexist with load order]. *See `conflicts.md` for full details.*

## Open Questions
- **Question?** Status / who owns / next action

## Version Notes
- Target: Starbound 1.4.4 (August 7, 2019)
- SBMM version: TBD
- Typst version: 0.15.1
```

### Relationship: STATUS.md vs conflicts.md

- `STATUS.md` is the **journal** — chronological decisions, rejected mods with reasoning, open questions. It references `conflicts.md` for detailed conflict documentation but does not duplicate it.
- `conflicts.md` is the **canonical reference** — a structured table of all known mod incompatibilities, resolution choices, and alternatives. It is the authoritative source for conflict data.
- When a conflict is discovered: document the details in `conflicts.md`, add a one-line summary to `STATUS.md` with a reference to the `conflicts.md` entry. Never duplicate the full conflict details across both files.

## 10. conflicts.md

Lives at `starbound/conflicts.md`. Flat reference file. NOT included in PDF. Structure:

```markdown
# Mod Conflicts

| Mod A | Mod B | Conflict Type | Resolution                    | Notes |
|-------|-------|---------------|-------------------------------|-------|
| ...   | ...   | Hard/Soft     | Pick A / Load Order / Coexist | ...   |
```

- **Hard conflict:** Mods cannot coexist (overwrite same files, mutually exclusive mechanics)
- **Soft conflict:** Mods overlap in scope but can coexist with load order or configuration

## 11. mod-ideas.md

Lives at `starbound/mod-ideas.md`. Ideas for mods that don't exist yet but would benefit the modlist. NOT included in PDF. Structure:

```markdown
# Mod Ideas

## Category: [Name]
- **Idea:** Description of the hypothetical mod
- **Why:** What gap it fills in the current modlist
- **Scope:** Estimated complexity (simple pak mod, scripted, large content mod)
```

## 12. Implementation Phases

### Phase 1: Project Scaffold

- Create directory structure (all folders, blank files)
- Download and bundle fonts (Space Grotesk, Inter) from Google Fonts
- Write AGENTS.md with project conventions
- Write README.md with overview and quick start
- Create blank STATUS.md, conflicts.md, mod-ideas.md
- Verify SBMM download URL and record in STATUS.md

### Phase 2: Typst Template + Content Format (coupled — do together)

- Design `templates/aetherbound.typ` with all functions: `#mod-entry`, `#tip`, `#concept`, `#warning`
- Implement cover page, TOC, running headers, fonts
- Implement color palette and panel styles
- Create `tools/build.ps1`
- Build test PDF with one placeholder mod entry to validate the full pipeline end-to-end
- **Gate:** PDF compiles without errors, mod panel renders correctly, fonts load, colors match palette

### Phase 3: Guide Content (prose — no mod research yet)

- Write `guide/introduction.typ`
- Write `guide/install.typ` (SBMM setup walkthrough)
- Write `guide/wave-0/story.typ`
- Write `guide/wave-0/how-to-play.typ`
- Write `guide/wave-1/story.typ`
- Write `guide/wave-1/strategy.typ`
- **Gate:** All prose chapters compile into PDF with correct formatting

### Phase 4: Mod Research — Wave 0

- Research QoL/UI mods on Steam Workshop and forums
- Research bugfix mods for 1.4.4
- Verify each mod's compatibility, dependencies, and URL
- Populate `guide/wave-0/modlist/01-qol-ui.typ` and `02-bugfixes.typ`
- Document conflicts in `conflicts.md`, decisions in `STATUS.md`
- **Gate:** PDF builds with complete Wave 0 modlist, all URLs verified

### Phase 5: Mod Research — Wave 1 (by category, one at a time)

- **5a:** Graphics mods (`01-graphics.typ`)
- **5b:** Races (`02-races.typ`)
- **5c:** Content (`03-content.typ`)
- **5d:** Mechanics (`04-mechanics.typ`)
- **5e:** Ships (`05-ships.typ`)
- **5f:** Weapons & Armor (`06-weapons-armor.typ`)
- **5g:** Building (`07-building.typ`)
- **5h:** Audio (`08-audio.typ`)
- **5i:** Adult (`09-adult.typ`)
- Each sub-phase: research, verify, populate file, update conflicts.md and STATUS.md
- **Gate per sub-phase:** Category file compiles into PDF, all URLs verified

### Phase 6: Final Assembly

- Full PDF build with all content
- Cross-wave conflict review: ensure no Wave 0 mod conflicts with Wave 1 mod
- Page layout review: orphans, widows, spacing
- Color contrast accessibility check
- Commit all files
- **Gate:** Final PDF passes visual review
