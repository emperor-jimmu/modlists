# STATUS — Only Monsters Remain (The Witcher 3)

**Target:** The Witcher 3: Wild Hunt — Game of the Year Edition, **v4.04** (July 19, 2023, Next-Gen Update).
**Mod manager:** Witcher 3 Mod Manager (Nexus #2678).
**Toolchain:** Ultimate ASI Loader + Mod Limit Adjuster (mod limit) + Script Merger (#484).

## Legend

- [x] = completed
- [ ] = pending
- [!] = blocked

## Completed

### Wave 0 — A Witcher's Apprentice (Vanilla+QoL, pre-existing)
- [x] Wave 0 modlist was already complete: ASI Loader, Mod Limit Adjuster (#3711), Script Merger (#484), Community Patch Shared Imports (#2110) / Menu Strings (#3650) / Bootstrap and Utilities (#2109), Brothers In Arms - Ultimate Edition (#11260), Clever Main Menu Redux (#12271).

### Wave 1 — A Witcher's Journey (graphics/content/UI) — 2026-08-21
- [x] Adopted **HD Reworked Project NextGen Edition** (#9963, HalkHogan) — 4K environment overhaul.
- [x] Adopted **Characters Reworked Project** (#7840, cnfilmm) — 4K character faces/skin.
- [x] Adopted **HD Monsters Reworked** (#3580) + **HD Animals Reworked** (#5405) (Denroth) — monster/wildlife textures.
- [x] Adopted **Meadows Remastered** (#11762, Maidenfan724) — standalone cross-gen grass overhaul (replaces the Next-Gen-broken Beautiful Grass role).
- [x] Adopted **UHD Oaks Redux** (#8013), **New Clouds** (#3315), **No Dirty Lens Effect** (#347) — small texture-layer mods.
- [x] Adopted **Promotional Atmosphere Lighting Mod (PALM)** (#10322, BoneDoctor21) — the single Next-Gen lighting mod.
- [x] Adopted **True Rain** (#11603, Jaxonic) — rain overhaul (DX12 required).
- [x] Adopted **Improved Sign Effects Next Gen** (#7369) — Sign FX (Next-Gen file).
- [x] Adopted content: **Tales of The Witcher - Cintra** (#9745, Gerwant), **A Witcher Can Hide Another** (#9453, NGCLS/nikich340 et al.), **The Spider and The Wolf** (#9803, Dwhyx & Beoronick), **Impostor Community DLC** (#9812, WildXipster), **The Great Arena - Shadow of Lawlessness** (#9554, Drunk_Steep).
- [x] Adopted UI/QoL: **All Quest Objectives On Map** (#943, Wolfmark), **Upscaled UI - HUD Elements** (#9001, Tinnaib), **Better Torches Next-Gen** (#7186, Phaz42).

### Wave 2 — Master Witcher (mechanics/overhauls) — 2026-08-21
- [x] Adopted **Eternal Hunt** (#8449, apokryphos) — combat/content overhaul (pairs with Spectre; requires HoS+BaW).
- [x] Adopted **Spectre** (#9657, apokryphos) — economy/alchemy/weight overhaul (Ghost Mode concepts; designed for Eternal Hunt; new game required).
- [x] Adopted **SCAAR - Smooth Combat And Animations Redux** (#5800, WolvenWorkshop) — optional animation feel layer.
- [x] Adopted **Stronger Monster Status Effects** (#3883) — monster-inflicted status effects (difficulty).

## Decisions

- **Version target is v4.04 (Next-Gen), July 19, 2023.** All mods tagged "Next-Gen Update Compatible", REDkit-made, or verified live on 4.04. Classic (1.32-era) mods are excluded.
- **No-fabrication rule applied.** Every Nexus ID was verified against the live Nexus page (headless browser page reads for 15+ mods; direct content-negotiation page read for Spectre; 2+ independent sources citing exact URLs for the rest). Where an ID could not be confirmed, the mod is excluded and listed as unverified rather than guessed.
- **Excluded (lighting):** STLM (#657), Phoenix Lighting Mod (#3170), Wiedzmin Lighting Mod (#2358), Immersive Lighting, E3FX — classic-era lighting overhauls confirmed broken/crash-prone on Next-Gen 4.04. PALM is the single lighting mod.
- **Excluded (classic-era, never ported):** Ghost Mode (#992), Enhanced Targeting — 1.32-only, never updated for 4.0x.
- **Excluded (fragile Next-Gen ports):** Friendly HUD (script errors on 4.04 requiring manual fixes), Colored Map Markers (no Next-Gen port; broken .redswf).
- **Excluded (distribution not reliably on Nexus):** W3EE Redux — community-confirmed Next-Gen compatible and the closest match to the wave's design goals, but its Nexus page/ID is unreliable (ID 3521 resolves to a different mod; distribution moved to GitHub/Discord). Replaced by the actively maintained Eternal Hunt + Spectre pair.
- **Excluded (stacking/alternatives):** Combat Redux (#8515), Blood And Steel (#9674), Lore-Friendly Economy (#7691), ESGO (#1185) — verified mods that must not stack with Eternal Hunt/Spectre; documented as alternatives in the Wave 2 modlist.
- **Excluded (content):** Song of Wind (#9742) — WIP (v0.1.1), author advises against combining with other major mods (modifies core files); The Price of Neutrality - Remastered (#9771) — verified but cut to keep the content wave curated (5 quest mods selected).
- **Excluded (redundant):** Environment Overhaul (#12230) — terrain coverage overlaps HDRP.
- **Not stacked:** only one lighting mod, one grass mod, one rain mod, one combat core, one economy overhaul — per the no-redundant/no-conflicting rule.
- **Fact-check caught:** an initial research claim of a vanilla "Reduced Loot" gameplay option was disproven (no such native option exists) — the guide attributes reduced-loot economy to Spectre instead.

## Pending / user inputs

- In-game verification: confirm the modlist loads on the user's 4.04 install (Script Merger clean, mods active in the Mod Manager) before a full playthrough.
- True Rain requires DX12 — confirm the user launches in DX12 mode.
- Content mods are mutually independent; if any quest mod misbehaves, drop the newest (Impostor or The Great Arena) first.

## Notes

- Research sources (verified 2026-08-21): live Nexus pages (nexusmods.com/witcher3/mods/<ID> for 9963, 7840, 3580, 5405, 11762, 8013, 3315, 10322, 11603, 7369, 347, 9001, 7186, 9812, 9554, 9771, 3883, 9742, 12230, 9453, 9745, 9803, 943, 9657), CDPR's official REDkit Modding Contest page (thewitcher.com/gb/en/redkit/contest), CDPR's official Dec-2022 Next-Gen compatibility list, eso-ui.com 4.04 mod list, dsogaming, wccftech, rockpapershotgun, reddit r/Witcher3 / r/witcher3mods.
- Wave 1 = 19 additions, Wave 2 = 4 additions; total modlist = 31 entries (incl. 3 manual pre-requisites).
