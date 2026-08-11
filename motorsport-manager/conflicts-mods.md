# Known Conflicts & Incompatibilities

Working register for the GRID Control modlist (Motorsport Manager, Patch 1.6 baseline). Not included in the PDF; kept as the technical ledger.

## Hard Conflicts (never run together)

| Mod A | Mod B | Why |
|-------|-------|-----|
| 2026 mod (jojorso, 3679864343) | 2026 Season Vanilla Overhaul (Djangles, 3682708186) | Both replace the game database ("New Game Mod"). Enable exactly one. |
| 2026 mod / Vanilla Overhaul | Sponsor Mod 4 (1310437762) | Sponsor DB overlaps; season mods already ship real/overhauled sponsors. |
| Rebirth: Redux (Nexus 11) | Any other data/logic mod | Redux replaces vanilla AI wholesale; author: "NOT COMPATIBLE with other mods, ensure all other Workshop mods are deactivated before starting a new game." |
| Rebirth: Redux | Save editor | Breaks Redux properties; corrupts saves (author warning). |
| Djangles Single Seater Car Pack (3668727211) | 2026 mod (jojorso) | The 2026 mod already bundles the F1 car model from this pack — stacking duplicates file replacements. Pack pairs with the Vanilla Overhaul path instead. |
| Vanilla Retro/Fantasy Livery Pack (1249691137) | Any custom car-model mod | Author: liveries "will not work correctly (or at all) if you are using a mod with custom car models." |
| 2026 F1 Car (3306027055) | Djangles Car Pack for 1.6 (3668727211) | 1.53 vs 1.6 — version-locked 3D models. |

## Version-Lock Conflicts (1.53 vs 1.6)

- **1.6-native 3D models crash a 1.53 install** and **1.53-native 3D models are unsupported on 1.6** (per Djangles LeVaughn: subscribing to 1.6 model mods on 1.53 crashes "even if not enabled").
- The **Ultimate F1 Manager Mod Series** (Workshop 3412517225, 3722953668; Nexus 12/21/22) **requires 1.53** — out of scope for this 1.6 list entirely.
- **Never mix:** pick one game version (1.6 for this modlist) and subscribe only to matching content.

## Soft Conflicts / Notes

- **Enhanced Graphics (Nexus 3) + Rebirth: Redux:** Redux's "no other mods" rule targets data/logic mods; Enhanced Graphics is a render-level UMM plugin and is widely used alongside overhauls. Test on a fresh save.
- **Season mods + existing saves:** database mods apply only to new careers. Switching profiles requires restoring vanilla `MM_Data` (Steam → Verify integrity of game files).
- **Skip Intro (Nexus 20)** conflicts in spirit with the 2026 mod's official intros — not recommended together.
- **Multiple livery/logos mods:** cosmetic asset packs from different ecosystems (vanilla liveries vs Rebirth logos) may overwrite the same asset slots; keep to one ecosystem per profile.

## Reporting

Test results, crash reports, and new conflicts go here with dates. Any mod merged into the list must be re-checked against this register.
