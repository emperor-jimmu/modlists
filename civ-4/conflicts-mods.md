# Mod Conflicts Tracker — Throne of Titans

Tracks known conflicts and interactions between mods in the list. **NOT included in the PDF.**

| Mod A | Mod B | Wave | Conflict / interaction | Resolution / status |
|---|---|---|---|---|
| BUG Mod | BAT Mod | 0 | BAT 4.1 includes BUG (plus BULL and Blue Marble) — running both duplicates the UI install in CustomAssets | Choose one: BUG + BULL + Blue Marble individually, or BAT 4.1 as the all-in-one |
| Blue Marble | BAT Mod | 0 | BAT 4.1 already includes Blue Marble; stacking a separate install is redundant and can conflict | Skip standalone Blue Marble when using BAT (per the BAT docs) |
| BUG Mod | K-Mod | 0 / 1 | K-Mod integrates BUG-style UI features and ships its own DLL; BUG lives in CustomAssets, which mods ignore | Run K-Mod standalone — do not add BUG/BULL on top |
| BUG / BULL | RevolutionDCM | 0 / 1 | RevDCM bundles BUG and Better BTS AI components, toggleable in-game | Use RevDCM's in-game toggles instead of separate BUG/BULL installs |
| Better BTS AI (in RevDCM) | K-Mod | 1 | Both replace the AI DLL — mutually exclusive | Pick one per game with the mod chooser |
| Wave 2 total conversions (RFC, FFH2, Realism Invictus, AND) | each other + Caveman 2 Cosmos | 2 / 3 | Each ships its own DLL and replaces the game wholesale | One mod per game via the mod chooser — never combine |
| CustomAssets mods (BUG/BULL/Blue Marble) | any Mods-folder mod | 0 vs 1–3 | Civ 4 ignores CustomAssets while a mod is active | Wave 0 mods apply to vanilla play only; they are not active inside total conversions |

Entries populated 2026-08-21 from the mods' own material (see `STATUS.md`).
