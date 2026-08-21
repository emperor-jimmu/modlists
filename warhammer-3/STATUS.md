# When Gods Bleed — STATUS

**Target:** Total War: WARHAMMER III 8.1.1 (July 16, 2026). Mod source: Steam Workshop (RPFM-managed list).

## Audit Trail

- 2026-08-21: Mod list populated per user direction ("fill the next TODO modlist with mods"). Replaced all placeholder UI/QoL, content, mechanics, and Wave 3 carryover entries with real Steam Workshop mods. Every accepted mod verified against its live Workshop page on 2026-08-21 (og:title, appid 1142710, file size, updated date, author) — direct fetch where Steam rate limits allowed, cross-checked via search results, Wayback snapshots, and the r.jina.ai reader proxy for rate-limited pages. Classified into Wave 0 (UI/QoL + light content), Wave 1 (content), Wave 2 (mechanics, SFO-centered), Wave 3 (full carryover). Cards written to each wave's modlist/content/mechanics files; conflicts.conf and mod-ideas.md updated; design spec recorded in docs/superpowers/specs/2026-08-21-content-mechanics-design.md.
- 2026-07-30 (prior): Graphics pass completed — replaced placeholder graphics mods with real Workshop mods across all 4 waves (see docs/superpowers/specs/2026-07-30-graphics-overhaul-design.md).
- 2026-07-30 (prior): Project scaffold existed with placeholder mod cards (example.com URLs) in UI/QoL, content, mechanics, and modlist sections; graphics sections were the first to be filled.

## Decisions

- **Mod curator (2026-08-21):** per user direction, this project researched and selected mods. Method: parallel scout agents discovered candidates via web search and Steam Workshop browse; every accepted mod was then verified against its live page (og:title / `Steam Workshop::<name>` confirmed, appid 1142710, file size + Updated date read from page). No fabrication — every URL in the guide resolves to a real, current WH3 Workshop item.
- **SFO is the Wave 2 foundation (2026-08-21):** SFO: Grimhammer III (2792731173, updated 16 Jul 2026) was chosen as the total overhaul for the End Times wave. Radious Total War (Parts 1–4) is the main alternative but is mutually exclusive with SFO and adds 549 custom units + AI boosts; it was rejected for this list (documented as a wave-2 swap option in mod-ideas.md).
- **Removed-from-Workshop rejections (2026-08-21):** DeepWar AI, Community Bug Fix Mod, Stronger and Fairer AI, Dynamic Disasters (all variants), and Hecleas AI Overhaul were removed from the Steam Workshop (community-guideline violations) and cannot be part of a Workshop-based list. CBFM still distributes via GitHub/Discord — noted in mod-ideas.md as optional manual install.
- **AI mod exclusivity (2026-08-21):** Campaign AI Tweaks' author forbids running any other AI-behavior mod. Since this list uses AI Recruitment & Army Compositions (updated for 8.1.1 on 19 Jul 2026), Campaign AI Tweaks was excluded.
- **Unit-cap system (2026-08-21):** Tabletop Caps: Reborn chosen as the army-cap system; Cost-based Army Caps excluded (end-of-maintenance, competing system).
- **VCO-SFO integration (2026-08-21):** VCO (3140200173) requires the VCO-SFO compatibility patch (3742809144, by Fesir). The originally-cited patch ID (2855146051) turned out to be a CS2 screenshot page — replaced with the verified real patch. Same verification applied to Mixu LL (3743482152), TEB (3743493125), and Landmarks of Eternity (3728577520) SFO patches.
- **Tooltip Project caveat (2026-08-21):** kept in Waves 0–1; its author states it should not be combined with SFO/Radious. Documented in conflicts.conf so Wave 2+ users deactivate it.
- **No overpowered/cheating rule:** applied. Recruit Defeated Legendary Lords accepted (transfers defeated LLs to surviving same-race factions — a convenience, not a power spike). No free-money/instant-recruit/god-mode mods selected.
- **MIXER single-player caveat (2026-08-21):** MIXER (2859968660) reported single-player-only after an Aug 2026 CA update broke multiplayer; documented in the guide.

## Accepted Mods

| Mod | ID | Author | Updated | Wave | Verdict date |
|-----|-----|--------|---------|------|--------------|
| Better Camera Mod | 2789858755 | kam2150 | 2026-07-10 | 0 | 2026-08-21 |
| Cpecific's Skill Queue: Jazzed Edition | 3720243387 | Musical Pianist | 2026-07-13 | 0 | 2026-08-21 |
| Memreader (win64) | 2789863945 | Cpecific | 2022-04-05 (active) | 0 | 2026-08-21 |
| The Tooltip Project | 3588380343 | Masterdelta41 | 2026-07-09 | 0 (0–1) | 2026-08-21 |
| Building Progression Icons III | 2790007728 | Spartan VI | 2025-12-07 | 0 | 2026-08-21 |
| Speedy Turn Camera | 2792727547 | Skywalker | 2026-05-23 | 0 | 2026-08-21 |
| High Resolution UI Improvements | 2790774407 | Ydok4 & prop joe | 2025-12-24 | 0 | 2026-08-21 |
| Skip Intro | 2811310125 | Diaz Ex Machina | 2026-05-21 | 0 | 2026-08-21 |
| Legendary Lore | 2789857945 | Oh_Man[TFE] | 2026-05-31 | 0 | 2026-08-21 |
| Recruit Defeated Legendary Lords | 2854819509 | (port) | 2026-07-12 | 0 | 2026-08-21 |
| MIXER - Mixu's Unlocker | 2859968660 | Mixu | 2026-07-10 | 1 | 2026-08-21 |
| Cataph's Southern Realms (TEB) | 2927296206 | Cataph | 2025-12-14 (8.1 title) | 1 | 2026-08-21 |
| OvN Lost Factions: Fimir | 2899955636 | OvN Team | 2026-07-11 | 1 | 2026-08-21 |
| Cataph's Kraka Drak: Norse Dwarfs | 2878423760 | Cataph | 2025-12-05 (8.1 title) | 1 | 2026-08-21 |
| Mixu's Legendary Lords | 2802810577 | Mixu | 2026-07-29 | 1 | 2026-08-21 |
| Mixu's Legendary Lords: Asset Pack | 2802811244 | Mixu | 2026-07-10 | 1 | 2026-08-21 |
| [DEER24] Walk with the Dragon | 2789903784 | Deer24 | 2026-08-20 | 1 | 2026-08-21 |
| Immortal Empires Expanded | 3007996493 | ChaosRobie | 2026-07-23 | 1 | 2026-08-21 |
| Landmarks of Eternity | 3025510782 | Chasslo | 2026-05-21 | 1 | 2026-08-21 |
| Legendary Characters - 8.1 | 3305404052 | Skeleton Crew | 2026-08-16 | 1 | 2026-08-21 |
| SFO: Grimhammer III - Call of Bretonnia | 2792731173 | Venris / SFO Team | 2026-07-16 | 2 | 2026-08-21 |
| Victory Conditions Overhaul | 3140200173 | Wolfy | 2026-07-29 | 2 | 2026-08-21 |
| VCO - SFO Compatibility Patch | 3742809144 | Fesir | 2026-07-15 | 2 | 2026-08-21 |
| Tabletop Caps: Reborn | 3386989556 | chadvandy | 2025-12-07 | 2 | 2026-08-21 |
| AI Recruitment & Army Compositions | 2789853654 | Heljumper117 | 2026-07-19 | 2 | 2026-08-21 |
| Siege AI & Mechanics Overhaul | 2846183349 | asdqwefzxcv | 2026-05-23 | 2 | 2026-08-21 |
| Diplomacy Logic and Balance Katsuko | 3503667132 | Katsuko | 2025-12-26 | 2 | 2026-08-21 |
| Mixu's LL - SFO Compatibility Patch | 3743482152 | Fesir | 2026-07-15 | 2 | 2026-08-21 |
| TEB - SFO Compatibility Patch | 3743493125 | Fesir | 2026-08-19 | 2 | 2026-08-21 |
| Landmarks of Eternity - SFO Patch | 3728577520 | Fesir | 2026-07-15 | 2 | 2026-08-21 |

Graphics mods accepted 2026-07-30 (wave 0: 3051876615, 3237873696, 2818403447; wave 1: 2922534576, 2961327160, 2789877586; wave 2: 3363516919, 2791113369, 2853785889; wave 3: 3392092308, 3236382945, 3160900040, 3039004186).

## Rejected / Excluded Mods

| Mod | ID | Reason | Date |
|-----|-----|--------|------|
| DeepWar AI (Forlorn) | 2978779730 | REMOVED from Workshop (community-guidelines) | 2026-08-21 |
| Community Bug Fix Mod (CBFM) | 2856936614 | REMOVED from Workshop; GitHub/Discord only | 2026-08-21 |
| Stronger and Fairer AI | 2792395073 | REMOVED from Workshop (guidelines) | 2026-08-21 |
| Dynamic Disasters (all variants) | 2856219244 / 3242351845 / 3043070087 | REMOVED / abandoned / unstable | 2026-08-21 |
| Hecleas AI Overhaul / Grand Strategy | 2905096541 / 3575054982 | REMOVED components (guidelines) | 2026-08-21 |
| Organic AI Overhaul | unstable IDs | Frequently removed/hidden | 2026-08-21 |
| Radious Total War Mod (Parts 1–4) | 2791750313 (+2/3/4) | EXCLUDED — mutually exclusive with SFO; 549 custom units + AI boosts; wave-2 swap alternative | 2026-08-21 |
| Campaign AI Tweaks | 3485519396 | EXCLUDED — author forbids any other AI mod; conflicts with AI Recruitment | 2026-08-21 |
| Cost-based Army Caps [EoM] | 2843367951 | EXCLUDED — end-of-maintenance; competes with Tabletop Caps | 2026-08-21 |
| Legendary Characters (old Stratovarius) | 2826930183 | SUPERSEDED — page warns not to enable alongside SCM rerelease | 2026-08-21 |
| Guns of Erengrad / AOV519 Chaos Dwarf pack / Expanded Roster series | n/a | REMOVED from public Workshop | 2026-08-21 |
| Landmarks of the Old World | n/a | WH2-era; superseded by Landmarks of Eternity | 2026-08-21 |
| Mixu's Tabletop Lore Units | n/a | No live WH3 item | 2026-08-21 |
| VCO-SFO patch (stale ID) | 2855146051 | WRONG PAGE — CS2 screenshot; real patch is 3742809144 | 2026-08-21 |

## Conflicts

- (see conflicts.conf)

## Notes

- MIXER (2859968660) is the mandatory startpos hub for Wave 1 content; single-player only after the Aug 2026 CA update.
- Content mods updated to "8.1" titles by their authors (TEB, Kraka Drak) had last content updates in Dec 2025 — low risk per the stale-but-safe policy for maintained titles.
- SFO compatibility patches have strict load orders (patch above mod above SFO); documented in each card.
- A new campaign is required when enabling Wave 2 mechanics (SFO/VCO/Tabletop Caps).
- This project does not download mod files; all URLs are Steam Workshop pages.
- Open items: none blocking. The user installs mods and plays; PDF regenerated with `build.bat`.
