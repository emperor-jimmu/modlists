# Mythic Crucible — Design Spec

**Date:** 2026-07-31
**Game:** Baldur's Gate 3
**Target Version:** Hotfix #36 / Patch 8 (April 15, 2025)
**Mod Organizer:** BG3 Mod Manager (BG3MM)

---

## Overview

"Mythic Crucible" is a structured 2-wave modlist + game guide for Baldur's Gate 3. Each wave is a distinct, progressively deeper new-game setup with its own roleplaying context and backstory.

| Wave | Audience            | Content Focus                                                    | Mod Philosophy                                                  | Mod Count |
|------|---------------------|------------------------------------------------------------------|-----------------------------------------------------------------|-----------|
| 0    | Complete beginners  | Getting started, character building, builds, important mechanics | Vanilla + UI/QoL + lightweight graphics                         | ~10-20    |
| 1    | Experienced players | Advanced strategy, deeper systems                                | New content + mechanics + heavy graphics (no pure power spikes) | 50+       |

---

## Wave Roleplaying Contexts

### Wave 0 — "First Steps into Faerun"

*You awaken on the nautiloid with nothing but fragmented memories and a tadpole behind your eye. The world is brutal, unfamiliar, and unforgiving. You are not yet a hero — you are a survivor, learning the rules of a world that does not care whether you live or die. Every conversation could be your last. Every battle is a lesson. Your only advantage: a keener eye for detail and smoother tools than fate intended (UI/QoL mods). This is your origin story.*

### Wave 1 — "Mythic Crucible"

*You've walked this path before. You know the faces, the betrayals, the choices that await. But the Weave has shifted — new powers stir, forgotten races emerge from shadow, and the gods themselves seem to be rewriting the rules of engagement. The Sword Coast is bigger, darker, and more dangerous than you remember. This time, you're not just surviving — you're testing the limits of what a mortal can become. The crucible awaits.*

---

## Project Structure

```bash
baldurs-gate-3/
├── AGENTS.md                       # Project-specific agent instructions
├── README.md                       # Modlist overview, quick-start summary
├── STATUS.md                       # Living decision log
├── mod-ideas.md                    # Future ideas (not in PDF)
├── conflicts-mods.md               # Known conflicts (not in PDF)
├── build.bat                       # One-click PDF regeneration script
├── assets/
│   └── logo.jpg
├── guide/
│   ├── 00-cover.md                 # Cover page content
│   ├── 00-toc.md                   # Table of contents
│   ├── 01-installation.md          # BG3MM install + mod setup
│   ├── 02-wave-0-guide.md          # Beginner's guide + roleplaying intro
│   ├── 03-wave-0-modlist.md        # Wave 0 mod entries
│   ├── 04-wave-1-guide.md          # Advanced strategy + roleplaying intro
│   └── 05-wave-1-modlist.md        # Wave 1 mod entries
├── output/
│   └── mythic-crucible.pdf
└── build.typ                        # Typst 0.15 document assembly
```

---

## Wave Transition Strategy

- **New save required:** Wave 1 is not an "upgrade" to a Wave 0 playthrough. It's a fresh start with a heavier mod set — many mods (new races, subclasses, quests) require a new game to function.
- **Guided replay:** Players should complete a Wave 0 playthrough to learn the game, then start a fresh Wave 1 game with deeper knowledge and richer content.
- **Wave 0 mods are a subset of Wave 1:** All Wave 0 mods (UI/QoL, bug fixes, lightweight graphics) carry forward into Wave 1. Players already know how BG3MM works from Wave 0 install.
- **The Wave 1 guide assumes Wave 0 knowledge:** It references concepts from the Wave 0 guide without re-explaining basics.

---

## Mod Categories

### Wave 0

- Bug Fixes & Community Patches
- UI Enhancements (inventory, tooltips, camera, controls)
- Quality of Life (sorting, auto-loot, faster animations)
- Lightweight Graphics (texture improvements, lighting — visual polish, no gameplay change)

### Wave 1

- Graphics & Visuals (full texture overhauls, shaders, environments)
- Character Creation (faces, hair, tattoos, body models, scars)
- Classes & Subclasses (new and expanded)
- Races (new playable races)
- Spells (new spells, cantrips, spell tweaks)
- Feats & Progression
- Equipment (weapons, armor, clothing, accessories)
- Companions & NPCs (appearance, behavior, new companions)
- Quests & Areas (new content, expanded areas)
- Combat & Difficulty (AI, encounters, balance)
- Gameplay Mechanics (new systems, rule changes)
- Romance & Adult (enhanced scenes, body models, relationship systems)
- UI/QoL (continuation + expansion from Wave 0)

---

## Mod Entry Format

```markdown
### Mod Name
- **URL:** [Nexus Mods link]
- **Version:** x.y.z
- **Description:** 3-5 lines — what the mod does, how it changes the game, and why it's included in this modlist. Can be adapted from the mod page.
- **Dependencies:** [list or "None"]
- **Category:** [category name]
- **Notes:** Load order, configuration tips, known issues
```

The Description field covers both intent and impact — no separate "Impact" field.

---

## Curation Rules

### Allowed

- Graphics / visual improvements
- New content
- New mechanics (Wave 1 only)
- Adult / nude content where thematically relevant

### Forbidden

- Conflicting mods
- Meme / joke mods
- Explicit porn mods (adult/nude is OK if relevant)
- Redundant mods
- Cheating / overpowered / all-knowing mods
- Any mod not supporting Patch 8 / Hotfix #36 (April 15, 2025)

### Verification

- No fabrication — never invent mod names, URLs, authors, versions, or descriptions
- Every mod must be verified via Nexus Mods (Playwright browser or fetch)
- Mods last updated before September 2024 are flagged as likely incompatible
- Unverified mods go to `mod-ideas.md`, not the guide
- Conflicts documented in `conflicts-mods.md`

### Decision Tracking

- Every accepted and rejected mod logged in `STATUS.md` with reason
- STATUS.md is the living decision log for the project

---

## PDF Generation

- **Engine:** Typst 0.15.x
- **Build pipeline:** `build.typ` is a Typst document that imports/converts content from `guide/*.md` files. Since Typst does not natively read Markdown, the build script (`build.bat`) pre-processes `.md` files into Typst-compatible format using a Node.js or Python converter script before invoking `typst compile`.
- **Launcher:** `build.bat` handles the full pipeline (convert → compile → output PDF)
- **Styling:** BG3-themed — dark fantasy palette (deep purples, golds, dark backgrounds), high-contrast text, pleasant readable fonts
- **Required pages:** Cover (name + logo.jpg), TOC, installation instructions, complete guide + modlist for both waves
- Context7 MCP used during implementation for Typst 0.15 API reference

---

## Guide Content Scope

### Wave 0 Guide (`02-wave-0-guide.md`)

- Roleplaying intro: "First Steps into Faerun"
- Getting started — installation, first launch, basic controls
- Character creation deep-dive — races, classes, backgrounds, ability scores, skills
- Recommended beginner builds: 2-3 builds with full explanation (stats, leveling path, gear priorities, playstyle)
- Important mechanics: action economy (actions, bonus actions, reactions), short/long rests, inspiration, dialogue checks, skill checks, saving throws, concentration, advantage/disadvantage
- Combat fundamentals: initiative, positioning, surfaces, shove/jump/throw
- Early-game tips: party composition basics, key Act 1 NPCs, what to do before leaving the nautiloid, camp supplies management
- Common pitfalls: friendly fire, failing dialogue checks isn't game over, respeccing is cheap

### Wave 1 Guide (`04-wave-1-guide.md`)

- Roleplaying intro: "Mythic Crucible"
- Advanced character building: multiclass synergies (full caster dips, martial splits), feat tier list and combinations, attribute breakpoints, respec timing
- Deeper mechanics: initiative formula and manipulation, surface interactions and elemental combos, stealth and surprise rounds, action surge optimization, legendary actions and legendary resistance
- Party optimization: role coverage, skill monkey builds, support vs. control vs. striker vs. tank, camp caster buff strategy
- Economy: gold farming methods, vendor refresh mechanics, pickpocket strategies
- Mod integration: how new classes/subclasses/races interact with base systems, which mod-added spells are worth picking, how modded difficulty/combat mods change encounter planning
- Late-game and post-campaign: legendary item locations, optimal Act 3 routing, epilogue mechanics
