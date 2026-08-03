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

## Decisions
| Date | Decision | Rationale |
|---|---|---|
| 2026-08-03 | KMM (Nexus mod 1765) = COMPATIBLE with Kenshi 1.0.68 | Last updated 2025-10-19, originally uploaded 2025-10-12 by Aze4ka, v1.0.0-release, 97 endorsements. Actively maintained (.NET 9.0 / WPF, self-contained), requires "Kenshi (Steam or GOG version)" with no version pin - well after 1.0.68 (2024-04-01). No breakage reports found. Sources: https://www.nexusmods.com/kenshi/mods/1765 , https://github.com/nonniks/KenshiModManager |
| 2026-08-03 | Load order "later in list = higher priority" = VERIFIED | Steam guide: "Mods lower in the order overwrite mods higher in the order" (https://steamcommunity.com/sharedfiles/filedetails/?id=1850250979). Kenshi wiki FAQ: "the mod loaded AFTER, will override the value above it" (https://kenshi.fandom.com/wiki/Why_load_order_matters_and_other_FAQ_about_using_mods). Load order file = mods.cfg in game data folder (https://steamcommunity.com/sharedfiles/filedetails/?id=1684604012 , https://kenshi.fandom.com/wiki/Mods) |

## Accepted Mods
| Wave | Mod | URL | Last updated | Verified | Method | Deps | Compat | Notes |
|---|---|---|---|---|---|---|---|---|
| 0 | Dark UI | https://steamcommunity.com/sharedfiles/filedetails/?id=1200632417 | 9 Aug 2020 | YES | webfetch | None | OK | Posted 13 Nov 2017 by Eldryn; 11,897 ratings, 8.854 MB; GUI + Graphical tags; pure UI skin, no balance change; Nexus mirror = mod 253 (https://www.nexusmods.com/kenshi/mods/253) same mod, cited in card notes |
| 0 | Nice Map [Zones + Zone names + Roads] | https://steamcommunity.com/sharedfiles/filedetails/?id=1613829988 | 29 Jan 2019 | YES | webfetch | None | Flag for review (no updates since Jan 2019) - author confirmed still functional Nov 2025 | Posted 3 Jan 2019 by Djeeshka; 8,103 ratings; pure GUI_Map.dds texture swap; author: no map changes in Kenshi since release |
| 0 | Compressed Textures Project | https://steamcommunity.com/sharedfiles/filedetails/?id=1649794243 | 9 Feb 2019 | YES | webfetch | None | Flag for review (no updates since Feb 2019) - texture swap only; 753k subscribers | Posted 9 Feb 2019 by FG; 16,290 ratings, 1.339 GB; DXT5: landscape 2048->1024, others 4096->2048; load above all other mods; no save import needed |
| 0 | Particle System Override (PSO) | https://www.nexusmods.com/kenshi/mods/950 | 21 Jul 2024 | YES | webfetch | None | OK | Replaces particle .PNG -> .DDS (DXT); installer-based, Steam + GOG; tags Performance Optimization / Replacer; works with Kenshi 1.0.68-era builds |
| 0 | Kenshi Performance Fix | https://www.nexusmods.com/kenshi/mods/1216 | 8 Jul 2023 | YES | webfetch | None | OK | Mesh/shader/particle/water optimization overhaul; v1.3 aligned with PSO; Steam + GOG installer |
| 0 | Kenshi CTD fix patch | https://www.nexusmods.com/kenshi/mods/506 | 30 May 2024 | YES | webfetch | None | OK | Updated after 1.0.68 release; fixes animation CTDs; auto-generates a patch mod; place last in load order |

## Rejected Mods
| Wave | Mod | Reason |
|---|---|---|
| 0 | RE_Kenshi (Nexus mod 847) | Page states 1.0.68 installs are "partially downgraded to 1.0.65 for compatibility reasons" - conflicts with the strict 1.0.68 target; logged in mod-ideas.md for a list-wide decision |
| 0 | 256 Recruitment Limit / squad-cap mods | Power spike - raises the vanilla ~30-character squad cap above vanilla without a proportionate cost |
| 0 | Radiant True Dark UI (Steam id 2916407101) | Removed from Steam Workshop for violating Community Guidelines - unverifiable |
| 0 | Modern UI Overhaul (Steam id 3042912286) | Requires Dark UI + the same Kenshi UI pattern; redundant with Dark UI at Wave 0 |
| 0 | "Free Camera Rotation" (Steam id 616359783) | XCOM 2 mod, not Kenshi - search false positive |
| 0 | KenshiFP (Nexus mod 2063) | First-person WASD plugin - invasive controls change, not a Wave 0 QoL fit; logged in mod-ideas.md |

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
  3. Recruiting costs cats: generic "Sword for hire" recruits can be hired for c.3,000; prices typically range
     ~3,000-9,000 depending on skill — VERIFIED.
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
