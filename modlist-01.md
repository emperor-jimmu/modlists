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
- Decide which bug-fix plugins are mandatory baseline vs optional, with `Unofficial Skyrim Special Edition Patch - USSEP` owned here in section `01` as part of the foundational record-fix layer
- Define the patching toolchain and conflict-resolution workflow: xEdit review after each major category is added, generated outputs kept separate from source mods, and a dedicated patch section for hand-made compatibility patches (tools: xEdit, Pandora, DynDOLOD, Synthesis, BodySlide, plus any LOD or grass generators adopted)
- Follow the MO2 separator layout maintained in `separators.md` rather than redefining it here

## Research Tasks

- Verify the correct `SKSE64` build for Steam runtime `1.6.1170`
- Verify `Address Library for SKSE Plugins` support for `1.6.1170`
- Build a shortlist of engine and bug-fix essentials compatible with this runtime
- Identify required shared frameworks likely needed later by UI, animation, and gameplay mods
- Select the animation-related engine fixes the final stack needs, coordinated with `modlist-03.md`

## Candidate Baseline To Research

- `SKSE64` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30379>
- `Address Library for SKSE Plugins` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32444>
- `Unofficial Skyrim Special Edition Patch - USSEP` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/266> (foundational record patch owned by section `01`)
- `SSE Engine Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/17230>
- `SSE Display Tweaks` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/34705> (mandatory baseline for display behavior, frame pacing, and frame-cap control)
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
- `SkyPatcher` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106659> (SKSE-plugin engine tweak framework; hard requirement of section 09 wildlife/AI mods and broadly useful as a vanilla-record patcher layer)
- `RaceMenu SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29624> (SKSE-plugin character creation overhaul; also satisfies `SKEE` requirement of `EFF - Extensible Follower Framework` from section 05)
- `Dual Casting Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/92454> (powerofthree SKSE-plugin bugfix; hard requirement of `Blade and Blunt` from section 11)
- `Andrealphus' Papyrus Functions` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/85252> (SKSE-plugin Papyrus utility; hard requirement of `Dragon War` from section 09)
- `ConsoleUtilSSE NG` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/76649> (SKSE-plugin console utility; shared hard requirement of `Dragon War` from section 09 and several animation behaviour mods from section 03)
- `Kris's Papyrus Extender` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115164> (SKSE-plugin Papyrus utility; hard requirement of `Bathing in Skyrim - Renewed` from section 05)
- `Animation Queue Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82395> (animation-stack stability fix for heavy `Open Animation Replacer` / behavior loads; strongest current answer to the section's animation-engine placeholder)
- `Particle Patch` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65720> (particle shader/LOD corrections; originally ENB-focused but compatible with `Community Shaders` and vanilla game. 26k endorsements, updated Mar 2026)
- `Assorted Mesh Fixes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/32117> (mesh correction collection for common visual errors; lightweight, no dependencies)
- `Unofficial Material Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/21027> (corrects material records used by `Community Shaders` PBR pipeline, 21k endorsements)
- `Flickering Meshes Fix` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/53957> (resolves distant-object mesh flicker in landscape transitions)


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
- `SSE Display Tweaks` is part of that mandatory base layer, not an optional later tuning mod
