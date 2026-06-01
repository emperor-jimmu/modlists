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
- Choose the mod manager standard and profile layout
- Define ESL and plugin-count rules early
- Decide which bug-fix plugins are mandatory baseline vs optional nice-to-have
- Define the patching toolchain: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, and any LOD or grass generation tools we adopt

## Research Tasks

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

## Candidate Baseline To Research

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

## Risks To Check

- Some popular framework mods may list AE support broadly, while others require explicit confirmation for Steam `1.6.1170`
- Graphics, animation, and UI frameworks often pull in overlapping requirements that can become messy if chosen out of order
- Bug-fix plugins can overlap in subtle ways; we should avoid redundant low-level tweaks without a reason
- No paid AE content means some mods with soft AE assumptions may need patches or must be excluded

## Acceptance Criteria

- Clean boot to main menu with the baseline framework installed
- New game starts without missing masters or runtime errors
- MCM-related frameworks load correctly where applicable
- Crash logger is installed before heavier categories are tested
- MO2 structure, plugin rules, and patch workflow are documented before moving into graphics

## Working Notes

- Current recommendation: use `Mod Organizer 2` unless a strong reason appears not to
- Treat this section as the non-negotiable base layer for the rest of the list
