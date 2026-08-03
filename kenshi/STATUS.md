# Scars of the Horizon - STATUS

Target: Kenshi 1.0.68 (released Apr 1, 2024). Mod organizer: KMM (Kenshi Mod Manager,
Nexus mod 1765) - verdict: COMPATIBLE (Task 3, 2026-08-03).
Mod sources: Steam Workshop (primary), Nexus Mods (secondary).

## Audit Trail
| Date | Item | Verdict | Evidence |
|---|---|---|---|
| 2026-08-03 | Wave 0 mod verification: Dark UI, Nice Map, Compressed Textures Project, Particle System Override, Kenshi Performance Fix, Kenshi CTD fix patch | VERIFIED x6 | All 6 pages fetched; exact page titles match card names; last-update dates captured (see Accepted Mods table) |
| 2026-08-03 | RE_Kenshi (Nexus mod 847) excluded at Wave 0 | REJECTED | Page states 1.0.68 installs are "partially downgraded to 1.0.65 for compatibility reasons" - conflicts with the strict 1.0.68 target; logged in mod-ideas.md |
| 2026-08-03 | Wave 0 wiki fact-check (kenshi.fandom.com) | VERIFIED | The Hub = Wanderer start town; copper nodes near The Hub; recruiting costs cats; early stats = Strength/Toughness/Dexterity/Melee Attack (see Notes) |
| 2026-08-03 | Wave 1 mod verification: Radiant Food Expansion, Vanilla Outposts Expanded, Mood Weather, Flipped Buildings, Forgotten Buildings, Fish and Meat Industry, Deep Wells, Slopeless, Moisture Farming, Shek Perfect Body | VERIFIED x10 | All 10 pages fetched (Steam x9, Nexus x1); exact page titles match card names; last-update dates captured; 6 Steam pages re-fetched same day to rule out the anti-bot "removed from community" decoy - all resolved to correct live titles (see Accepted Mods table) |
| 2026-08-03 | Wave 1 wiki fact-check (kenshi.fandom.com) | VERIFIED | Farming/Hydroponics/Well/Prospecting/Construction/Raid/Guide_to_Building_an_Outpost/Defensive_Walls_(Tech) pages - base-site factors, crop list, raid behaviour (see Notes) |
| 2026-08-03 | Wave 2 mod verification: Armor Crafting Redux - Core, Expanded Craftable Weapons v2.1, RIY+ (The Scientific Method), Vanilla Crossbow Turrets, Portable Crossbow Turret kit, Better Hydroponics, Industrial Expansion [Beta], Leather Expansion: Leathercraft, Radiant Vanilla Reborn Weapons, Shiny Plate Armor | VERIFIED x10 | All 10 Steam Workshop pages fetched; exact API titles from Steam Web API (GetPublishedFileDetails, itemcount+publishedfileids POST) cross-check created/updated timestamps + subscriber counts + tags for every accepted mod; Nexus mirrors fetched for Portable Crossbow Turret kit (mod 747) and Better Hydroponics (mod 1202); Radiant Vanilla Reborn Weapons + Shiny Plate Armor pages were HTML 429-rate-limited, so their verification rests on authoritative API title/description/metadata (logged, not guessed) |
| 2026-08-03 | Wave 2 wiki fact-check (kenshi.fandom.com) | VERIFIED | Research_Bench (II-VI upgrade table), Weapon_Smithing_(Tech) (model/grade ladder), Crossbows, Turrets, Mounted_Crossbow, Iron_Plates, Raw_Iron, Electrical_Components, Steel_Bars, Armour_Smith pages - research tiers, weapon quality ladder, turret accuracy (see Notes log #4) |

## Decisions
| Date | Decision | Rationale |
|---|---|---|
| 2026-08-03 | KMM (Nexus mod 1765) = COMPATIBLE with Kenshi 1.0.68 | Last updated 2025-10-19, originally uploaded 2025-10-12 by Aze4ka, v1.0.0-release, 97 endorsements. Actively maintained (.NET 9.0 / WPF, self-contained), requires "Kenshi (Steam or GOG version)" with no version pin - well after 1.0.68 (2024-04-01). No breakage reports found. Sources: https://www.nexusmods.com/kenshi/mods/1765 , https://github.com/nonniks/KenshiModManager |
| 2026-08-03 | Load order "later in list = higher priority" = VERIFIED | Steam guide: "Mods lower in the order overwrite mods higher in the order" (https://steamcommunity.com/sharedfiles/filedetails/?id=1850250979). Kenshi wiki FAQ: "the mod loaded AFTER, will override the value above it" (https://kenshi.fandom.com/wiki/Why_load_order_matters_and_other_FAQ_about_using_mods). Load order file = mods.cfg in game data folder (https://steamcommunity.com/sharedfiles/filedetails/?id=1684604012 , https://kenshi.fandom.com/wiki/Mods) |
| 2026-08-03 | Mod floors relaxed - quality over quantity | User directive: do NOT add more mods to hit wave-count floors. Ship each wave with only genuinely verified, high-quality mods; record any floor shortfall in Notes without padding. |
| 2026-08-03 | Steam "This item has been removed from the community" banner on fetches = anti-bot DECOY, not removal | Several Workshop pages fetched 2026-08-03 (Radiant Food Expansion, Vanilla Outposts Expanded, Mood Weather, Flipped Buildings, Forgotten Buildings, Fish and Meat Industry, Deep Wells, Slopeless, Moisture Farming) showed a "removed from the community... only visible to you" banner. Re-fetching the same URLs moments later returned the true live pages with correct titles (Radiant Food Expansion, Vanilla Outposts Expanded, Mood Weather, Flipped Buildings, Forgotten Buildings, Fish and Meat Industry all re-verified live). Conclusion: Steam serves a decoy page to non-logged-in bots; the real page follows. Do NOT trust a single fetch's banner text alone - re-fetch before judging a mod removed. |
| 2026-08-03 | Kenshi Cuisine (Steam id 2600344770) = NOT a Kenshi mod | Fetched page resolves to a RimWorld mod (Steam app 294100, Vanilla Expanded Framework dependency), not Kenshi (app 233860). Search false positive -> REJECTED; no fabrication. |
| 2026-08-03 | Shek Perfect Body (Nexus mod 1242) = the only adult-category-adjacent include, never-nude variant | Policy allows quality nude/skin mods as own entries; explicit porn never accepted. YAKNM variants returned Steam "Error" pages on fetch -> logged UNVERIFIED in mod-ideas.md (do not guess). Shek Perfect Body (never nude) verified as a safe texture replacer with clothing intact - the single adult-category include, by design safe-for-work. |
| 2026-08-03 | Wave 2 gating rule: everything behind research time and materials - NO free power | Every accepted Wave 2 mod gates its benefit behind research + materials: Expanded Craftable Weapons needs Smithing 56/60 + Tech Level 5 + AI Cores; Better Hydroponics inherits vanilla's Bench V + AI Core gate and adds its own per-tier research; Portable Crossbow Turret kit needs Mounted Crossbow 2 + Crossbow Crafting + Engineering Research + 2 Ancient Science Books; RIY+ needs 4 books upfront then research; Leathercraft needs its own research + bench. Mods that hand out power without that gate were rejected (see Rejected table). |
| 2026-08-03 | Expanded Craftable Weapons v2.1 dependency: Dark UI | Its 2022-06-10 changelog entry reads "Added DarkUI requirement (check description for more information)". Wave 0 ships Dark UI, so the dependency is already satisfied in this list - flagged as a dependency, not a rejection. |
| 2026-08-03 | Authentic Hydroponics (id 3714900958) REJECTED - redundant | Both it and Better Hydroponics add early Cactus/Cotton hydroponics; Better Hydroponics is far more adopted (27,531 vs 127 subs) and older (created 2023-04 vs created 2026-04-26). Running both risks conflicts. Single hydroponics overhaul included. See Rejected table. |
| 2026-08-03 | Handturrets (id 3694936216) REJECTED - power spike at game start | Its own description adds a "New start (Big Iron...)" that hands the player a turret at game start - power handed out without research/material cost, violating the wave's no-free-power rule. See Rejected table. |
| 2026-08-03 | Portable Crossbow Turret (id 778082429) REJECTED - distinct older mod, game-start handoff | A SEPARATE mod from the accepted "Portable Crossbow Turret kit" (id 2563788360). This 2016 mod adds a game start with crossbow knowledge (hand-off risk) and has no updates since 2016. See Rejected table. |
| 2026-08-03 | Crafting Expanded (id 1642114061) REJECTED - author-abandoned | Its own description: "I will no longer support or update this modification, since Kenshi II is now being worked on." Last updated 2019-11-11; includes drug-production recipes (cocaine, opium) that diverge from the crafting theme. See Rejected table. |
| 2026-08-03 | Siege Equipment (id 886085735) REJECTED - superseded | 2017 mod; author confirms in comments it was "made before crossbows were added"; superseded by Vanilla Crossbow Turrets + Portable Crossbow Turret kit. See Rejected table. |

## Accepted Mods
| Wave | Mod | URL | Last updated | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|
| 0 | Dark UI | https://steamcommunity.com/sharedfiles/filedetails/?id=1200632417 | 9 Aug 2020 | YES | webfetch | None | OK | Posted 13 Nov 2017 by Eldryn; 11,897 ratings, 8.854 MB; GUI + Graphical tags; pure UI skin, no balance change; Nexus mirror = mod 253 (https://www.nexusmods.com/kenshi/mods/253) same mod, cited in card notes |
| 0 | Nice Map [Zones + Zone names + Roads] | https://steamcommunity.com/sharedfiles/filedetails/?id=1613829988 | 29 Jan 2019 | YES | webfetch | None | Flag for review (no updates since Jan 2019) - author confirmed still functional Nov 2025 | Posted 3 Jan 2019 by Djeeshka; 8,103 ratings; pure GUI_Map.dds texture swap; author: no map changes in Kenshi since release |
| 0 | Compressed Textures Project | https://steamcommunity.com/sharedfiles/filedetails/?id=1649794243 | 9 Feb 2019 | YES | webfetch | None | Flag for review (no updates since Feb 2019) - texture swap only; 753k subscribers | Posted 9 Feb 2019 by FG; 16,290 ratings, 1.339 GB; DXT5: landscape 2048->1024, others 4096->2048; load above all other mods; no save import needed |
| 0 | Particle System Override (PSO) | https://www.nexusmods.com/kenshi/mods/950 | 21 Jul 2024 | YES | webfetch | None | OK | Replaces particle .PNG -> .DDS (DXT); installer-based, Steam + GOG; tags Performance Optimization / Replacer; works with Kenshi 1.0.68-era builds |
| 0 | Kenshi Performance Fix | https://www.nexusmods.com/kenshi/mods/1216 | 8 Jul 2023 | YES | webfetch | None | OK | Mesh/shader/particle/water optimization overhaul; v1.3 aligned with PSO; Steam + GOG installer |
| 0 | Kenshi CTD fix patch | https://www.nexusmods.com/kenshi/mods/506 | 30 May 2024 | YES | webfetch | None | OK | Updated after 1.0.68 release; fixes animation CTDs; auto-generates a patch mod; place last in load order |
| 1 | Radiant Food Expansion | https://steamcommunity.com/sharedfiles/filedetails/?id=2689916593 | 14 Jan 2025 | YES | webfetch x2 | None | OK | By Shiroho; 577 ratings; new cooking research, swamp food crop, Gristle-Flaps, fish uses, Devil Wine contraband, fishing; description banner says 13/02/2023 but changelog to 14 Jan 2025 |
| 1 | Vanilla Outposts Expanded | https://steamcommunity.com/sharedfiles/filedetails/?id=2571591923 | 14 May 2022 | YES | webfetch x2 | None | OK | By Zbehemoth; 393 ratings; vanilla-asset decorative buildings/furniture bought from construction vendors; lore-friendly, close to vanilla |
| 1 | Mood Weather | https://steamcommunity.com/sharedfiles/filedetails/?id=3300660383 | 12 Jan 2025 | YES | webfetch x2 | None | OK | By crunk aint dead; 75,814 subscribers, 630 ratings; recolours clouds/fog, dust-storm ground sand, Deadlands black rain; no new weather types; pairs with PSO |
| 1 | Flipped Buildings | https://steamcommunity.com/sharedfiles/filedetails/?id=2672839646 | 15 Mar 2025 | YES | webfetch x2 | None | OK | By MARH; 43,910 subscribers; 14 mirrored vanilla buildings in BUILDINGS-Flipped; unlock via vanilla techs; no import; dismantle before removal |
| 1 | Forgotten Buildings | https://steamcommunity.com/sharedfiles/filedetails/?id=1679230269 | Feb 2024 | YES | webfetch x2 | None | OK - load order critical | By Mechanica; ~28k subscribers; 400+ old-world buildings/furniture + 300 alt-texture copies; Slopeless + texture mods must load ABOVE it |
| 1 | Fish and Meat Industry | https://steamcommunity.com/sharedfiles/filedetails/?id=3713276063 | 25 Apr 2025 | YES | webfetch x2 | None | OK | By Ironmonk; supersedes "Meat Production and Processing" (do not run both); fishing/fish farming/survival cooking/insect farming chains; author says balancing still settling |
| 1 | Deep Wells | https://steamcommunity.com/sharedfiles/filedetails/?id=738863246 | 3 Feb 2018 | YES | webfetch | Requires Wells III | OK - author-confirmed | By Mirrowel; ~62k subscribers, 223 ratings; well draws from underground rivers, no surface water needed; author confirmed still working in comments |
| 1 | Slopeless | https://steamcommunity.com/sharedfiles/filedetails/?id=1740462542 | 26 Feb 2024 | YES | webfetch | None | OK | By Gyropilot; 5,388 ratings, 22 changenotes; flattens ground under buildings/walls; author confirmed 2024 revert kept stable build |
| 1 | Moisture Farming | https://steamcommunity.com/sharedfiles/filedetails/?id=1321702013 | 5 Mar 2018 | YES | webfetch | Tech lvl 3 + Wells 3 + 1 Ancient Science Book | OK | By Trinimac; 3,122 ratings; Moisture Collector gathers water from air, indoor/outdoor; author documents vanilla navmesh bug + Ctrl+Shift+F11 fix |
| 1 | Shek Perfect Body (never nude) | https://www.nexusmods.com/kenshi/mods/1242 | v1.0 (single release) | YES | webfetch | None | OK | 196 endorsements; higher-fidelity Shek body texture, clothing/underwear intact, no model or stat change; the only adult-category-adjacent include, safe variant by design |
| 2 | Armor Crafting Redux - Core | https://steamcommunity.com/sharedfiles/filedetails/?id=3585383286 | 12 Oct 2025 | YES | webfetch + Steam API | None | OK | By 2PercentNate; modular armor-crafting overhaul: organizes recipes by bench/research, cuts blueprint clutter, research-based unlocks; no stat change; core of the 10-module "Crafting Redux Series" (id 3586168016); 820 subs |
| 2 | Expanded Craftable Weapons v2.1 | https://steamcommunity.com/sharedfiles/filedetails/?id=1399053728 | 10 Jun 2022 | YES | webfetch + Steam API | Dark UI (per 2022-06-10 changelog); Wave 0 ships it | OK | Crafts Edge Type 3 & Meitou grades; "Weapon Smith - All Grades" bench unlocks with Weapon Smith III; Edge Type 1 = Smithing 56/Tech 5/1 AI Core; Edge Type 2 = Smithing 60; Homemade weapons boosted to match existing; 23,792 subs |
| 2 | RIY+ (The Scientific Method) | https://steamcommunity.com/sharedfiles/filedetails/?id=2051512703 | 16 Apr 2020 | YES | webfetch + Steam API | None | OK | Craft your own research books; 4 books upfront to learn, then Book/Ancient Science Book/Engineering Research at dedicated "RESEARCH" benches; AI Cores remain uncraftable; replaces author's earlier RIY mod; 5,039 subs |
| 2 | Vanilla Crossbow Turrets | https://steamcommunity.com/sharedfiles/filedetails/?id=2240666581 | 12 Dec 2022 | YES | webfetch + Steam API | Mounted Crossbows / Mounted Crossbows II research | OK | By Ikahurula; 5 vanilla crossbows as turrets (Mounted Junkbow, Tooth Pick, Ranger, Spring Bat, Eagle's Cross) + light variants; research-gated; 2,146 subs |
| 2 | Portable Crossbow Turret kit | https://steamcommunity.com/sharedfiles/filedetails/?id=2563788360 | 27 Apr 2024 | YES | webfetch + Steam API + Nexus 747 | Tier 3/4 after Mounted Crossbow 2 + Crossbow Crafting; 1 Engineering Research + 2 Ancient Science Books | OK | Kit = 8 iron plates + 2 spring steels, ~6h craft; portable camping turret that does NOT create an outpost; storage furniture; Nexus 747 is official mirror; 19,499 subs |
| 2 | Better Hydroponics | https://steamcommunity.com/sharedfiles/filedetails/?id=2962052586 | 25 Apr 2023 | YES | webfetch + Steam API + Nexus 1202 | Vanilla Hydroponics (Bench V + AI Core) | OK | 3 tiers per hydroponic crop; adds Cactus + Cotton indoor variants + research unlocks; sprinklers (-25% water/tier), thermoregulators, +100% output/tier; riceweed T2 fix in v1.0.1; 27,531 subs; Nexus 1202 |
| 2 | Industrial Expansion [Beta] | https://steamcommunity.com/sharedfiles/filedetails/?id=3019311187 | 4 Aug 2024 | YES | webfetch + Steam API | Research stays aligned with vanilla tech (e.g., Wells II unlocks Indoor Wells II) | OK - author labels it Beta | By nato187; indoor 0.5-scale machines (wells, refineries, furnaces, grain silos) + RTG; same power/resource requirements as outdoor; compact production automation; 9,055 subs |
| 2 | Leather Expansion: Leathercraft | https://steamcommunity.com/sharedfiles/filedetails/?id=3607509354 | 17 Nov 2025 | YES | webfetch + Steam API | "Leathercrafting Techniques" research + Leathercraft Workbench | OK | Turns excess leather (armor-smithing byproduct) into sellable trade goods (wallets, book covers, horn accessories); trains Dexterity while crafting; 8,928 subs |
| 2 | Radiant Vanilla Reborn Weapons | https://steamcommunity.com/sharedfiles/filedetails/?id=2722854590 | 17 Jan 2022 | YES | Steam API (page 429-limited) | None - do NOT run with Radiant Asamarume Weapons (already integrated in v2.0) | OK | Retextures all 15+15 base weapon textures with real quality progression, realistic metals (bronze/copper/brass/steel/tamahagane), less rust on mid-game grades; pure texture replacement; 7,931 subs, ~30 MB |
| 2 | Shiny Plate Armor | https://steamcommunity.com/sharedfiles/filedetails/?id=2932417009 | 27 Feb 2023 | YES | Steam API (page 429-limited) | None - load last except GUI mods | OK | All plate armor pieces get a reflective metallic surface (heart protector, plated boots, samurai set, etc.); models unchanged, no stat change; author requests feedback; 175 subs, ~319 MB (large texture mod) |

## Rejected Mods
| Wave | Mod | Reason |
|---|---|---|
| 0 | RE_Kenshi (Nexus mod 847) | Page states 1.0.68 installs are "partially downgraded to 1.0.65 for compatibility reasons" - conflicts with the strict 1.0.68 target; logged in mod-ideas.md for a list-wide decision |
| 0 | 256 Recruitment Limit / squad-cap mods | Power spike - raises the vanilla ~30-character squad cap above vanilla without a proportionate cost |
| 0 | Radiant True Dark UI (Steam id 2916407101) | Removed from Steam Workshop for violating Community Guidelines - unverifiable |
| 0 | Modern UI Overhaul (Steam id 3042912286) | Requires Dark UI + the same Kenshi UI pattern; redundant with Dark UI at Wave 0 |
| 0 | "Free Camera Rotation" (Steam id 616359783) | XCOM 2 mod, not Kenshi - search false positive |
| 0 | KenshiFP (Nexus mod 2063) | First-person WASD plugin - invasive controls change, not a Wave 0 QoL fit; logged in mod-ideas.md |
| 1 | Kenshi Cuisine (Steam id 2600344770) | Fetch resolved to a RimWorld mod (Steam app 294100, Vanilla Expanded Framework dep), NOT Kenshi - search false positive; no fabrication |
| 1 | All Food and Indoor Farming (Steam id 705102861) | Last updated 16 Jan 2020 (pre-1.0.68, no updates) AND description admits new indoor farms require AI-core mods and are "not cheatish but desirable" - marginal power spike; dropped |
| 1 | Realistic Weather (Nexus mod 641) | Redundant with Mood Weather; only initial v1.0 upload, 0 endorsements visible, no update date evidence; dropped |
| 1 | YAKNM (Steam id 1996829229) + Females Only (id 2447829219) | Both returned "Steam Community :: Error" on fetch - UNVERIFIED, logged in mod-ideas.md (do not guess); fix mod id 2922572910 referenced there |
| 2 | Authentic Hydroponics (Steam id 3714900958) | Redundant with Better Hydroponics (both add early Cactus/Cotton hydroponics); 127 subs vs 27,531; created 2026-04-26 - far less adopted; running both risks conflicts |
| 2 | Handturrets (Steam id 3694936216) | Adds a "New start (Big Iron...)" that hands the player a turret at game start - power handed out without research/material cost, violates Wave 2's no-free-power rule |
| 2 | Portable Crossbow Turret (Steam id 778082429) | DISTINCT from accepted "Portable Crossbow Turret kit" (id 2563788360); 2016 mod adds a game start with crossbow knowledge (hand-off risk), no updates since 2016 |
| 2 | Crafting Expanded (Steam id 1642114061) | Author-abandoned: "I will no longer support or update this modification, since Kenshi II is now being worked on"; last updated 2019-11-11; drug-production recipes off-theme |
| 2 | Siege Equipment (Steam id 886085735) | 2017 mod; author confirms it predates crossbows; superseded by Vanilla Crossbow Turrets + Portable Crossbow Turret kit |

## Conflicts
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|

## Notes
- KMM facts (Nexus mod 1765, fetched 2026-08-03): "KMM - Kenshi Mod Manager" by Aze4ka (user 155501568).
  Original upload 2025-10-12, last updated 2025-10-19, v1.0.0-release. Requirements: Windows 10+ (64-bit),
  Kenshi (Steam or GOG), self-contained (NO .NET install needed). Features: playsets (each a separate .cfg file),
  drag & drop reordering, Steam/local/custom mod detection, one-click launch, auto-updates. GitHub:
  https://github.com/nonniks/KenshiModManager (32 commits, .NET 9.0/WPF/MVVM).
- DISCREPANCY: Nexus id 1765 now points to a NEW KMM by Aze4ka (released Oct 2025), NOT the classic
  MillerScout "Kenshi Mod Manager" (https://github.com/millerscout/Kenshi-Mod-Manager, .NET Core 3.1.7, Genesis
  Modding Guild). The COMPATIBLE verdict applies to the current holder of Nexus 1765.
- VERIFIED: Steam install detection = "Automatically finds Kenshi and Steam installation paths" (GitHub README
  features). Load order managed by drag & drop reordering (GitHub usage: "Drag mods to reorder load priority");
  playsets saved as separate .cfg files, "Save & Launch" applies changes and starts Kenshi (Nexus description).
- UNVERIFIED: (1) Whether KMM writes the game's {Kenshi}/data/mods.cfg directly - page says playsets are separate
  .cfg files but the exact write target is not confirmed. (2) Mechanism of Steam path detection (registry vs
  library scan) - not documented. (3) The 41 Nexus community posts could not be fetched (JS-rendered); no explicit
  user confirmation of running KMM under Kenshi 1.0.68 was obtained. (4) Whether KMM's drag & drop direction
  (top = first-loaded) matches Kenshi's "later = higher priority" - not documented by the tool.

## Wave 0 (The Wanderer) — 2026-08-03
- **Wave 0 shipped 6 mods** (within the 5-8 floor): 2 UI/visual (Dark UI, Nice Map), 4 performance (Compressed
  Textures Project, Particle System Override, Kenshi Performance Fix, Kenshi CTD fix patch).
- **Camera/hotkey shortfall:** the "Kenshi hotkey camera mod" search returned no verifiable Kenshi QoL camera
  mod (results were other games, removed items, or RE_Kenshi/KenshiFP plugins). Camera QoL deferred to a later
  wave; not padded with junk.
- **RE_Kenshi caveat:** the community-standard engine framework (Nexus 847, last updated 19 Jun 2026) was NOT
  accepted because its own page says 1.0.68 installs are partially downgraded to 1.0.65. Left in mod-ideas.md
  for a list-wide decision (guide targets strict 1.0.68).
- **Load-order guidance for Wave 0:** Compressed Textures Project above all other mods (author instruction);
  Dark UI + Nice Map are pure texture swaps compatible anywhere above content; Kenshi CTD fix patch generates a
  patch that must sit last in the load order.
- **Fact-check log (kenshi.fandom.com, 2026-08-03):**
  1. The Hub exists and is a town of Holy Nation Outlaws in the Border Zone; "You start in The Hub when using The
     Wanderer... game starts" — VERIFIED.
  2. Copper near The Hub: "Several copper and iron nodes within walking distance from the gates" — VERIFIED.
     Copper: avg price c.180, 4 kg, mined from outcrops with the Labouring skill.
  3. Recruiting costs cats: generic "Sword for hire" recruits can be hired for c.3,000 at base, scaling up
     with skill — VERIFIED; the ~3,000-9,000 upper range is community observation, not wiki-verified.
  4. Early stats: Strength (carry weight / heavy weapons / blunt & martial damage), Toughness (damage resistance /
     KO resistance), Dexterity (attack speed), Melee Attack (chance to attack / hit) — each confirmed on the wiki.
- **Fact-check log #2 (expansion pass, kenshi.fandom.com, 2026-08-03):**
  5. Melee Attack mechanics (Melee_Attack page): 1 attack over defense removes 1.5% block chance (base 70%);
     1 attack advantage shifts attacker odds by ~2.5%; attack also adds ~0.00152 to attack speed (base 0.765) —
     VERIFIED. Matches the how-to-play combat text.
  6. Encumbrance page: dodge -1%/1% enc (cap -60% at 60%); movement speed -1%/1% (cap -100% at 100%); combat
     speed -0.235%/1% (cap -23.5%); martial arts -0.8%/1%; hunger rate +0.007/1% (cap +0.7x) — VERIFIED.
  7. Weapons page: two weapon slots (Weapon I primary / Weapon II secondary); weapons graded Rusted Junk upward;
     Dexterity XP follows cut/total damage ratio, so katanas (pure cut) train Dexterity; Rusted Junk quality
     recommended for training Attack/Defense/Dexterity (has -1 att/def) — VERIFIED.
  8. Armour page: Light (least protection/penalties), Medium (more coverage than light, less resistance than
     heavy, no severe penalties), Heavy (most resistance, stat penalties, trains combat stats faster) — VERIFIED.
  9. First Aid / healing (Guide_to_Health page): cut damage never heals by itself, needs First Aid Kit; blunt
     damage (stun) regenerates without bandaging; Field Medic skill governs bandage speed + charges used — VERIFIED.
  10. Jobs page: jobs are ordered commands set via Shift+right-click; character works top-to-bottom, skips to next
      if a job can't be done, returns when available; job types = Work, Auto-Haul, First Aid/Medic, Collection —
      VERIFIED.
  11. Border Zone page: arid no-man's-land between Shek Kingdom and Holy Nation; Starving Bandits + Dust Bandits
      roam; Dust Bandits and Black Dragon Ninjas have fortified centres; high-quality copper/iron near towns;
      two major towns = Squin (Shek) and The Hub; The Hub's bar owned by Trade Ninjas, Shinobi Thieves watchtower —
      VERIFIED.
  12. The Hub page: shops = Bar (barman supplies alcohol/bread/food), Thieves Guild, Small Shack (residential);
      buildings for sale (Small Shack c.1,500, Storm House c.4,800, etc.); bar barman verified as a supplier —
      VERIFIED. NOTE: no "general-store trader" is documented on The Hub page; the earlier draft's reference to
      one was rewritten to name only the verified barman.
  13. Resale price (Armour page): "Armour sells for 0.25x of its value" — VERIFIED; supports the general
      "shops buy at a discount" claim.
  14. Food prices (Food page): "depending on price randomization food prices may actually differ in your game" —
      VERIFIED; supports the "prices vary" claim.
  15. Hobbs may appear at The Hub bar on the Wanderer start (The Hub page) — VERIFIED (mentioned in recruit section).

## Wave 1 (The Outlander) — 2026-08-03
- **Wave 1 shipped 10 mods** (within the 8-12 floor): 3 mechanics (Radiant Food Expansion, Deep Wells, Moisture Farming), 3 content (Vanilla Outposts Expanded, Fish and Meat Industry, Shek Perfect Body), 4 graphics (Mood Weather, Flipped Buildings, Forgotten Buildings, Slopeless).
- **Steam anti-bot decoy handling:** the "This item has been removed from the community" banner seen on several fetched Workshop pages is Steam's decoy for non-logged-in bots. Every affected mod was re-fetched within the same session and resolved to its true live page with matching title. No mod was judged removed or added purely on banner text; the "removed" verdict from Wave 0 (Radiant True Dark UI, id 2916407101) stands on its own earlier evidence.
- **Wave 1 load-order guidance:** Slopeless ABOVE Forgotten Buildings (author requirement, wrong order blocks placement of some buildings); Compressed Textures Project (Wave 0) ABOVE all Wave 1 content so building textures render correctly; Mood Weather pairs with Particle System Override (Wave 0); do NOT run Fish and Meat Industry alongside its superseded sibling "Meat Production and Processing".
- **Fact-check log #3 (kenshi.fandom.com, 2026-08-03):**
  1. Farming page: 6 crops = Cactus, Cotton, Greenfruit, Hemp, Riceweed, Wheatstraw. Environment table: Arid (cactus 100/wheatstraw 50/hemp 40), Green (all except cactus+riceweed 100), Swamp (riceweed+hemp 100). Growth also depends on site fertility. Hydroponics bypass environment/fertility. Untrained farmers "waste many crops and will likely lead to a food shortage" — VERIFIED.
  2. Hydroponics page: requires Research Bench V + AI Core, 4 Ancient Science Books per crop; hydroponic farms can grow greenfruit, cactus, etc. indoors — VERIFIED.
  3. Well page: "a vital source of water, you won't last long without it"; requires tech research — VERIFIED.
  4. Prospecting page: environment + water (well efficiency; lower elevation = higher water) + fertility (farms) + stone (stone mines) + iron (raw iron + outcrops shown on map) + copper — VERIFIED.
  5. Buildings page: build menu categories (Buildings, Camping, Crafting, Defence, Farming, Food, Interior, Lights, Mining, Power, Storage, Tech, Training, Walls); Building Materials required — VERIFIED.
  6. Raid page: territorial event; Band of Bones assaults with 2-4 squads of 4-7; raiders break down gates; bases near faction camps within ~5,000m trigger raids; raiders give a speech before attacking — VERIFIED.
  7. Guide_to_Building_an_Outpost: Shem = "promised land" (100 iron, 80 copper, high-richness stone); water as a defensive moat ("forcing hostiles to swim and slowing them down"); animals can get stuck/phase through walls; faction visits = tax (UC), prayer (HN), tribute (Shek), Hounds extortion; refuse options = "they might be immediately attacked, or the squad will retreat with the promise of returning with an army"; roaming animals = free meat/skins; town farms can be worked for free with no stolen tag — VERIFIED.
  8. Defensive_Walls_(Tech): unlocked after Makeshift Walls; description "Solid walls that we can actually stand and build turrets on."; enables turret mounting; requires Building Materials — VERIFIED.
- **Mod count note:** the 8-12 floor was met with 10 mods after 2 search rounds. The adult-content search (per spec policy) ran but YAKNM variants could not be verified (Steam Error pages) and were logged UNVERIFIED rather than guessed; no explicit-porn mod was accepted.

## Wave 2 (The Smith) — 2026-08-03
- **Wave 2 shipped 10 mods** (within the 8-12 floor): 4 mechanics (RIY+ (The Scientific Method), Better Hydroponics, Industrial Expansion [Beta], Leather Expansion: Leathercraft), 4 content (Armor Crafting Redux - Core, Expanded Craftable Weapons v2.1, Vanilla Crossbow Turrets, Portable Crossbow Turret kit), 2 graphics (Radiant Vanilla Reborn Weapons, Shiny Plate Armor).
- **Wave 2 gating rule enforced:** every accepted mod gates its benefit behind research time and/or materials - no free power. Power-spike candidates were cut: Handturrets (game-start turret), Portable Crossbow Turret id 778082429 (game-start crossbow knowledge). Crafting of top weapon grades is gated behind Smithing 56/60 + Tech Level 5 + AI Cores; hydroponics inherits the vanilla Bench V + AI Core gate.
- **Verification method:** 10 Steam Workshop pages fetched + Steam Web API (GetPublishedFileDetails POST with itemcount) cross-checked for all 10 accepted mods (authoritative title/created/updated/subscriber/tags). Radiant Vanilla Reborn Weapons and Shiny Plate Armor were HTML 429-rate-limited on page fetch, so their verification rests on the authoritative API title/description/metadata - logged, not guessed. Nexus mirrors confirmed for Portable Crossbow Turret kit (mod 747, official "Steam version official" mirror) and Better Hydroponics (mod 1202, v1.0.1 changelog).
- **Wave 2 load-order guidance:** Expanded Craftable Weapons requires Dark UI (Wave 0) per its 2022-06-10 changelog; Shiny Plate Armor should load last except GUI mods (author instruction); do NOT run Radiant Vanilla Reborn Weapons with Radiant Asamarume Weapons (integrated in v2.0); Industrial Expansion is author-labeled Beta and pairs with vanilla research (Wells II unlocks Indoor Wells II).
- **Fact-check log #4 (kenshi.fandom.com, 2026-08-03):**
  1. Research_Bench page: Research Bench II = 10 Iron Plates/0 power/90% efficiency; III = 20/10/95%; IV = 25/15/100%; V = 30/25/105%; VI = 35/30/110% - VERIFIED. Bench level acts as the tech-level gate (Bench V = tech level 5, needed for hydroponics).
  2. Weapon_Smithing_(Tech) page: craftable model ladder = Rusted Junk, Rusting Blade, Mid-Grade Salvage, Old Refitted Blade, Refitted Blade, Catun No.1-3, Mk I-III, Edge Type 1, Edge Type 2 (only via "critical success" from your smith). Note: "Currently, there is no vanilla method to craft Edge Type 3 or Meitou weapons yourself" - VERIFIED. This is the exact gap Expanded Craftable Weapons fills.
  3. Mounted_Crossbow page: Pierce 55, accuracy deviation 5 degrees at 0 skill, accuracy perfect at level 70, rotation 0.7, max reload 8s, range 65m, velocity 100m/s - VERIFIED; supports the strategy claim that turret accuracy scales with the Crossbow skill (accuracy perfect at level 70).
  4. Steel_Bars page: avg price c.648; made at Steel Refinery from Iron Plates (4 plates at first refinery level, 3 at subsequent); used in crossbows, high-tier melee weapons, Chain Armour, Chainmail Sheets, Skeleton Repair Kits - VERIFIED. Iron_Plates avg price c.135, made at Iron Refinery - VERIFIED.
  5. Armour_Smith (found via websearch; direct Armour_Smithing pages 404/403): armour quality depends on Armour Smith skill + a small random factor; NO research required to unlock higher armour grades (unlike weapons); benches = Leather Armour Crafting Bench, Chain Armour Crafting Bench, Heavy Armour Smithy, Clothing Bench - VERIFIED.

