# Beyond the Surface — Design Spec

**Date:** 2026-07-21
**Status:** Approved
**Game:** Terraria 1.4.5.6 (March 9, 2026) via tModLoader

## Overview

"Beyond the Surface" is a 3-wave Terraria modlist and game guide. Each wave is a fresh playthrough with increasing difficulty, more mods, and deeper mechanics. The guide includes installation instructions, complete walkthroughs, mod documentation, and a connected lighthearted adventure narrative.

## Project Structure

```
terraria-modlist/
├── AGENTS.md                     # AI agent instructions for this project
├── README.md                     # Project overview, usage, prerequisites
├── assets/
│   └── logo.png                  # Beyond the Surface cover logo
├── guide/
│   ├── wave-0/
│   │   ├── story.md              # Wave 0 roleplay narrative
│   │   ├── guide.md              # Complete beginner's how-to-play guide
│   │   └── modlist.md            # UI/QoL mods only
│   ├── wave-1/
│   │   ├── story.md              # Wave 1 roleplay narrative
│   │   ├── guide.md              # Strategy, advanced topics
│   │   └── modlist.md            # QoL + light content mods
│   └── wave-2/
│       ├── story.md              # Wave 2 roleplay narrative
│       ├── guide.md              # Expert strategy, mechanics deep-dive
│       └── modlist.md            # Content overhauls + mechanics
├── conflicts.md                  # Known mod conflicts (excluded from PDF)
├── mod-ideas.md                  # Mod ideas for future development (excluded from PDF)
├── output/
│   ├── build.bat                 # PDF generation batch script
│   └── beyond-the-surface.pdf    # Generated PDF output
└── template/
    └── main.typ                  # Typst 0.15 PDF template
```

## Waves

### Wave 0 — "First Steps" (Vanilla + Minimal QoL)

- **Mods:** UI/QoL only, no gameplay changes. Roughly 5-8 mods (flexible, no forced quota).
- **Guide:** Complete beginner tutorial — controls, first night, NPC housing, full boss progression, class basics, biome order, fishing, potions, hardmode transition.
- **Story:** A bewildered newcomer wakes up with amnesia and a chatty Guide. They bumble through learning the world, discovering that slimes hurt and nights are dangerous. By Moon Lord's defeat, they've grown from copper shortsword to cosmic power, with hints of "worlds beyond."

### Wave 1 — "Digging Deeper" (QoL + Light Content)

- **Mods:** QoL + light content expansions. No forced count; add mods that genuinely improve the experience.
- **Guide:** Class specialization deep-dive (melee/ranged/magic/summoner), arena building, farming strategies, event optimization (Pumpkin/Frost Moon, Old One's Army), wiring, advanced housing, biome spread management.
- **Story:** The Guide is back but remembers nothing. The world is familiar yet distorted — new biomes, stranger creatures. The hero realizes each "world" is a layer of reality. Victory brings unsettling clarity: there's one more layer.

### Wave 2 — "Beyond the Surface" (Full Overhaul)

- **Mods:** Major content overhauls (Calamity, Thorium), new mechanics, new classes. Player-induced challenge modes (class-locked runs, no-hit challenges, etc.).
- **Guide:** Expert mechanics deep-dive, modded boss progression order, class synergies, post-Moon Lord content, secret seeds, legendary difficulty, player challenge rulesets.
- **Story:** Reality is breaking. Ancient calamities, void-touched horrors, gods bleeding into the world. The hero chooses a path of self-imposed limitation — proving mastery isn't about power, but precision. The final victory reveals the surface was never the destination.

## Mod Rules

- Compatible with Terraria 1.4.5.x (release Jan 27 or Mar 9, 2026). Use patch release date as heuristic when exact version unknown.
- No conflicting mods within the same wave.
- No redundant mods (two mods doing the same thing).
- No adult/porn mods.
- No cheating, overpowered, or "all-knowing" mods.
- Each mod entry documents: clickable Steam Workshop URL, dependencies, system/mechanic impact, brief description.

## Mod Research Process

1. Browse Steam Workshop for tModLoader via Playwright, filtering by version tags and update dates.
2. Validate each mod: compatibility, uniqueness, power level, content rating.
3. Cross-reference for known conflicts; document in `conflicts.md`.
4. Document desirable-but-missing mods in `mod-ideas.md`.

## Mod Entry Format

```markdown
### [Mod Name](https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX)

**Description:** Brief description of what the mod does.

**Dependencies:**
- Dependency Mod Name (if any)

**System/Mechanic Impact:**
- [x] New items/equipment
- [x] New NPCs/enemies
- [ ] New biomes
- [ ] New bosses
- [ ] Gameplay mechanic changes
- [x] UI/QoL only (no gameplay impact)
```

## PDF Generation

- **Engine:** Typst 0.15
- **Build:** `output/build.bat` runs `typst compile template/main.typ output/beyond-the-surface.pdf`
- **Template:** `template/main.typ` includes all guide files and renders the complete document
- **Excluded from PDF:** `conflicts.md` and `mod-ideas.md` (developer reference only)

### Visual Design

- **Cover page:** Logo centered at top, "Beyond the Surface" title, subtitle with version/date
- **Color palette:** Earth tones (browns, greens) body text. Wave accent colors: Wave 0 = copper/orange, Wave 1 = silver/blue, Wave 2 = gold/purple
- **Typography:** Clean sans-serif body font, stylized/retro pixel headings for game feel
- **Layout:** Top-level table of contents, each wave as a chapter, mod entries as subsections with mechanic impact badges/icons
- **Style:** Colorful but readable, pleasant fonts, game-appropriate theming

## Story Framework

Connected lighthearted adventure following one hero across three worlds. Each wave's `story.md` is a short narrative (~200-400 words) setting the tone. Written in second-person ("You wake up...") to immerse the player.

## Files NOT in PDF Output

- `conflicts.md` — Known mod incompatibilities, conflicts, and workarounds
- `mod-ideas.md` — Missing mods that would be good additions but don't exist for 1.4.5.6
