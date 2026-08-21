# Content & Mechanics Fill-In — When Gods Bleed

## Summary

Replace all placeholder content/mechanics/modlist entries with real Steam Workshop mods compatible with TWWH3 v8.1.1. Graphics mods were completed in the previous pass (2026-07-30); this pass fills UI/QoL, content, mechanics, and the Wave 3 carryover modlist.

Every mod below was verified against its live Steam Workshop page on 2026-08-21 (og:title, appid 1142710, file size, updated date, author). No fabricated entries.

## Changes by Wave

### Wave 0 — UI/QoL + light content (vanilla-compatible, beginner)
- **Better Camera Mod** (2789858755) — camera QoL
- **Cpecific's Skill Queue: Jazzed Edition** (3720243387) + **Memreader (win64)** (2789863945) — skill-tree QoL
- **The Tooltip Project** (3588380343) — tooltip clarity
- **Building Progression Icons III** (2790007728) — cosmetic building icons
- **Speedy Turn Camera** (2792727547) — faster end-turn camera
- **High Resolution UI Improvements** (2790774407) — 1440p+ UI panels
- **Skip Intro** (2811310125) — startup convenience
- Content: **Legendary Lore** (2789857945) — lore flavour, no gameplay; **Recruit Defeated Legendary Lords** (2854819509) — defeated LLs join surviving factions

### Wave 1 — Content (new factions, lords, units, world)
- **MIXER - Mixu's Unlocker** (2859968660) — mandatory startpos framework hub
- **Cataph's Southern Realms (TEB)** (2927296206) — new culture, 8 factions
- **OvN Lost Factions: Fimir** (2899955636) — new playable race
- **Cataph's Kraka Drak: Norse Dwarfs** (2878423760) — new sub-faction
- **Mixu's Legendary Lords** (2802810577) + **Asset Pack** (2802811244) — 50+ LLs/heroes
- **[DEER24] Walk with the Dragon (Cathay Units Patch)** (2789903784) — Cathay mega-pack
- **Immortal Empires Expanded** (3007996493) — 184 new settlements, 55 factions
- **Landmarks of Eternity** (3025510782) — 420+ landmarks
- **Legendary Characters - 8.1** (3305404052) — 103 characters (MCT-gated)

### Wave 2 — Mechanics (End Times, SFO-centered)
- **SFO: Grimhammer III - Call of Bretonnia** (2792731173) — flagship total overhaul
- **Victory Conditions Overhaul** (3140200173) + **VCO - SFO Compatibility Patch** (3742809144)
- **Tabletop Caps: Reborn** (3386989556) — army caps, anti-doomstack
- **AI Recruitment & Army Compositions** (2789853654) — AI army building
- **Siege AI & Mechanics Overhaul** (2846183349) — siege rework
- **Diplomacy Logic and Balance Katsuko** (3503667132) — diplomacy rebalance
- Content (SFO integration for Wave 1 mods): Mixu's LL SFO patch (3743482152), TEB SFO patch (3743493125), Landmarks of Eternity SFO patch (3728577520)

### Wave 3 — Full carryover modlist
- Replaced placeholder UI/QoL and Graphics carryover sections with the real Wave 0 QoL mods and real Wave 0–2 graphics mods.

## Files Modified
- `guide/wave-0/modlist.typ`, `guide/wave-0/content.typ`
- `guide/wave-1/modlist.typ`, `guide/wave-1/content.typ`
- `guide/wave-2/modlist.typ`, `guide/wave-2/content.typ`, `guide/wave-2/mechanics.typ`
- `guide/wave-3/modlist.typ`
- `conflicts.conf` — populated with real conflicts
- `mod-ideas.md` — replaced generic ideas with research-grounded future ideas
- `STATUS.md` — new decision register

## Compatibility
- All mods target TWWH3 v8.1.1 (or are maintained for it; content-mod titles updated to 8.1 by their authors).
- MIXER (2859968660) is the shared dependency hub for Wave 1 content.
- SFO + VCO require the VCO-SFO patch; SFO + Wave 1 content require the respective SFO patches.
- SFO vs Radious: mutually exclusive (Radious excluded).
- Campaign AI Tweaks excluded (author forbids other AI mods; conflicts with AI Recruitment).
- Cost-based Army Caps excluded (end-of-maintenance; competes with Tabletop Caps).
- Removed-from-Workshop mods (DeepWar AI, CBFM, Stronger & Fairer AI, Dynamic Disasters, Hecleas) rejected — see STATUS.md.
- Tooltip Project kept in Waves 0–1; author advises against combining with SFO (documented in conflicts.conf).
