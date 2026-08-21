# Void Enhanced — STATUS

**Target:** Starfield 1.16.244 (June 11, 2026). Mod source: Nexus Mods (MO2-based list). Creations-only mods are tracked but excluded from the load order.

## Audit Trail

- 2026-08-21: Mod list populated per user direction ("fill the modlist with mods"). 31 mods verified against their live Nexus Mods pages via direct page fetch (title, version, author, last-updated timestamp). Classified into Wave 0 (UI/QoL/light graphics) and Wave 1 (content/mechanics/enhanced graphics). Cards written to guide/wave-0 and guide/wave-1; setup updated (Address Library ID corrected 325 → 3256; Baka Achievement Enabler and Plugins.txt Enabler added). See Accepted Mods, Rejected Mods, and Notes.
- 2026-08-21 (prior): Project scaffold existed with placeholder mod cards ("_(Specific mods to be added after research.)_"). Setup, wave guides, and story sections were complete; only the mod sections were empty.

## Decisions

- **Mod curator (2026-08-21):** per user direction "fill the modlist with mods", this project DID research and select mods. Method: candidate discovery via web search (Nexus top lists, mod-author sites, Reddit roundups), then per-mod verification by fetching the live Nexus page (`nexusmods.com/starfield/mods/<id>`) and reading page-visible metadata (og:title, twitter version meta, "Uploaded by" author, "Last updated" timestamp). Every accepted mod has a verified URL + page-visible metadata — no fabrication. Mods whose Nexus page returned "Mod unavailable" (removed/hidden) were rejected or excluded.
- **Stale-but-safe policy (2026-08-21):** UI-only and texture-only mods with old last-updated dates (2023–2024) are accepted with an explicit note, because staleness is weak evidence of breakage for display-only changes. Examples: BetterHUD (2023-09-21), Starfield HD Reworked Project (2023-09-23), StarUI suite (2024-10), New Landmark Quests (2023-10-24). Scripted/mechanics mods are held to a stricter bar.
- **No overpowered/cheating rule:** applied. Legendary Module Recycler was accepted because it only recycles effects you have already looted (no free spawn). Darkstar Manufacturing and similar free-crafting/stat-bypass mods were NOT selected.
- **Creations-only scope:** mods distributed exclusively on Bethesda Creations (not Nexus) are excluded from the MO2 load order but documented. Real Lights Starfield (lighting) is noted in Wave 1 graphics as an optional Creations install. Voiced companions Lyria and Robin Locke are paid Creations — out of scope.
- **SFCP / USFP:** the Starfield Community Patch was NOT selected. Its maintenance/volunteer status has been uncertain since mid-2025 and Bethesda has fixed most launch-era bugs in official patches by 1.16.244. The Unofficial Starfield Patch was rejected (author reputation / personal "tweaks" beyond bug fixes).

## Accepted Mods

| Mod | URL | Author | Last updated | Wave | Verdict date |
|-----|-----|--------|--------------|------|--------------|
| Starfield Script Extender (SFSE) | <https://www.nexusmods.com/starfield/mods/106> | ianpatt | 2026-06-11 | Setup | 2026-08-21 |
| Address Library for SFSE Plugins | <https://www.nexusmods.com/starfield/mods/3256> | meh321 | 2026-06-13 | Setup | 2026-08-21 |
| Baka Achievement Enabler (SFSE) | <https://www.nexusmods.com/starfield/mods/658> | shad0wshayd3 | 2026-04-08 | Setup | 2026-08-21 |
| Plugins.txt Enabler | <https://www.nexusmods.com/starfield/mods/4157> | Nukem | 2024-06-10 | Setup | 2026-08-21 |
| StarUI Inventory | <https://www.nexusmods.com/starfield/mods/773> | m8r98a4f2 | 2024-10-04 | 0 | 2026-08-21 |
| StarUI HUD | <https://www.nexusmods.com/starfield/mods/3444> | m8r98a4f2 | 2024-10-01 | 0 | 2026-08-21 |
| StarUI Workbench | <https://www.nexusmods.com/starfield/mods/4966> | m8r98a4f2 | 2024-10-02 | 0 | 2026-08-21 |
| StarUI Outpost | <https://www.nexusmods.com/starfield/mods/5766> | m8r98a4f2 | 2024-10-02 | 0 | 2026-08-21 |
| StarUI Ship Builder | <https://www.nexusmods.com/starfield/mods/6402> | m8r98a4f2 | 2024-10-01 | 0 | 2026-08-21 |
| Compact Mission Menu | <https://www.nexusmods.com/starfield/mods/682> | Stentorious | 2026-04-07 | 0 | 2026-08-21 |
| Compact Ship Builder UI | <https://www.nexusmods.com/starfield/mods/1170> | Stentorious | 2026-04-10 | 0 | 2026-08-21 |
| Compact Crafting UI | <https://www.nexusmods.com/starfield/mods/3274> | Stentorious | 2026-04-10 | 0 | 2026-08-21 |
| Compact Crew Menu | <https://www.nexusmods.com/starfield/mods/3014> | Stentorious | 2026-04-09 | 0 | 2026-08-21 |
| Compact Build Menu | <https://www.nexusmods.com/starfield/mods/3063> | Stentorious | 2026-04-11 | 0 | 2026-08-21 |
| Undelayed Menus | <https://www.nexusmods.com/starfield/mods/404> | Seb263 | 2025-09-23 | 0 | 2026-08-21 |
| BetterHUD | <https://www.nexusmods.com/starfield/mods/214> | KhaoMaat | 2023-09-21 | 0 | 2026-08-21 |
| Neutral LUTs - No Color Filters | <https://www.nexusmods.com/starfield/mods/323> | fadingsignal | 2024-10-03 | 0 | 2026-08-21 |
| Starfield HD Reworked Project | <https://www.nexusmods.com/starfield/mods/3486> | HalkHogan | 2023-09-23 | 0/1 | 2026-08-21 |
| Lazarus Awakened | <https://www.nexusmods.com/starfield/mods/12505> | MinionSquisher | 2024-11-22 | 1 | 2026-08-21 |
| Regrets | <https://www.nexusmods.com/starfield/mods/12506> | MinionSquisher | 2024-11-20 | 1 | 2026-08-21 |
| New Landmark Quests - Cut Content Restored | <https://www.nexusmods.com/starfield/mods/5824> | ConnerRia | 2023-10-24 | 1 | 2026-08-21 |
| Dark Universe - Takeover | <https://www.nexusmods.com/starfield/mods/11045> | kaosnyrb | 2026-04-21 | 1 | 2026-08-21 |
| Lodecs Custom Armory (LCA) | <https://www.nexusmods.com/starfield/mods/11770> | lodec | 2026-05-15 | 1 | 2026-08-21 |
| Plague's Optics Reimagined | <https://www.nexusmods.com/starfield/mods/3519> | illbodyPLAGUE | 2026-01-09 | 1 | 2026-08-21 |
| Eit Clothiers Plus | <https://www.nexusmods.com/starfield/mods/8473> | zone79 | 2025-01-29 | 1 | 2026-08-21 |
| The Gang's All Here | <https://www.nexusmods.com/starfield/mods/7469> | Aurelianis | 2026-07-30 | 1 | 2026-08-21 |
| Royal Galaxy | <https://www.nexusmods.com/starfield/mods/8222> | JaeDL | 2026-04-19 | 1 | 2026-08-21 |
| Starvival - Immersive Survival Addon | <https://www.nexusmods.com/starfield/mods/6890> | lKocMoHaBTl | 2026-08-08 | 1 | 2026-08-21 |
| Weapons of Fate (Ballistics Overhaul) | <https://www.nexusmods.com/starfield/mods/162> | Seb263 | 2023-10-26 | 1 | 2026-08-21 |
| Legendary Module Recycler | <https://www.nexusmods.com/starfield/mods/6074> | JonathanOstrus | 2026-05-11 | 1 | 2026-08-21 |
| POI Variations - No More Duplicates | <https://www.nexusmods.com/starfield/mods/10825> | PlatinumPoster | 2026-08-04 | 1 | 2026-08-21 |
| Unique POI Names | <https://www.nexusmods.com/starfield/mods/13041> | paulbrock | 2026-04-17 | 1 | 2026-08-21 |
| Ship Builder Categories (SBC) | <https://www.nexusmods.com/starfield/mods/7310> | rux616 | 2026-04-11 | 1 | 2026-08-21 |
| Better Ship Part Flips | <https://www.nexusmods.com/starfield/mods/5953> | rux616 | 2024-09-07 | 1 | 2026-08-21 |
| Better Ship Part Snaps | <https://www.nexusmods.com/starfield/mods/5698> | rux616 | 2026-04-11 | 1 | 2026-08-21 |
| Constellation Reshade | <https://www.nexusmods.com/starfield/mods/103> | 2077v2 | 2023-09-10 | 1 | 2026-08-21 |

## Rejected / Excluded Mods

| Mod | Reason | Date |
|-----|--------|------|
| Starfield Upscaler (PureDark, id 111) | REMOVED — Nexus page returned "Mod unavailable". DLSS/XeSS upscaling is now native in Starfield. | 2026-08-21 |
| Upscaler Base Plugin (id 502) | REMOVED — "Mod unavailable"; dependency of the removed upscaler. | 2026-08-21 |
| Starfield Community Patch (SFCP) | EXCLUDED — maintenance/volunteer uncertainty since mid-2025; most launch bugs fixed officially by 1.16.244. | 2026-08-21 |
| Unofficial Starfield Patch (USFP) | REJECTED — author reputation + personal "tweaks" beyond bug fixes. | 2026-08-21 |
| KZ Constellation Armor (id 10750) / KZ Deviants (id 10468) | REMOVED — Nexus pages returned "Mod unavailable". Zone79's Eit Clothiers Plus kept instead. | 2026-08-21 |
| The Hatch - A Horror Quest | CREATIONS-ONLY — no Nexus release. | 2026-08-21 |
| Real Lights Starfield | CREATIONS-ONLY — noted as optional in Wave 1 graphics, not in MO2 load order. | 2026-08-21 |
| Lyria / Robin Locke companions | PAID CREATIONS — not on Nexus; out of scope for this MO2 list. | 2026-08-21 |
| Darkstar Manufacturing / free-crafting & stat-bypass mods | POWER-SPIKE — violates the no-overpowered rule. | 2026-08-21 |
| Ship Module Snap Expansion (SMSEX) | CONFLICT — edits the same data as Better Ship Part Snaps/Flips. | 2026-08-21 |

## Conflicts

- (see conflicts-mods.md)

## Notes

- Game version 1.16.244 (June 11, 2026) — SFSE 0.2.21 (2026-06-11) and Address Library v22 (2026-06-13) are aligned with it.
- The StarUI suite's original pages are stale (2024-10); install community compatibility patches ("StarUI patch" / "thesamich") if a menu misbehaves after an update.
- This project does not download mod files (spec: user installs via MO2 later). All URLs are Nexus Mods pages.
- Open items: none blocking. The user installs mods and plays; PDF regenerated with the populated cards.
