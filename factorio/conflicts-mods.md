# Mod Conflicts

Two structural conflicts were identified and resolved during curation (2026-08-03); neither blocks the final list because each has a documented mitigation. See STATUS.md for the full audit trail.

## Conflict Log
| Mod A | Mod B | Issue | Mitigation |
|---|---|---|---|
| Krastorio 2 | Factorio: Space Age (DLC) | K2's page: "Krastorio 2 does not properly support the Space Age mod. The game will load, but progression will be broken." K2 was not designed for the Space Age expansion. | Krastorio 2 Spaced Out (K2SO, Polka_37) bridge merges K2 with Space Age; Wave 2 ships both anchors. Wave 2 keeps Space Age ENABLED; Waves 0-1 run base-game-compatible and never enable the K2/K2SO pair. |
| Wave 1 content mods (Miniloader, Deadlock's Stacking Beltboxes, Warehousing Mod, Project Cybersyn, Circuit HUD V2, Module Inserter, Auto Deconstruct, Nixie Tubes, Belt Visualizer, Prismatic Belts, Circuit Visualizer) | Krastorio 2 (Wave 2) | K2 rebalances every recipe; Wave 1's recipe-adjacent content mods are not designed around K2's chains and would fight its rebalance. | By design: Wave 1 content does NOT carry into Wave 2. Per-wave switching keeps each wave's content scoped (see guide/installation.typ, Per-Wave Switching). |

