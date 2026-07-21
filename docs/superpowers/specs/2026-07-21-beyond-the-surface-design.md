# Beyond the Surface — Design Spec

**Date:** 2026-07-21
**Status:** Approved
**Game:** Terraria 1.4.5 (January 27, 2026), targeting the latest 1.4.5.x patch (March 9, 2026)

## Overview

"Beyond the Surface" is a 3-wave Terraria modlist and game guide. Each wave is a fresh playthrough with increasing difficulty, more mods, and deeper mechanics. The guide includes tModLoader setup, complete walkthroughs, mod documentation, and a connected narrative that shifts from lighthearted (Wave 0) to dark philosophical (Wave 2). Target length: **100+ pages PDF**.

Mods are curated by the project owner and written into per-wave `modlist.md` files. This spec covers the project structure, guide content, narrative framework, PDF generation pipeline, and all configuration metadata.

## Target Audience & Prerequisites

- **Wave 0:** Complete beginners — never played Terraria. Assumes only basic PC literacy.
- **Wave 1:** Players who finished Wave 0 or have one vanilla playthrough. Comfortable with controls and core progression.
- **Wave 2:** Veteran players. Have beaten Moon Lord at least once. Ready for modded content and self-imposed challenges.

## Project Structure

```
terraria-modlist/
├── AGENTS.md                     # AI agent instructions for this project
├── README.md                     # Project overview, usage, prerequisites
├── build.bat                     # PDF generation batch script (root level)
├── assets/
│   └── logo.png                  # Beyond the Surface cover logo
├── guide/
│   ├── setup.md                  # tModLoader installation & configuration
│   ├── wave-0/
│   │   ├── story.md              # Wave 0 roleplay narrative
│   │   ├── guide.md              # Complete beginner's how-to-play guide
│   │   └── modlist.md            # UI/QoL mods (user-provided)
│   ├── wave-1/
│   │   ├── story.md              # Wave 1 roleplay narrative
│   │   ├── guide.md              # Strategy, advanced topics
│   │   └── modlist.md            # QoL + light content mods (user-provided)
│   └── wave-2/
│       ├── story.md              # Wave 2 roleplay narrative
│       ├── guide.md              # Expert strategy, mechanics deep-dive
│       └── modlist.md            # Content overhauls + mechanics (user-provided)
├── conflicts.md                  # Known mod conflicts (excluded from PDF)
├── mod-ideas.md                  # Mod ideas for future development (excluded from PDF)
├── output/
│   └── beyond-the-surface.pdf    # Generated PDF output
└── template/
    └── main.typ                  # Typst 0.15 PDF template
```

## Modlist Format (User-Provided Content)

The project owner writes mods into each wave's `modlist.md`. These files must follow this template so the Typst pipeline renders them uniformly. The template shows all checkboxes empty — the user fills the applicable categories:

```markdown
### [Mod Name](https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX)

**Description:** Brief description of what the mod does.

**Dependencies:**
- Dependency Mod Name (if any)
- `!` prefix for hard dependency, no prefix for soft/recommended
- `#load-before <ModName>` for load order constraints
- `#load-after <ModName>` for load order constraints

**System/Mechanic Impact:**
- [ ] New items/equipment
- [ ] New NPCs/enemies
- [ ] New biomes
- [ ] New bosses
- [ ] Gameplay mechanic changes
- [ ] UI/QoL only (no gameplay impact)
```

### Load Order

Each `modlist.md` must include a **Load Order** subsection after the last mod entry, listing the exact enable order for tModLoader. Example:

```markdown
## Load Order for Wave X

Enable mods in this exact order:

1. ModLib
2. BaseLibrary
3. ...
```

The guide text in `guide.md` may cross-reference mods by name and explain how their mechanics interact with vanilla systems.

## Waves

### Wave 0 — "First Steps" (Vanilla + Minimal QoL)

**Difficulty:** Classic (Softcore)
**World:** Medium, Corruption recommended (easier first boss)
**Seed:** Random (no special seed)

- **Mods:** UI/QoL only — no gameplay changes. Defined in `modlist.md` by project owner.
- **Guide:** Complete beginner tutorial covering: controls and settings, surviving the first night, building NPC housing (requirements, room sizes, biome preferences), full boss progression (Eye of Cthulhu through Moon Lord), class basics (melee/ranged/magic/summoner differences), biome exploration order (surface > underground > jungle > dungeon > hell > hardmode biomes > temple), fishing mechanics, potion crafting, hardmode transition (Wall of Flesh, biome spread basics, smashing altars).
- **Story:** First-person narration from the Guide (Andrew). Warm, slightly sarcastic mentor. He greets the player as a clueless newcomer, gives obvious survival tips with affectionate sarcasm, grows genuinely proud as the player progresses, and closes with a cryptic hint that his job isn't done — other worlds need help. Tone: lighthearted and humorous throughout.

### Wave 1 — "Digging Deeper" (QoL + Light Content)

**Difficulty:** Expert (Softcore)
**World:** Medium, Corruption or Crimson (player choice)
**Seed:** Random

- **Mods:** QoL expansions + light content mods. Defined in `modlist.md` by project owner.
- **Guide:** Strategy-focused topics: class specialization deep-dive (gear progression trees per class, optimal accessories, reforging priorities), arena building (platform spacing, campfire/heart lantern/bast statue placement, class-specific arena features), farming strategies (mob farms, biome keys, rod of discord, boss summon item farming), event optimization (Pumpkin Moon wave reach, Frost Moon wave reach, Old One's Army sentry strategies), wiring and teleporters (basic logic gates, teleporter hub networks, actuator-based farms), advanced NPC housing (pylon network setup, biome-specific housing, happiness optimization), biome spread management (pre-hardmode trenching, clentaminator strategy, hellevator placement).
- **Story:** Second-person narrative. The Guide is present as a character who speaks in occasional first-person interjections, but the omniscient voice describes events in second person ("You wake up..."). The Guide's voice is unsettled — he has incomplete memories, his cheerfulness is cracking, and his advice grows darker. He does not understand why this world feels wrong, and by the end confesses he can't follow the player further. Tone: bittersweet sliding into ominous. The ominous thread is subtle — not horror, but creeping unease.

### Wave 2 — "Beyond the Surface" (Full Overhaul)

**Difficulty:** Expert (Softcore), with optional Master/Legendary challenge appendix
**World:** Large, Corruption (for lore consistency with earlier waves)
**Seed:** Random; secret seed appendix for "For the Worthy" and "Get Fixed Boi" variants

- **Mods:** Major content overhauls, new mechanics, new classes. Defined in `modlist.md` by project owner.
- **Guide:** Expert topics: modded boss progression order (which mod's bosses overlap with which vanilla progression tier, recommended kill order), class synergies with modded gear (cross-mod equipment interactions, hybrid builds), post-Moon Lord content (modded endgame bosses, superbosses, post-game tiers), secret/legendary seed strategies, modded biome navigation.
- **Player Challenges:** A dedicated section presenting self-imposed restriction rulesets. Each challenge has a name, a rules block, and strategic advice for that restriction. At least 4 challenges:
  - **Class Purity:** Pick one damage type at character creation. You may never deal damage with any other type. (Includes whip restrictions for summoners, tool damage considerations.)
  - **No Crafting:** You may only use items found in chests, dropped by enemies, or purchased from NPCs. No crafting stations allowed.
  - **Hardcore Adjacent:** Mediumcore character (drop items on death). Full strategy for corpse runs, backup gear caches, and teleporter recovery networks.
  - **One Life:** Hardcore character with strategic advice for extreme caution, including which bosses to overprepare for and which to skip until post-game gear.
- **Story:** Second-person narrative. The Guide is absent. An unnamed entity — ancient, detached, faintly curious — narrates. It has observed the player across all three realities. Its voice is cryptic and observational, never warm but never hostile. It imposes the player's chosen challenge not as punishment but as a final lesson. The tone is dark and philosophical; avoid melodrama. The entity doesn't monologue about destiny — it asks questions, posits possibilities, and ultimately steps back to watch what the player does with the knowledge.

## Story Framework

| Wave | Narrator | POV | Tone |
|------|----------|-----|------|
| 0 | The Guide (Andrew) | First-person | Lighthearted, humorous, warm |
| 1 | Omniscient + Guide interjections | Second-person with first-person dialogue | Bittersweet, creeping unease |
| 2 | Unnamed entity | Second-person | Dark, philosophical, detached |

Each `story.md` is 200-400 words and appears at the start of its wave chapter in the PDF.

## PDF Generation

### Engine & Pipeline

- **Engine:** Typst 0.15
- **Markdown bridging:** Typst cannot natively parse `.md` files. The `build.bat` script must preprocess Markdown into Typst-compatible format before compilation. Two equivalent approaches (pick one during implementation):
  - **Option A (recommended):** Write guide content directly in `.typ` partial files under `template/` instead of `.md`. The `guide/` folder holds source markdown for human editing; `build.bat` converts `.md` to `.typ` via a simple pandoc invocation (`pandoc guide/wave-0/guide.md -o template/wave-0-guide.typ`), then runs `typst compile`.
  - **Option B:** Write all content natively in `.typ` files under `template/`, eliminating the `guide/` markdown files. Simpler pipeline but less portable for external contributors.
- **Build script (`build.bat`):**
  - Check that `typst` is on PATH; error with a clear message if not found
  - Create `output/` directory if missing
  - Run the markdown-to-typst preprocessing step (if Option A)
  - Run `typst compile template/main.typ output/beyond-the-surface.pdf`
  - Print success/failure message with output file path
- **Excluded from PDF:** `conflicts.md`, `mod-ideas.md`

### Visual Design

- **Cover page:** Logo centered at top, title "Beyond the Surface", subtitle with game version and date, decorative frame
- **Color palette:**
  - Body text: dark brown or charcoal on cream/off-white background
  - Wave accent colors: Wave 0 header = copper/orange (#B87333), Wave 1 header = silver/blue (#8A9BBA), Wave 2 header = gold/purple (#B8860B)
  - Callout boxes, tips, and warnings use these accent colors as borders/backgrounds
  - Links use wave-appropriate accent color
- **Typography:**
  - Body font: Open Sans or Inter (clean sans-serif, free, readable at length)
  - Heading font: A pixel/retro font bundled with the project for game feel. Must be freely redistributable. Recommendation: Press Start 2P (OFL-licensed) or similar bundled at `assets/fonts/`
  - Monospace font for code/commands: bundled or system fallback (Consolas)
- **Layout:**
  - Table of contents after cover page
  - Setup chapter before Wave 0
  - Each wave is a top-level chapter
  - Mod entries as subsections with colored mechanic-impact badges
  - Guide content uses callout blocks (tip/warning/note) with colored borders
- **Page count:** 100+ pages at A4 or US Letter

## tModLoader Setup & Configuration

The `guide/setup.md` file must cover these topics in order. This chapter appears in the PDF between the TOC and Wave 0:

| Section | Content Requirements |
|---------|---------------------|
| What is tModLoader | One paragraph explaining it's an official mod loader on Steam, free if you own Terraria. Link to store page. |
| Installation | Installing via Steam, launch as separate app, first-time setup wait. Screenshot of Steam library entry. |
| Workshop basics | How to browse the Workshop from tModLoader's main menu, subscribing to mods, where subscribed mods appear in the mods list. |
| Enabling/disabling mods | The mods menu, enable/disable toggle, the reload button, dependency auto-enable behavior. |
| Load order | How to reorder mods, why order matters, how each wave's `modlist.md` Load Order section maps to this screen. |
| Mod configuration | Accessing per-mod config menus, common settings players may want to adjust. |
| Per-wave setup | Clear checklist: unsub/unsub from prior wave's mods, sub to new wave's mods, apply load order from `modlist.md`, generate a new world with the wave's specified settings. |
| Troubleshooting | Out of memory (64-bit vs 32-bit tModLoader), mod conflict error messages and what they look like, "mod not found" resolution, verifying game file integrity. |

## Files Outside the PDF

- `conflicts.md` — Developer reference. Lists known mod incompatibilities per wave, conflict symptoms, and workarounds.
- `mod-ideas.md` — Developer wishlist. Mods that would complement a wave but don't exist or aren't compatible with 1.4.5.

## Implementation Notes

- Guide content tone: instructional, occasionally humorous, never condescending. Wave 0 assumes zero game knowledge; Wave 2 assumes the reader has beaten Moon Lord.
- All modlist content (`modlist.md` files, `conflicts.md`, `mod-ideas.md`) is provided by the project owner. The implementation scaffolds these as empty files with the format template included as a comment.
- `AGENTS.md` should document: project purpose, Typst version requirement, pandoc dependency (if Option A chosen), file structure conventions, and that mod content is user-managed.
