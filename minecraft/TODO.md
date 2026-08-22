# TODO — Minecraft Modpack

Scratch backlog of future work. See STATUS.md for the canonical decision register and in-progress tracking.

## Documentation

- [ ] Author Patchouli guidebook content for the modlist — the Chronicle of Shadows (Apotheosis) ships with Patchouli, but no other mod in the pack provides Patchouli guidebooks. Author a custom Driftwood guidebook covering: getting started, keybinds reference, progression roadmap (Create → Mekanism → AE2), MineColonies basics, and the Apotheosis gear system. Stored under `patchouli_books/driftwood_guide/` as JSON entries + categories.

## Pending Work (from STATUS.md)

- [ ] Test launch with Waves 0-8 — generate default configs for all mods
- [ ] Verify no mod conflicts
- [ ] Cross-wave integration testing
- [ ] Config tuning per mod
- [ ] After test launch, capture Apotheosis defaults (adventure.cfg, ench.cfg, enchantments.cfg, potion.cfg, village.cfg) then apply overrides per GUIDE.md
- [x] Effectual config tuning: disable cave dust (duplicated by Particular Reforged) — **done Aug 2026 (Wave 0.5 review)**: `config/effectual.json` → `"caveDust": false` (JSON config — GsonConfigSerializer, not TOML)
- [x] Day Counter config — verify keys after test launch — **closed Aug 2026**: Day Counter removed (user reads the day from JourneyMap minimap labels); tracked override `config/day_counter.toml` deleted with the mod
- [ ] Author ~85 FTB Quests for non-MineColonies mods (Create, Mekanism, AE2, Apotheosis, Combat, Exploration, Food & Farming)
