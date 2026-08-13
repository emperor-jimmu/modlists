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
- [ ] Effectual config tuning: disable cave dust (duplicated by Particular Reforged)
- [ ] Day Counter config — verify keys after test launch, apply overrides (ActionBar only, no sound, no rewards, no week days, no date system)
- [ ] Verify Torchmaster config key names against generated `torchmaster-common.toml` after test launch
- [ ] Verify No Creeper Grief datapack (PK V.2.0.3, 1.20→1.20.1 pin) covers Mutant Creeper / Creeper Minion explosions at test launch — mutant explosions reportedly bypass `doMobGriefing`; if uncovered, decide mitigation (accept + Torchmaster, spawn-weight tune, or 1.21.1 anti-grief replacement)
- [ ] Author ~85 FTB Quests for non-MineColonies mods (Create, Mekanism, AE2, Apotheosis, Combat, Exploration, Food & Farming)
