# Tenka Fubu — Total War: Shogun 2 Modlist & Guide

**Date:** 2026-07-25
**Status:** Design (pre-implementation)
**Revision:** 2

## Overview

A curated modlist and companion guide for *Total War: SHOGUN 2* (latest Steam version: patch 1.1.0, build 5934), named **Tenka Fubu** ("All the World Under One Sword"). Uses Creative Assembly's native Mod Manager. Organized into three progressive waves, each with a historical roleplaying narrative, increasing difficulty, a clan-themed visual identity, and a curated mod profile.

## Project Structure

```bash
total-war-shogun-2-modlist/
├── AGENTS.md                        # Session/agent configuration
├── README.md                        # Project overview & setup
├── assets/
│   └── logo.jpg                     # Cover page logo
├── fonts/                           # Bundled fonts for PDF generation
│   ├── CrimsonPro-Regular.ttf
│   ├── CrimsonPro-Bold.ttf
│   ├── NotoSansJP-Regular.ttf
│   └── NotoSansJP-Bold.ttf
├── guide/
│   ├── wave-0/
│   │   ├── 01-setup.typ            # Installation & Mod Manager config
│   │   ├── 02-mods.typ             # Wave 0 mod list (UI/QoL only)
│   │   └── 03-guide.typ            # How-to-play (basic: controls through first 10 turns)
│   ├── wave-1/
│   │   ├── 01-setup.typ            # Installation & load order
│   │   ├── 02-mods.typ             # Wave 1 mod list (graphics, units, factions)
│   │   └── 03-guide.typ            # Strategy & intermediate topics
│   └── wave-2/
│       ├── 01-setup.typ            # Installation, load order, conflict resolution
│       ├── 02-mods.typ             # Wave 2 mod list (overhauls, mechanics)
│       └── 03-guide.typ            # Advanced mechanics & expert play
├── conflicts.md                     # Mod conflicts reference (NOT in PDF output)
├── mod-ideas.md                     # Future mod concepts (NOT in PDF output)
├── typst/                           # Typst source files
│   ├── main.typ                     # Assembles the full document
│   ├── cover.typ                    # Cover page layout
│   └── theme.typ                    # Colors, fonts, styling constants
├── output/                          # Generated PDF (gitignored)
└── generate-pdf.ps1                 # Runs: typst compile typst/main.typ output/Tenka-Fubu-Modlist.pdf
```

**Key decision:** Guide content is written directly in Typst markup (`.typ` files). No .md → .typ conversion layer. Typst markup is already readable and markdown-like. No custom compiler to maintain. The batch file is a one-liner: `typst compile typst/main.typ output/Tenka-Fubu-Modlist.pdf`.

## Mod Manager: Creative Assembly Native

The CA Mod Manager for Shogun 2 is built into the game launcher. Mods are `.pack` files placed in `%ProgramFiles(x86)%/Steam/steamapps/common/Total War Shogun 2/data/`. The launcher reads pack files and presents them in a checklist.

### Load Order: `user.script.txt`

The CA Mod Manager controls load order via:

```
%appdata%/The Creative Assembly/Shogun2/scripts/user.script.txt
```

Each line is:

```
mod "mod_name.pack";
```

Mods load top-to-bottom. Later entries override earlier ones if they touch the same table. The launcher's checkbox UI writes to this file. Manual editing is supported and recommended for precise ordering.

### Pack Types

| Type           | Behavior                                                                                                    |
|----------------|-------------------------------------------------------------------------------------------------------------|
| **Mod pack**   | Appears in launcher. Must be checked on and listed in `user.script.txt`.                                    |
| **Movie pack** | Auto-loads. Does NOT appear in launcher. Always loaded. Avoid ordering conflicts by minimizing movie packs. |
| **Patch pack** | Game-level overrides. Rarely used by mods.                                                                  |

Every wave's `01-setup.typ` must document:

- Where `user.script.txt` is located
- How to verify the launcher recognized installed mods
- The correct load order for that wave's mods
- How to handle pack type conflicts

## Wave Structure

### Wave 0: "The Shimazu Way"

| Aspect             | Detail                                                                                                                                                                                                                                                                                                                                                                                                          |
|--------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Difficulty**     | Beginner (no previous experience required)                                                                                                                                                                                                                                                                                                                                                                      |
| **Clan**           | Shimazu                                                                                                                                                                                                                                                                                                                                                                                                         |
| **Historical Arc** | Unification of Kyushu (c. 1540s–1570s)                                                                                                                                                                                                                                                                                                                                                                          |
| **Mod Profile**    | Vanilla only. At most: UI improvements, bug fixes, QoL mods. No gameplay-changing mods.                                                                                                                                                                                                                                                                                                                         |
| **Color Theme**    | Shimazu white (#FFFFFF) / vermillion-crimson (#B22222) / gold (#D4A017)                                                                                                                                                                                                                                                                                                                                         |
| **Guide Scope**    | Controls, HUD walkthrough, economy basics (food/wealth/ki), province building chain primer, unit recruitment fundamentals, basic army control (formations, terrain, skirmish), how naval transport works, the first 10 turns with a turn-by-turn walkthrough, Realm Divide explained. **Scope boundary: stops at the turn-10 mark. No agent mechanics, no advanced diplomacy, no navy combat, no trade nodes.** |

#### Wave 0 — Roleplaying Narrative

Spring, 1545. The plum blossoms scatter in the mountain passes of Satsuma. You are **Shimazu Takahisa**, sixteenth head of the Shimazu clan — a name ancient as the hills but poor as the dirt your farmers till. The Ito to your north, the Sagara to your east — they laugh at the "southern barbarians" huddled at the edge of the world. They have forgotten what every Shimazu child learns: *the sword that is forged in isolation is the sharpest of all*.

Your father, Tadayoshi, united the Shimazu branches through guile and war. He left you five things: a united clan, an empty treasury, a bitter rivalry with the Ito, the finest katana smiths in all Japan, and one whispered truth — *Kyushu is a coiled snake, and the Shimazu are its fangs*.

Your brother Iehisa commands the eastern forts. He writes of Ito scouts crossing the border, emboldening, testing. Your other brother Yoshihiro drills the ashigaru in the courtyard below your tower even now — the rhythm of bamboo practice spears against wooden shields, the same sound your grandfather heard, and his grandfather before him.

The provincial daimyo of Kyushu — Otomo, Sagara, Ito, Ryuzoji — bicker over rice stores and tax rights while the wider realm burns. Kyoto is a city of whispers. The Ashikaga grow weak. Somewhere beyond the Kanmon Straits, warlords with greater names than yours carve kingdoms from chaos.

But they do not know the hills of Satsuma. They do not know your swords. And they do not know that on this morning, in this tower overlooking Kagoshima Bay, you have resolved that every name in Kyushu will bow to the Shimazu.

A servant enters. "My lord, the scouts have returned from Ito lands." You do not turn. You already know what they found.

*Unification begins with the first step. And the first step is war.*

---

### Wave 1: "Tenka Fubu"

| Aspect             | Detail                                                                                                                                                                                                                                            |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Difficulty**     | Intermediate (player has completed at least one campaign)                                                                                                                                                                                         |
| **Clan**           | Oda                                                                                                                                                                                                                                               |
| **Historical Arc** | Oda Nobunaga's campaign to unify Japan (c. 1560–1582)                                                                                                                                                                                             |
| **Mod Profile**    | Graphics enhancements, new unit packs, faction unlockers, minor gameplay expansions. No total overhauls.                                                                                                                                          |
| **Color Theme**    | Oda crimson (#BA0020) / deep gold (#C8A020) / ink black (#1A1A1A)                                                                                                                                                                                 |
| **Guide Scope**    | Army composition and rock-paper-scissors, counter-unit tactics, agent management (ninja/metsuke/monk), trade node optimization, diplomacy with a focus on not getting Realm-Divided too early, naval intercept fundamentals, religion management. |

#### Wave 1 — Roleplaying Narrative

A wet wind tears across the Owari plain. 1560. Rain hammers the shoulders of two thousand Oda ashigaru, huddled in the shadow of a hill called Okehazama. Across the ravine, twenty-five thousand Imagawa soldiers feast in their tents. They are celebrating. Yoshimoto has already written the poem commemorating his victory.

You are **Oda Nobunaga**, and you are not twenty-five thousand men.

Your generals whisper retreat. Your retainers counsel surrender. Your mother wrote to you this morning, a single line: *"The forest rats are bolder than my son."* You burned the letter in your helmet brazier and watched the smoke curl toward the ceiling.

The Imagawa think you are hiding in Kiyosu Castle, cowering behind walls. They have no scouts in this gorge. They have no fear of a "provincial fool" who wears foreign clothes and dances at funerals. They have forgotten what the Owari know: *madness and greatness share the same gate*.

"Light the signal fires," you say. No one moves. You draw your sword — the steel an Oda smith folded a thousand times, the tang etched with the character for *heaven*. "I said light them."

The flames catch. Five hundred men surge around the hill's eastern face. You lead the rest through the ravine, mud sucking at your waraji, rain streaming from the crest of the Oda five-petal flower on your helmet. The first Imagawa guardsman dies before he finishes his sake. The second dies reaching for his spear. The third — the third is Yoshimoto himself, emerging from his tent in confusion, and you are already there.

Okehazama takes one hour.

When the rain stops, Owari is free. The Imagawa army scatters. The man who would have been Shogun is a corpse on a muddy ridge. And in the sudden, ringing silence, you realize: *the old order can break. You just have to hit it hard enough*.

The world will call you the Demon King. The monks of Mount Hiei will curse your name. The Takeda will send their cavalry screaming down from the mountains. Let them come. Let them all come.

*Tenka Fubu. All under heaven — one sword. Yours.*

---

### Wave 2: "Sekigahara's Shadow"

| Aspect             | Detail                                                                                                                                                                                                                                                                                                                          |
|--------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Difficulty**     | Advanced (player has mastered core systems)                                                                                                                                                                                                                                                                                     |
| **Clan**           | Tokugawa                                                                                                                                                                                                                                                                                                                        |
| **Historical Arc** | The Sekigahara campaign (1598–1600) — Tokugawa Ieyasu vs. Ishida Mitsunari and the Toyotomi loyalists                                                                                                                                                                                                                           |
| **Mod Profile**    | Campaign overhauls, expanded map, deeper mechanics, new building chains, AI improvements, realism mods.                                                                                                                                                                                                                         |
| **Color Theme**    | Tokugawa navy (#0B1D3A) / muted gold (#B8960C) / pale ivory (#F5F0E8)                                                                                                                                                                                                                                                           |
| **Guide Scope**    | Advanced economy (compound growth, province specialization), naval dominance (trade route blockading, Black Ship capture), siege timing and castle build optimization, advanced agent synergies, mod load-order conflict resolution, the "minimal province" Realm Divide strategy, late-game AI behavior exploits and counters. |

#### Wave 2 — Roleplaying Narrative

Summer, 1598. Toyotomi Hideyoshi — the man who pulled Japan from the chaos of a hundred years of war into the fragile peace of his iron fist — draws his last breath in Fushimi Castle. His heir, Hideyori, is five years old.

The Council of Five Elders was supposed to govern until the boy came of age. You are **Tokugawa Ieyasu**, first among those elders, and you know what a council of wolves guarding a lamb looks like. You know because you are the chief wolf.

You have been here before. As a boy, you were a hostage of the Imagawa — a piece on someone else's board. You spent your youth learning patience the way other boys learned the sword: by being shown, repeatedy, that the man who strikes first often strikes wrong. You outwaited the Imagawa. You allied with Nobunaga. You submitted to Hideyoshi — publicly, deeply, with such total sincerity that even the master strategist himself believed it.

Now Hideyoshi is dead, and the only sincerity that remains is in Edo, in the deepening of your fortifications, in the letters you write to every daimyo who might — who *might* — see which way the wind is blowing.

Ishida Mitsunari is no fool. He knows what you are. He is rallying the Toyotomi loyalists, the western clans, the old order that fears you more than death. The Otani, the Ukita, the Shimazu, the Mori — names that could blot out the sun.

But they do not understand the thing they fear. You are not merely powerful. You are patient. You have been patient for forty years. Another six months — another year — of carefully worded letters and strategic marriages and whispered promises will fill your war chest with enough allies to make the western coalition look like a peasant revolt.

The wind through the pines outside Edo Castle carries a question. When the armies meet — and they will meet — will it be at Sekigahara? Somewhere else? And will you be ready?

You set down the cup of tea. It has gone cold. You were a hostage, a vassal, an ally, a servant. Now you will be one more thing.

*A Shogun.*

---

## Mod Entry Template

Each mod in `02-mods.typ` follows:

```typst
=== [Mod Name](https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX)

#table(
  columns: (auto, 1fr),
  stroke: none,
  [*Category*], [Graphics / Gameplay / UI / Units / Overhaul],
  [*Dependencies*], [Mod A, Mod B],
  [*System Impact*], [Description of what this mod changes],
  [*Pack Type*], [Mod pack / Movie pack],
  [*Source*], [Steam Workshop / Total War Center / Nexus Mods],
  [*Last Verified*], [YYYY-MM-DD],
)
```

**Mod data fields:**

- **Category** — one of: Graphics, Gameplay, UI, Units, Overhaul, Audio, Bugfix
- **Dependencies** — required or recommended companion mods (with URLs)
- **System Impact** — what tables/mechanics this mod alters; "None" if purely cosmetic
- **Pack Type** — Mod pack (controllable via user.script.txt) or Movie pack (auto-loads)
- **Source** — where the mod was obtained
- **Last Verified** — date the mod was last confirmed working with the latest game build

### Mod Sourcing Strategy

| Source               | Priority  | Notes                                                                                                                                |
|----------------------|-----------|--------------------------------------------------------------------------------------------------------------------------------------|
| **Steam Workshop**   | Primary   | Largest catalog, auto-updates, most convenient for users                                                                             |
| **Total War Center** | Secondary | Many legendary mods never made it to Workshop (DarthMod variants, historical overhauls). Provide direct download links with mirrors. |
| **Nexus Mods**       | Tertiary  | Smaller Shogun 2 catalog but some quality exclusives                                                                                 |

### Mod Validation Process

When adding a mod to the list, verify:

1. **Last updated date** — on Steam Workshop, check sidebar. If not updated since 2013, flag for deeper review.
2. **Recent comments** — scan the last 2 pages of Workshop comments for keywords: "broken," "crash," "CTD," "doesn't work," "incompatible," "patch."
3. **Total War Center cross-reference** — search the Shogun 2 modding forum for the mod name. Community posts often document breakage that Workshop comments miss.
4. **Manual test (where feasible)** — subscribe, add to `user.script.txt` with no other mods, launch campaign, advance 5 turns. Any CTD = reject.
5. **Document in `conflicts.md`** — any incompatibilities discovered, even with mods from other waves, get recorded.

### Mod Addition Rules

- No conflicting mods (must be cross-referenced in `conflicts.md`)
- No porn mods. Adult/nude content allowed where thematically relevant (e.g., historically accurate geisha art) — ask user if uncertain.
- No redundant mods (two mods that change the same table in the same way)
- Must pass validation process above
- No cheating, overpowered, or "all-knowing" mods (infinite money, map-wide vision, god-mode units)
- Wave 0: UI improvements, bug fixes, QoL only. No gameplay changes whatsoever.
- Wave 1: Graphics, new units, faction unlocks. Minor gameplay expansion allowed. No overhauls.
- Wave 2: Full overhauls, expanded mechanics, deeper systems allowed.

## PDF Generation

### Engine

- **Typst 0.15** CLI
- Triggered via: `generate-pdf.ps1`
- Batch file content (trivial — no conversion layer):

  ```powershell
  typst compile typst/main.typ output/Tenka-Fubu-Modlist.pdf
  ```

### Pipeline

```
guide/*.typ → typst/main.typ (includes) → typst compile → output/Tenka-Fubu-Modlist.pdf
```

No intermediate formats. Guide content is authoring in Typst markup directly. `main.typ` uses `#include` directives to pull in each wave's sections. The theme.typ file defines all styling.

### Fonts

| Role                        | Font                        | Source                      | CJK Support             |
|-----------------------------|-----------------------------|-----------------------------|-------------------------|
| **Body text**               | Crimson Pro (Regular, 11pt) | Bundled in `fonts/`         | Latin only              |
| **Headings**                | Crimson Pro (Bold, 14-24pt) | Bundled in `fonts/`         | Latin only              |
| **CJK fallback (body)**     | Noto Sans JP (Regular)      | Bundled in `fonts/`         | Full Japanese + Chinese |
| **CJK fallback (headings)** | Noto Sans JP (Bold)         | Bundled in `fonts/`         | Full Japanese + Chinese |
| **Code / tables**           | Cascadia Code               | Ships with Typst (built-in) | N/A                     |

Fonts are bundled in the `fonts/` directory to guarantee consistent output regardless of system. Typst's `#text(font: ...)` uses these paths. For any text containing Japanese characters (clan names, historical terms, mod names with Japanese text), Noto Sans JP handles rendering; Latin text uses Crimson Pro.

### Style Guide

| Element                  | Specification                                                                                                                                                                      |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Paper**                | A4, 1-inch margins                                                                                                                                                                 |
| **Cover**                | Full page with `assets/logo.jpg` centered, title "Tenka Fubu" (48pt Crimson Pro Bold, Oda crimson), subtitle "Total War: Shogun 2 — Modlist & Guide", wave selector text at bottom |
| **Wave separators**      | Each wave begins on a new page with an intro block in that wave's clan color palette                                                                                               |
| **Wave 0 palette**       | Shimazu white (#FFFFFF bg accents) / vermillion (#B22222 headings) / gold (#D4A017 accents)                                                                                        |
| **Wave 1 palette**       | Oda crimson (#BA0020 headings) / deep gold (#C8A020 accents) / ink black (#1A1A1A body)                                                                                            |
| **Wave 2 palette**       | Tokugawa navy (#0B1D3A headings) / muted gold (#B8960C accents) / pale ivory (#F5F0E8 bg)                                                                                          |
| **Global body text**     | Crimson Pro, 11pt, justified, dark gray (#2D2D2D) on ivory background (#FCFAF5)                                                                                                    |
| **Global headings**      | Crimson Pro Bold, wave-color per wave section                                                                                                                                      |
| **Links**                | Colored underline per wave theme, clickable in PDF                                                                                                                                 |
| **Code / config blocks** | Dark background (#1D2433), Cascadia Code, light text (#A2AABC), rounded corners                                                                                                    |
| **Tables**               | Alternating row background, wave-accent-color header row                                                                                                                           |
| **TOC**                  | Auto-generated via `#outline()` after cover page                                                                                                                                   |
| **Page numbers**         | Footer, centered, "Page X of Y"                                                                                                                                                    |
| **Cover page**           | No page number                                                                                                                                                                     |

### Excluded from PDF

- `conflicts.md` — internal reference
- `mod-ideas.md` — future planning
- Intermediate/temp files (if any) in `output/`

## Non-PDF Files

| File           | Purpose                                                                                                                                               |
|----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|
| `conflicts.md` | Living document tracking known mod incompatibilities. Updated as mods are added or discovered to conflict. Cross-referenced when validating new mods. |
| `mod-ideas.md` | Wishlist of mods to develop or commission. Describes gaps in the current mod landscape that could be filled. Organized by wave/category.              |

Both files are project-internal, never included in the PDF output, and gitignored from the output directory.

## Output Directory

`output/` is gitignored. Contains:

- `Tenka-Fubu-Modlist.pdf` — the generated PDF (the only deliverable)
- Any temporary build artifacts from Typst are cleaned up by Typst itself

## Constraints

1. **Latest version only** — all mods must be compatible with Total War: SHOGUN 2 patch 1.1.0 (build 5934, September 2013). This is the definitive, final Steam version. Use the mod validation process described above.
2. **No total conversion mods** unless they fit the wave's scope and don't conflict with other selected mods.
3. **Native Mod Manager** — every wave's `01-setup.typ` includes `user.script.txt` location, load order, and pack type instructions.
4. **Content accuracy** — guide content must reflect actual game mechanics for the modded state. Test claims before writing them.
5. **Font bundling** — all PDF fonts must be in the `fonts/` directory. No external font dependencies for the build pipeline.
