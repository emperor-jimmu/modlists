# TODO — Minecraft Modpack

Scratch backlog of future work. See STATUS.md for the canonical decision register and in-progress tracking.

## Documentation

- [ ] Author Patchouli guidebook content for the modlist — Patchouli is in pack (Mekanism Guide Book), but no Driftwood guidebook exists. Author a custom Driftwood guidebook covering: getting started, keybinds reference, progression roadmap (Create → Mekanism → AE2), MineColonies basics, and the loot-chase/enchanting systems. Stored under `patchouli_books/driftwood_guide/` as JSON entries + categories.

## Pending Work (from STATUS.md)

- [ ] Test launch with Waves 0-8 — generate default configs for all mods
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod
- [x] Effectual config tuning: disable cave dust (duplicated by Particular Reforged) — **done Aug 2026 (Wave 0.5 review)**: `config/effectual.json` → `"caveDust": false` (JSON config — GsonConfigSerializer, not TOML)
- [x] Day Counter config — verify keys after test launch — **closed Aug 2026**: Day Counter removed (user reads the day from JourneyMap minimap labels); tracked override `config/day_counter.toml` deleted with the mod
- [ ] Author FTB Quests for non-MineColonies mods (Create, Mekanism, AE2, Combat, Exploration, Food & Farming) — the gear chapter (12 quests) was dropped with its mods (Aug 2026)
