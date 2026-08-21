# Mod Conflicts & Incompatibilities

> This file is NOT included in the PDF output.

This document tracks known conflicts between mods in this modlist.

## Conflict Categories

- **High** - Will crash the game or break functionality
- **Medium** - May cause visual bugs or minor issues
- **Low** - Minor overlapping edits that can be merged

## Conflict Entries

### Spectre (#9657) vs Brothers In Arms - Ultimate Edition (#11260) — Medium

Spectre's Nexus page states it "contains BiA changes within its files" (with thanks to Lewis Elementary). Both mods touch the same scripts/content.

**Resolution**: Make sure Spectre has priority. Script Merger will surface the overlaps; keep Spectre's versions where they conflict. In the Mod Manager, ensure Spectre loads after (or with higher priority than) Brothers In Arms.

### Upscaled UI - HUD Elements (#9001) vs All Quest Objectives On Map (#943) — Low

Upscaled UI's page states it is incompatible with "any mod that alters the HUD .redswf files", and AQOOM touches the map menu UI/scripts.

**Resolution**: AQOOM's changes are primarily script-level - merge with Script Merger. If a `.redswf` conflict appears, set one mod to win that file (load-order) - both mods remain functional; worst case, one loses its map/HUD visual change while keeping its script behavior.

### Eternal Hunt (#8449) vs SCAAR (#5800) — Low

Both mods modify combat animations (EH adds new movesets/dodges; SCAAR replaces attack/dodge/roll animations).

**Resolution**: Community-verified combination; run Script Merger and resolve any overlapping animation files. If conflicts become unmergeable, SCAAR is the optional one - drop it first.

### Eternal Hunt (#8449) + Spectre (#9657) vs other overhauls — High

Combat Redux (#8515), Blood And Steel (#9674), Lore-Friendly Economy (#7691), and W3EE Redux are all verified mods that deliver similar effects but MUST NOT be stacked with Eternal Hunt/Spectre. Blood And Steel is explicitly incompatible with mods that change attack animations (Eternal Hunt). Combat Redux explicitly warns against other combat overhauls.

**Resolution**: These are documented alternatives, not additions. Do not install them alongside the Wave 2 picks.

### Meadows Remastered (#11762) vs other grass overhauls — High

Meadows is a standalone cross-gen grass overhaul (it replaces the role of the older, Next-Gen-broken Beautiful Grass Mod).

**Resolution**: Do not combine with any other grass mod.

### True Rain (#11603) vs other rain/weather FX mods — High

True Rain rebuilds rain from scratch and is not compatible with other rain mods.

**Resolution**: Do not combine with other rain mods. Also requires DX12 (it will not work in DX11 mode).

### Promotional Atmosphere Lighting Mod (#10322) vs other lighting overhauls — High

Classic lighting mods (STLM #657, Phoenix Lighting Mod #3170, Wiedzmin Lighting Mod #2358, Immersive Lighting, E3FX) are confirmed broken on Next-Gen 4.04 and crash-prone. PALM is the single lighting mod for this modlist.

**Resolution**: Use only PALM. Do not add any other lighting overhaul.

### HD Reworked Project NextGen (#9963) vs older vegetation mods — Medium

HDRP conflicts with older grass mods (e.g. Beautiful Grass Mod).

**Resolution**: Use Meadows Remastered for grass; do not add older vegetation mods on top of HDRP.
