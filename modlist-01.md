# Foundations and Compatibility

## Goal

Build a stable technical base for `Elder Wilds` before choosing large visual or gameplay overhauls.

## Constraints

- Must support Skyrim SE/AE runtime `1.6.1170` on Steam
- Must not require paid AE Creation Club content
- Must leave room for heavy graphics, Pandora-based animations, and a third-person-first combat stack
- Must be maintainable in MO2 with clear separators and reproducible tool output

## Decisions To Make

- Confirm exact runtime support for every core dependency on Steam `1.6.1170`
- Choose the mod manager standard and profile layout (current lean: `Mod Organizer 2`)
- Define ESL and plugin-count rules: keep the hard plugin count visible from day one, prefer ESL-flagged or light plugins where safe, and avoid stacking multiple mods that solve the same low-level problem
- Decide which bug-fix plugins are mandatory baseline vs optional, and confirm where `Unofficial Skyrim Special Edition Patch - USSEP` ownership lives relative to `modlist-14.md`
- Define the patching toolchain and conflict-resolution workflow: xEdit review after each major category is added, generated outputs kept separate from source mods, and a dedicated patch section for hand-made compatibility patches (tools: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, plus any LOD or grass generators adopted)
- Follow the MO2 separator layout maintained in `separators.md` rather than redefining it here

## Research Tasks

- Verify the correct `SKSE64` build for Steam runtime `1.6.1170`
- Verify `Address Library for SKSE Plugins` and `Backported Extended ESL Support` support for `1.6.1170`
- Build a shortlist of engine and bug-fix essentials compatible with this runtime
- Identify required shared frameworks likely needed later by UI, animation, and gameplay mods
- Select the animation-related engine fixes the final stack needs, coordinated with `modlist-03.md`

## Candidate Baseline To Research

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- `Backported Extended ESL Support` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106441>
- `Unofficial Skyrim Special Edition Patch - USSEP` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/266> (foundational record patch; confirm ownership boundary with `modlist-14.md`)
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230>
- `SSE Display Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34705>
- `Scrambled Bugs` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/43532>
- `powerofthree's Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/51073>
- `powerofthree's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/22854>
- `PapyrusUtil` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/13048>
- `MCM Helper` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53000>
- `JContainers` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16495>
- `Keyword Item Distributor (KID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/55728>
- `Spell Perk Item Distributor (SPID)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/36869>
- `Base Object Swapper (BOS)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/60805>
- `Crash Logger SSE AE VR` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/59818>
- Animation-related engine fixes required by the final stack - specific mod still to be selected

## Risks To Check

- Some popular framework mods may list AE support broadly while others require explicit confirmation for Steam `1.6.1170`
- Graphics, animation, and UI frameworks often pull in overlapping requirements that can become messy if chosen out of order
- Bug-fix plugins can overlap in subtle ways; avoid redundant low-level tweaks without a reason
- No paid AE content means some mods with soft AE assumptions may need patches or must be excluded

## Acceptance Criteria

- Clean boot to main menu with the baseline framework installed
- New game starts without missing masters or runtime errors
- MCM-related frameworks load correctly where applicable
- Crash logger is installed before heavier categories are tested
- MO2 structure, plugin rules, and patch workflow are documented before moving into graphics

## Working Notes

- Treat this section as the non-negotiable base layer for the rest of the list
