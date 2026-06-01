# Elder Wilds

Target build: Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` via Steam

Scope notes:

- No paid Anniversary Edition Creation Club content
- Research categories are organized around five pillars: modern graphics, expanded systems, modernized UI, immersive world scale, and third-person-first gameplay

## Research Workflow

- Work through one category at a time
- For each category, define goals, constraints, candidate mods, compatibility risks, and acceptance criteria
- Do not lock final picks until foundations, graphics baseline, animation framework, and UI framework are validated together
- Prefer mods with active maintenance, clear Steam `1.6.1170` support, strong patch ecosystem, and stable load-order behavior

## Foundations and Compatibility

### Goal

Build a stable technical base for `Elder Wilds` before choosing large visual or gameplay overhauls.

### Constraints

- Must support Skyrim SE/AE runtime `1.6.1170` on Steam
- Must not require paid AE Creation Club content
- Must leave room for heavy graphics, Pandora-based animations, and a third-person-first combat stack
- Must be maintainable in MO2 with clear separators and reproducible tool output

### Decisions To Make

- Confirm exact runtime support for every core dependency on Steam `1.6.1170`
- Choose the mod manager standard and profile layout
- Define ESL and plugin-count rules early
- Decide which bug-fix plugins are mandatory baseline vs optional nice-to-have
- Define the patching toolchain: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, and any LOD or grass generation tools we adopt

### Research Tasks

- Verify the correct `SKSE64` build for Steam runtime `1.6.1170`
- Verify `Address Library for SKSE Plugins` support for `1.6.1170`
- Build a shortlist of engine and bug-fix essentials compatible with this runtime
- Identify required shared frameworks likely needed later by UI, animation, and gameplay mods
- Decide whether `Mod Organizer 2` is the default manager for the project
- Define separator layout for MO2: Core, Graphics, Animations, Gameplay, UI, World, NPCs, Patches, Output
- Define plugin rules:
- Keep hard plugin count visible from day one
- Prefer ESL-flagged or light plugins where safe
- Avoid stacking multiple mods that solve the same low-level problem
- Define conflict-resolution workflow:
- xEdit review after each major category is added
- Separate generated outputs from source mods
- Keep a dedicated patch section for hand-made compatibility patches

### Candidate Baseline To Research

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230>
- `Scrambled Bugs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43532>
- `powerofthree's Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51073>
- `powerofthree's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22854>
- `PapyrusUtil` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13048>
- `MCM Helper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53000>
- `JContainers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16495>
- `Keyword Item Distributor (KID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55728>
- `Spell Perk Item Distributor (SPID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36869>
- `Base Object Swapper (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60805>
- Animation-related engine fixes required by the final stack - specific mod still to be selected
- `Crash Logger SSE AE VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59818>

### Risks To Check

- Some popular framework mods may list AE support broadly, while others require explicit confirmation for Steam `1.6.1170`
- Graphics, animation, and UI frameworks often pull in overlapping requirements that can become messy if chosen out of order
- Bug-fix plugins can overlap in subtle ways; we should avoid redundant low-level tweaks without a reason
- No paid AE content means some mods with soft AE assumptions may need patches or must be excluded

### Acceptance Criteria

- Clean boot to main menu with the baseline framework installed
- New game starts without missing masters or runtime errors
- MCM-related frameworks load correctly where applicable
- Crash logger is installed before heavier categories are tested
- MO2 structure, plugin rules, and patch workflow are documented before moving into graphics

### Working Notes

- Current recommendation: use `Mod Organizer 2` unless a strong reason appears not to
- Treat this section as the non-negotiable base layer for the rest of the list

## Modern Graphics

- Community Shaders core setup
- Community Shaders add-ons and required features
- Physically Based Rendering (PBR) support
- Texture overhauls by material type
- Mesh improvements and parallax support
- Lighting overhaul strategy
- Weather and atmosphere
- Water visuals
- Terrain, roads, and snow
- Flora visuals
- Tree overhauls for dense forests
- LOD generation and distant detail
- DynDOLOD, grass cache, and occlusion workflow
- Character, skin, and creature visuals

## Animations and Movement

- Pandora framework and prerequisites
- Skeleton and behavior prerequisites
- Third-person locomotion animation sets
- Idle animations
- Combat animation packs
- Non-combat interaction animations
- Conditional animation systems
- Camera-aware animation support
- Creature animations
- Animation conflict management

## Third-Person Gameplay

- Third-person camera framework
- Camera presets and shoulder switching
- True directional movement
- Target lock and targeting behavior
- Dodge, sprint, and movement responsiveness
- Hit reactions, stagger, and impact feedback
- Third-person combat systems
- Crosshair and aiming behavior
- Horse camera and mounted controls

## Expanded Systems

- Character creation and starting choices
- Race, standing stone, and progression overhauls
- Perk overhaul compatibility
- Magic system expansion
- Alchemy overhaul
- Cooking and survival-adjacent systems
- Smithing and crafting expansion
- Economy and loot balance
- Religion, needs, or roleplay systems
- Crime, reputation, and social systems
- Followers and companion systems

## Modernized UI

- UI framework prerequisites
- HUD overhaul
- Inventory and item card improvements
- Magic, map, and journal improvements
- Dialogue UI improvements
- Controller-friendly UI support
- UI scaling for ultrawide and high resolution
- Compass, markers, and minimal HUD options
- Crafting menu improvements
- Accessibility and readability improvements

## Immersive Scale and World Feel

- Timescale and calendar adjustments
- Travel pacing and carriage fast travel rules
- Encounter spacing and wilderness feel
- Forest density and regional identity
- Soundscape and ambient audio
- City size, outskirts, and population feel
- Roadside clutter, ruins, and landmark density
- Wildlife and creature ecology
- Night darkness and visibility balance
- Weather severity and seasonal feel

## World Content

- Landscape overhauls
- Cities, towns, and villages
- Inns, farms, and small settlements
- Dungeons and ruins
- Points of interest and roadside content
- New quests that fit the tone
- Player homes and base-building considerations

## NPCs and Creatures

- NPC appearance overhauls
- Enemy variety
- Creature visual overhauls
- Creature behavior improvements
- Civilian and traveler population additions
- Wildlife density and rarity balance

## Audio and Feedback

- Music overhaul strategy
- Ambient audio improvements
- Combat sound effects
- UI sound redesign
- Footsteps, foley, and environmental reverb

## Survival, Difficulty, and Balance

- Difficulty framework
- Combat lethality and pacing
- Enemy AI improvements
- Injury, stamina, and resource pressure
- Survival systems compatibility
- Death, defeat, or respawn handling

## Performance and Technical Workflow

- Performance budgeting by system
- VRAM-heavy mod review
- CPU-heavy script review
- Shader performance impact
- Grass, tree, and draw-call optimization
- INI tuning and display settings
- Save safety considerations
- xEdit, Nemesis/Pandora, DynDOLOD, and synthesis workflow

## Modlist Curation Rules

- Visual style consistency rules
- Lore friendliness rules
- Third-person-first design rules
- Animation quality bar
- Performance target and hardware assumptions
- Preference for lightweight vs feature-rich mods
- Rules for avoiding overlapping overhauls

## Testing Plan

- Fresh game startup checklist
- Character creation test
- Third-person combat test
- City performance test
- Forest traversal test
- Dungeon lighting test
- UI and controller test
- Long-session stability test
