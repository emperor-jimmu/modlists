# Fidelitas Suprema — AI Agent Instructions

## Project Purpose

A 5-wave progressive modlist and gameplay guide for Arma 3 (version 2.20, June 17, 2025). Output is a styled PDF generated via Typst 0.15.

## File Conventions

- Guide content files use `.typ` extension (Typst native markup), NOT `.md`
- Mod lists go in `guide/waves/XX-wave-N/mods.typ`
- Narratives go in `guide/waves/XX-wave-N/narrative.typ`
- Mission recommendations in `guide/waves/XX-wave-N/mission.typ`
- Gameplay or strategy guides go in `guide/waves/XX-wave-N/gameplay-guide.typ` (Wave 0 only) or `guide/waves/XX-wave-N/strategy-guide.typ` (Wave 1 only)
- Each wave has exactly those files — narrative, mods, mission — plus a guide file where specified

## Mod Rules

### Hard Rules (never violate)
- No conflicting mods — check dependency trees and known compatibility
- No porn mods — cosmetic bikini/bathing suit skins allowed; no nudity textures, no sex animation packs, no adult-only Steam Workshop mods
- No redundant mods — if two mods do the same thing, pick the better one
- No cheat/overpower/all-knowing mods — no god mode, no wallhack radar, no infinite stamina, no damage hacks
- Must be compatible with Arma 3 v2.20 — release date June 17, 2025. Use patch release date as heuristic if you cannot determine a specific mod version's compatibility

### Wave 0 Litmus Test (UI/QoL Only)
A mod qualifies for Wave 0 if it ONLY changes:
- Information display (HUD, map markers, unit tracking)
- Interface convenience (inventory sorting, keybinding enhancements)
- Visual clarity without adding new assets

A mod is NOT UI/QoL if it:
- Alters core gameplay mechanics (damage, stamina, weapon handling)
- Changes AI behavior
- Adds new weapons, vehicles, or content
- Modifies the physics or ballistics engine

### Adult Mods Threshold
- Bikini/bathing suit cosmetic skins only
- No nudity textures of any kind
- No sex/animation mods
- If listed on Steam Workshop under "Adult Only," exclude it

## Mod Entry Format

Each mod entry in a wave's `mods.typ` file:

```typst
== #link("https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID")[Mod Name]

- *Type:* Graphics | Content | Mechanics | UI/QoL
- *Mod ID:* `WORKSHOP_ID`
- *Dependencies:* [#link("https://steamcommunity.com/workshop/filedetails/?id=450814997")[CBA_A3]] (omit if none)
- *Description:* One-two sentence summary of what this mod does.
- *System Impact:* What gameplay mechanics this mod changes or adds. Omit section for purely cosmetic mods.
- *Verified:* YYYY-MM-DD
```

## Wave Overview

| Wave | Theme | Mod Tier | Est. Count |
|------|-------|----------|-----------|
| 0 | Basic Training | UI/QoL only | 3–6 |
| 1 | The Spark | Visual/immersion | 8–15 |
| 2 | Steel | Mechanics/Content | 15–25 |
| 3 | Sharp | Mechanics/Realism | 20–35 |
| 4 | The Highest | Full milsim | 30–50+ |

## PDF Build

Run from project root:
```batch
generate-pdf.bat
```

Requires Typst 0.15 in PATH. Output goes to `output\Fidelitas-Suprema.pdf`.

## Working Documents

- `conflicts-mods.md` — Track known mod incompatibilities. NOT included in PDF.
- `mod-ideas.md` — Candidate mods to evaluate later. NOT included in PDF.
