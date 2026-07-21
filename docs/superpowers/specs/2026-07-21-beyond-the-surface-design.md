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
│   ├── setup.md                   # tModLoader installation & configuration
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
├── build.bat                     # PDF generation batch script (root level)
├── conflicts.md                  # Known mod conflicts (excluded from PDF)
├── mod-ideas.md                  # Mod ideas for future development (excluded from PDF)
├── output/
│   └── beyond-the-surface.pdf    # Generated PDF output
└── template/
    └── main.typ                  # Typst 0.15 PDF template
```

## Waves

### Wave 0 — "First Steps" (Vanilla + Minimal QoL)

- **Mods:** UI/QoL only, no gameplay changes. Roughly 5-8 mods (flexible, no forced quota).
- **Guide:** Complete beginner tutorial — controls, first night, NPC housing, full boss progression, class basics, biome order, fishing, potions, hardmode transition.
- **Story:** Narrated by the Guide himself — a warm, slightly sarcastic mentor voice. The Guide greets the player ("Oh, hello there!") and walks them through survival basics in his signature charmingly obvious style ("You'll want to build a house. No, really, you will."). As the journey progresses, the Guide's tone grows genuinely proud, and by Moon Lord's defeat he hints that "other worlds" might need the player's help.

### Wave 1 — "Digging Deeper" (QoL + Light Content)

- **Mods:** QoL + light content expansions. No forced count; add mods that genuinely improve the experience.
- **Guide:** Class specialization deep-dive (melee/ranged/magic/summoner), arena building, farming strategies, event optimization (Pumpkin/Frost Moon, Old One's Army), wiring, advanced housing, biome spread management.
- **Story:** The Guide's voice returns, but something's off — his cheerfulness has an edge, his jokes feel forced. "You're back. I don't... remember why, but I knew you would be." The world has changed: familiar biomes twisted, new horrors in the dark, creatures that shouldn't exist. The Guide's advice grows darker and more cryptic as the player descends. By the end, he admits he doesn't fully understand what's happening — but something is calling from deeper still, and "I won't be able to follow you there."

### Wave 2 — "Beyond the Surface" (Full Overhaul)

- **Mods:** Major content overhauls (Calamity, Thorium), new mechanics, new classes. Player-induced challenge modes (class-locked runs, no-hit challenges, etc.).
- **Guide:** Expert mechanics deep-dive, modded boss progression order, class synergies, post-Moon Lord content, secret seeds, legendary difficulty, player challenge rulesets.
- **Story:** Narrated by an unnamed omnipotent being — ancient, patient, and faintly amused. It has watched the player across three realities. "You have done well, little flame. But what burns brightest casts the longest shadow." The voice guides with detached curiosity, sometimes offering cryptic wisdom, sometimes simply observing. It imposes the player's challenge ("Prove yourself not by what you wield, but by what you choose not to."). The final victory isn't for glory — it's for understanding. "You were never meant to reach the surface. You were meant to learn there isn't one."

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
- **Build:** Root-level `build.bat` runs `typst compile template/main.typ output/beyond-the-surface.pdf`
- **Template:** `template/main.typ` includes all guide files and renders the complete document
- **Excluded from PDF:** `conflicts.md` and `mod-ideas.md` (developer reference only)

### Visual Design

- **Cover page:** Logo centered at top, "Beyond the Surface" title, subtitle with version/date
- **Color palette:** Earth tones (browns, greens) body text. Wave accent colors: Wave 0 = copper/orange, Wave 1 = silver/blue, Wave 2 = gold/purple
- **Typography:** Clean sans-serif body font, stylized/retro pixel headings for game feel
- **Layout:** Top-level table of contents, each wave as a chapter, mod entries as subsections with mechanic impact badges/icons
- **Style:** Colorful but readable, pleasant fonts, game-appropriate theming

## Story Framework

Three connected narratives from three different narrative voices, following one hero across three realities:

- **Wave 0 ("First Steps"):** The Guide as warm, sarcastic mentor — first-person from his perspective. He addresses the player directly as a clueless newcomer he's fond of. Tone: lighthearted, humorous, gradually proud.
- **Wave 1 ("Digging Deeper"):** The Guide again, but unsettled — he's missing memories, the world has changed, and his cheerfulness is cracking. He still tries to help but doesn't understand why everything feels wrong. Tone: bittersweet, increasingly ominous.
- **Wave 2 ("Beyond the Surface"):** An unnamed omnipotent entity replaces the Guide. It has observed the player across all three worlds. It speaks in cryptic, poetic observations and imposes the final challenge. Tone: dark, philosophical, faintly amused.

Each wave's `story.md` is a short narrative (~200-400 words). Wave 0 is first-person ("I am Andrew, your Guide..."). Waves 1-2 are second-person ("You wake up again...") with the respective narrator's interjections.

## tModLoader Setup & Configuration

The guide must include a dedicated setup section covering:

1. **Installing tModLoader:** Via Steam (free, requires base Terraria). Link to Steam store page.
2. **First launch:** tModLoader launches as a separate Steam app. Initial setup takes a few minutes.
3. **Workshop integration:** How to browse and subscribe to mods via Steam Workshop from within tModLoader's main menu.
4. **Mod management:** Enabling/disabling mods, mod configuration menus, load order basics.
5. **Per-wave configuration:** Each wave's guide specifies exactly which mods to enable and any required config changes.
6. **Troubleshooting:** Common issues (out of memory, mod conflicts, version mismatches) and solutions.

This setup section appears in the PDF before Wave 0 content.

## Files NOT in PDF Output

- `conflicts.md` — Known mod incompatibilities, conflicts, and workarounds
- `mod-ideas.md` — Missing mods that would be good additions but don't exist for 1.4.5.6
