# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay. The entire modlist is designed to be completely played in third-person with a gamepad — no interaction should require first-person or keyboard/mouse alone.
- This modlist is also built around `Legacy of the Dragonborn` as a major collection, museum, and patch-ecosystem pillar rather than treating it as an optional side add-on

## Installation

The full setup and installation guide (Steam config, MO2 setup, SKSE, tool registration, operating rules) lives in [`install.md`](install.md).

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Section Index

The file [`separators.md`](separators.md) is the canonical ordered reference for `Mod Organizer 2` separators.

- `Foundations` → [Foundations and Compatibility](modlist-foundations.md)
- `Graphics` → [Graphics Pipeline](modlist-graphics.md) (parent overview)
  - `Graphics – PGPatcher` → [PGPatcher](modlist-graphics-pgpatcher.md)
  - `Graphics – Community Shaders` → [Community Shaders](modlist-graphics-shaders.md)
  - `Graphics – Textures & Meshes` → [Textures & Meshes](modlist-graphics-textures.md)
  - `Graphics – Lighting` → [Lighting](modlist-graphics-lighting.md)
  - `Graphics – Weather & Water` → [Weather & Water](modlist-graphics-weather.md)
  - `Graphics – Terrain & Flora` → [Terrain & Flora](modlist-graphics-terrain.md)
  - `Graphics – Characters & Creatures` → [Characters & Creatures](modlist-graphics-characters.md)
  - `Graphics – LOD & Distant Detail` → [LOD & Distant Detail](modlist-graphics-lod.md)
- `UI` → [Modernized UI](modlist-ui.md)
- `Animations` → [Animations and Movement](modlist-animations.md)
- `Third-Person` → [Third-Person Gameplay](modlist-third-person.md)
- `Expanded Systems` → [Expanded Systems](modlist-expanded-systems.md) (parent overview)
  - `Expanded Systems – Character & Progression` → [Character & Progression](modlist-expanded-character.md)
  - `Expanded Systems – Magic & Perks` → [Magic & Perks](modlist-expanded-magic.md)
  - `Expanded Systems – Survival & Needs` → [Survival & Needs](modlist-expanded-survival.md)
  - `Expanded Systems – Crafting & Economy` → [Crafting & Economy](modlist-expanded-crafting.md)
  - `Expanded Systems – Followers & Reputation` → [Followers & Reputation](modlist-expanded-followers.md)
- `World Feel` → [Immersive Scale and World Feel](modlist-world-feel.md)
- `World Content` → [World Content](modlist-world-content.md)
- `NPCs` → [NPCs](modlist-npcs.md)
- `Enemies & Creatures` → [Creatures and Enemies](modlist-creatures.md)
- `Audio` → [Audio and Feedback](modlist-audio.md)
- `Survival & Combat` → [Survival, Difficulty, and Balance](modlist-survival-combat.md)
- `Legacy of the Dragonborn` → [Legacy of the Dragonborn](modlist-lotd.md)
- `Testing & Curation` → [Modlist Curation Rules and Testing Plan](modlist-curation.md)
- `Performance` → [Performance and Technical Workflow](modlist-performance.md) (parent overview)
  - Performance Strategy → [Performance Strategy](modlist-performance-strategy.md)
  - Optimization & Configuration → [Optimization & Configuration](modlist-performance-optimization.md)
  - Tool Pipeline → [Tool Pipeline](modlist-performance-tools.md)
  - Bashed Patch & Synthesis Configuration → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md)
  - Testing & Maintenance → [Testing & Maintenance](modlist-performance-testing.md)
- `Adult Content` → [Adult Content](modlist-adult.md)
- `Voicing` → [Main Character Voicing](modlist-voicing.md)
