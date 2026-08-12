# Mod Conflicts

Known conflicts between mods in the list and with the mods a user might add later. Entries
marked `[page-stated]` are quoted from the mod's own Nexus page; entries marked
`[inference]` follow the mod pages' shared-file warnings and the guide's "one mod per
feature" rule. This file is **NOT included in the PDF**.

| Mod A | Mod B | Nature of conflict | Resolution | Date |
|-------|-------|--------------------|------------|------|
| Natural Nights (1633) | any mod editing `METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN` | shared night-sky colour file [page-stated] | don't stack; no listed mod currently edits it | 2026-08-12 |
| Better Torch Light (1611) | any mod editing `GCGAMEPLAYGLOBALS.GLOBAL.MBIN` | shared gameplay-globals file [page-stated] | merge via the mod's included AMUMSS Lua script | 2026-08-12 |
| Atmosphere Hover and Reverse (688) | any mod editing `GCSPACESHIPGLOBALS.GLOBAL.MBIN` | shared ship-globals file [page-stated] | merge via the mod's optional Lua script; no listed mod currently edits it | 2026-08-12 |
| No Black Bars (1188) | any mod editing `UI\HUD\HUDBARS.MBIN` or `UI\COMPONENTS\INTERACTION\CINEMATICBARS.MBIN` | shared HUD-bar files [page-stated] | merge via the mod's AMUMSS Lua script | 2026-08-12 |
| Hide or Fade Notifications (914) | any mod editing `UI\HUD\HUDNOTIFICATIONPANEL.MBIN` | shared notification-panel file [page-stated] | don't stack; install only one of the mod's two included folders | 2026-08-12 |
| Instant Text Display (1677) | any mod editing `METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN` | full-file replacement [page-stated] | don't stack | 2026-08-12 |
| Fine LOD (1316) | any mod editing `GCGRAPHICSGLOBALS.GLOBAL` (Classic file), `GCENVIRONMENTGLOBALS.GLOBAL`, or `METADATA/UI/BOOTLOGOPC` | shared graphics/environment files [page-stated] | use Fine LOD Lite if stacking; e.g. Rotating Atmosphere (1662) conflicts — keep out of the list together | 2026-08-12 |
| HD Space Planet Clouds (1083) | Rotating Atmosphere (1662) | no direct conflict, but Rotating Atmosphere conflicts with Fine LOD above | pair only if Fine LOD is removed | 2026-08-12 |
| Multi Biomes (3093) | other planet-generation mods (e.g. Better Planet Generation 797, Redmas packs) | both rewrite biome/planet-generation tables [inference] | one generation mod per list; BPG is stale (2024) and not in the list | 2026-08-12 |
| Exosolar's Grass Fix (1080) | Better Planet Generation (797), Redmas's Fantasy | biome-table conflicts [page-stated on 1080] | not in the list together; Grass Fix is only an alternate idea (see mod-ideas.md) | 2026-08-12 |
| Better Pulse Drive Aim (2573) | Atmosphere Hover and Reverse (688) | both plausibly touch ship flight globals [inference] | different waves (0 vs 1), so never active together in the same wave's profile; if ever co-enabled, merge via Lo2k's article 85 / the hover mod's Lua | 2026-08-12 |
| Any two Lo2k mods | each other | Lo2k mods commonly edit neighbouring global files; the author's merge article (nexusmods.com/nomanssky/articles/85) and compatibility checker (mod 880) cover this | after every game update, run the checker and merge overlapping Lo2k mods with AMUMSS | 2026-08-12 |
