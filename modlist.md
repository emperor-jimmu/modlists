# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay

## Setup And Installation Guide

### Core Setup Goals

- Build and maintain `Elder Wilds` through `Mod Organizer 2` with clean separators and reproducible generated output
- Keep the setup aligned to Steam runtime `1.6.1170`
- Separate source mods, generated outputs, patches, and downloads clearly enough that rebuilds and troubleshooting stay manageable

### Recommended Base Toolchain

- `Mod Organizer 2` as the main mod manager and profile system
- `SKSE64` and `Address Library for SKSE Plugins` as the runtime baseline
- `SSEEdit` for conflict review, patch inspection, cleaning guidance, and record-level troubleshooting
- `Wrye Bash` for later leveled-list and compatibility review where it still adds value
- `Synthesis` for selective patcher-based automation once the stack is stable enough to justify it
- `Cathedral Assets Optimizer` for asset cleanup and conversion tasks when a mod actually needs it
- `BethINI Pie` for baseline INI management and graphics/settings normalization
- `xLODGen`, `TexGen`, and `DynDOLOD` for terrain/object/tree distant detail workflow
- `BodySlide and Outfit Studio` for the chosen body pipeline
- `Pandora Behaviour Engine Plus` for animation behavior generation

### MO2 Setup

- Create at least one clean working profile for `Elder Wilds` before major category testing
- Use consistent MO2 separators such as `Core`, `Graphics`, `Animations`, `Gameplay`, `UI`, `World`, `NPCs`, `Patches`, and `Output`
- Keep generated outputs in their own enabled mods, not mixed into source mods
- Register external tools through MO2 so every build step runs against the same profile and virtual file system

### Baseline Tools To Register In MO2

- `SKSE64`
- `SSEEdit`
- `Wrye Bash`
- `Synthesis`
- `BethINI Pie`
- `BodySlide x64.exe`
- `Pandora`
- `xLODGen`
- `TexGen`
- `DynDOLOD`

### Cleanup And Validation Workflow

- Confirm runtime compatibility before installing any SKSE-dependent plugin
- Keep a dedicated patch/output section in MO2 for generated files and hand-made compatibility work
- Use `SSEEdit` after each major category to review conflicts instead of waiting until the whole list is assembled
- Rebuild generated outputs after major changes to bodies, animations, grass, LOD, or other systems that produce artifacts
- Document manual fixes and tool-specific decisions directly in this repository so the plan stays reproducible

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Section Index

Each second-level section of the plan now lives in its own numbered file. The companion file [mods-checklist.md](mods-checklist.md) lists every referenced mod with its Nexus URL as a download checklist. The file [separators.md](separators.md) is the canonical ordered reference for `Mod Organizer 2` separators derived from this structure.

- [Foundations and Compatibility](modlist-01.md)
- [Modern Graphics](modlist-02.md)
- [Animations and Movement](modlist-03.md)
- [Third-Person Gameplay](modlist-04.md)
- [Expanded Systems](modlist-05.md)
- [Modernized UI](modlist-06.md)
- [Immersive Scale and World Feel](modlist-07.md)
- [World Content](modlist-08.md)
- [NPCs and Creatures](modlist-09.md)
- [Audio and Feedback](modlist-10.md)
- [Survival, Difficulty, and Balance](modlist-11.md)
- [Performance and Technical Workflow](modlist-12.md)
- [Modlist Curation Rules](modlist-13.md)
- [Testing Plan](modlist-14.md)
- [Targeted Bugfix Mods](modlist-15.md)
