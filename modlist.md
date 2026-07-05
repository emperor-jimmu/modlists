# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay. The entire modlist is designed to be completely played in third-person with a gamepad — no interaction should require first-person or keyboard/mouse alone.
- This modlist is also built around `Legacy of the Dragonborn` as a major collection, museum, and patch-ecosystem pillar rather than treating it as an optional side add-on

## Installation

The full setup and installation guide (Steam config, MO2 setup, SKSE, tool registration, operating rules) lives in [`install.md`](install.md).

## Separator Numbering Note

MO2 separator numbers differ from file numbering in sections 03-06. Separators reflect MO2 left-pane load order:

| MO2 Separator | File            | Section Title           |
|---------------|-----------------|-------------------------|
| `03`          | `modlist-04.md` | Animations and Movement |
| `04`          | `modlist-05.md` | Third-Person Gameplay   |
| `05`          | `modlist-06.md` | Expanded Systems        |
| `06`          | `modlist-03.md` | Modernized UI           |

All other numbers match (separator `01` = file `01`, separator `07` = file `07`, etc.). See [`separators.md`](separators.md) for the full reference.

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Section Index

Each second-level section of the plan now lives in its own numbered file. The file [separators.md](separators.md) is the canonical ordered reference for `Mod Organizer 2` separators derived from this structure.

- `01` → [Foundations and Compatibility](modlist-01.md)
- `02` → [Graphics Pipeline](modlist-02.md) (parent overview)
  - `02a` → [PGPatcher](modlist-02a.md)
  - `02b` → [Community Shaders](modlist-02b.md)
  - `02c` → [Textures & Meshes](modlist-02c.md)
  - `02d` → [Lighting](modlist-02d.md)
  - `02e` → [Weather & Water](modlist-02e.md)
  - `02f` → [Terrain & Flora](modlist-02f.md)
  - `02g` → [Characters & Creatures](modlist-02g.md)
  - `02h` → [LOD & Distant Detail](modlist-02h.md)
- `03` → [Modernized UI](modlist-03.md)
- `04` → [Animations and Movement](modlist-04.md)
- `05` → [Third-Person Gameplay](modlist-05.md)
- `06` → [Expanded Systems](modlist-06.md) (parent overview)
  - `06a` → [Character & Progression](modlist-06a.md)
  - `06b` → [Magic & Perks](modlist-06b.md)
  - `06c` → [Survival & Needs](modlist-06c.md)
  - `06d` → [Crafting & Economy](modlist-06d.md)
  - `06e` → [Followers & Reputation](modlist-06e.md)
- `07` → [Immersive Scale and World Feel](modlist-07.md)
- `08` → [World Content](modlist-08.md)
- `09` → [NPCs and Creatures](modlist-09.md)
- `10` → [Audio and Feedback](modlist-10.md)
- `11` → [Survival, Difficulty, and Balance](modlist-11.md)
- `12` → [Legacy of the Dragonborn](modlist-12.md)
- `13` → [Modlist Curation Rules and Testing Plan](modlist-13.md)
- `14` → [Performance and Technical Workflow](modlist-14.md) (parent overview)
  - `14a` → [Performance Strategy](modlist-14a.md)
  - `14b` → [Optimization & Configuration](modlist-14b.md)
  - `14c` → [Tool Pipeline](modlist-14c.md)
  - `14d` → [Bashed Patch & Synthesis Configuration](modlist-14d.md)
  - `14e` → [Testing & Maintenance](modlist-14e.md)
- `15` → [Adult Content](modlist-15.md)
- `16` → [Main Character Voicing](modlist-16.md)
