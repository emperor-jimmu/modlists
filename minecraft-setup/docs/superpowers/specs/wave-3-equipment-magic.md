# Wave 3 — Equipment Magic & Loot

**Fabric 1.21.1** | **Phase 1–2** | Designed alongside Waves 0–2. | **Also includes RPG leveling** via Skill Tree (RPG Series) + Pufferfish's Skills.

## Design Goal

Wave 3 equips the player with a full RPG equipment system and a universal leveling layer. Every action earns XP, every level-up unlocks a tangible improvement, and every weapon drop can roll with random affixes. This is the pack's primary "magic" pillar — but it manifests **through gear and stats**, not spellbooks.

Three layers build on each other:
1. **Weapons that feel special** — Simply Swords provides 60+ unique weapons, each with its own passive/activated ability
2. **Loot that feels exciting** — Savaru's Affixology adds Diablo-style rarity tiers (Common→Uncommon→Rare→Epic) with random affixes, gem socketing, and unidentified gear
3. **Accessories that change how you play** — Relics RPG adds legendary-style accessories; Runes adds socketable runes

The Spell Engine / Spell Power library mods provide the attribute framework that makes all of this work together.

## Player Experience

### First encounter (Phase 1, hours 0–10)

The player kills a zombie and it drops a **Simply Swords unique** — a weapon they've never seen with a special ability. It's not just "iron sword but better" — it does something *different* (e.g., a scythe that heals on kill, a rapier that applies armor shred). The player identifies it at an anvil (Affixology) and sees it has a "Rare" quality with +3 attack speed.

### Mid-game (Phase 2, hours 40–80)

The player has a handful of **Relics RPG accessories** — a ring that gives them a double-jump, an amulet that creates a protective shield. They socket gems into their favorite weapons for extra effects. They carry a **Rune Pouch** with runes to swap between situations. Affixology mastery system unlocks as they identify and deconstruct gear.

### Late-game (Phase 3, hours 150+)

The player's loadout is fully customized: a maxed-out Simply Swords unique weapon with Epic-tier affixes, a socketed Unprecedented-quality gem, and a full set of Relics RPG accessories. Every piece of gear was earned, identified, and optimized. They can oneshot most mobs while flying through their base at extreme speed from Aether-derived mobility.

## Mod Roles

| Mod | Role |
|-----|------|
| **Skill Tree (RPG Series)** 1.4.4 | RPG leveling system — earn XP from any action, level up, spend points on attributes (strength, vitality, agility, magic, defense) and passive abilities. Built on Pufferfish's Skills |
| **Simply Swords** 1.63.0 | 60+ unique weapons, each with a distinct passive/active ability. Loot-table injected so they drop from mobs and chests |
| **Savaru's Affixology** 2.1.6 | Diablo-style loot: rarity tiers (Common→Uncommon→Rare→Epic), random affix rolls, gem socketing with quality system, unidentified gear, inscription system. The primary chase mechanic |
| **Relics RPG** 1.3.0 | Legendary-style accessories with unique passive/active abilities. ~30+ relics across Common→Epic tiers. The "oh wow" drop |
| **Runes** 1.2.1 | Socketable runes for weapons/tools. Each rune adds a specific enchantment-like effect. Swappable — a tactical layer |
| **Spell Engine** 1.9.9 | Casting framework and magic attribute API. Library mod — enables Spell Power attributes and Relics abilities |
| **Spell Power** 1.4.6 | Magic attribute system: spell damage, critical strike chance, critical strike damage, haste, resistance, armor penetration. Library mod — makes magic damage scale like physical damage |
| **Trinkets** 3.10.0 | Accessory slot API. Required by Runes and Relics RPG for ring/amulet/glove/belt slots |
| **Pufferfish's Skills** 0.18.0 | Underlying skill system framework. Required by Skill Tree (RPG Series). Fully configurable — defines XP sources, level curves, and skill definitions |
| **Simply Tooltips** | Required by Simply Swords 1.63.0 — enables dynamic tooltips with ability descriptions and stat previews |

### New Dependencies

| Mod | Required By | Notes |
|-----|-------------|-------|
| Pufferfish's Skills | Skill Tree (RPG Series) | Underlying skill system — defines XP, levels, and attribute spending |
| More RPG Library | Savaru's Affixology | Library for the "More RPG" ecosystem |
| Patchouli | Savaru's Affixology | In-game guidebook for Affixology systems |
| Fzzy Config | Simply Swords | Config library for Simply Swords settings |
| Bundle API | Runes | Enables the Rune Pouch (portable rune storage) |
| Architectury API | Simply Swords, Relics RPG, Skill Tree | Cross-loader compat — already present from Wave 0 |

### Already Present from Earlier Waves

| Mod | Present Since | Notes |
|-----|---------------|-------|
| Fabric API | Wave 0 | Required by many Wave 3 mods |
| Cloth Config | Wave 0 | Config screen library |
| oωo lib | Wave 1 | GUI library |
| Geckolib | Wave 1 | Animation library |

## Integration Points

### With Tech Reborn (Wave 1)

- Tech Reborn machines can process materials used in Simply Swords and Savaru's Affixology recipes
- Tech Reborn's digital miner (laser arm) accelerates gem/ore collection for Affixology
- No direct machine<->magic crossover — they coexist as parallel advancement tracks

### With Exploration (Wave 2)

- Simply Swords unique weapons drop from YUNG's better dungeon loot tables
- Relics spawn in chest loot across Terralith/Tectonic biomes
- Aether golden dungeons can contain Epic-tier Affixology loot
- Deeper and Darker's Warden Heart area can drop rare Relics

### With Spell Engine / Spell Power

- Savaru's Affixology gems and affixes interact with Spell Power attributes (spell damage, crit, haste)
- Relics RPG abilities use the Spell Engine casting framework
- Spell Power enchantments can be applied to Simply Swords weapons

## Progression Curve

### Phase 1 (hours 0–40) — Discovering Equipment

- Skill Tree is active from the first action — mine a block, get XP, level up, spend first points
- Simply Swords unique weapons start dropping from common mobs at a low rate (~2%)
- Affixology adds Common→Uncommon affixes to gear
- First Relics drop from dungeon chests — Common tier only
- Player learns to identify gear, socket basic gems, and recognize affix value

### Phase 2 (hours 40–150) — Building a Loadout

- Skill tree branches unlock mid-tier passives — spend points into preferred attribute trees
- Simply Swords weapons gain Rare→Epic affix rolls via Affixology
- Relics RPG mid-tier accessories (Uncommon→Rare) become available
- Runes become accessible — player builds a rune pouch with tactical options
- Affixology Mastery system starts unlocking higher-tier gem effects

### Phase 3 (hours 150+) — Legendary Loadout

- Max-level skill tree with full passive loadout — all attributes significantly boosted
- Epic-tier affixes and Unprecedented/Flawless gem sockets
- Relics RPG Epic-tier accessories from dragon loot and endgame content
- Complete rune set for every situation
- Player's gear is fully tailored to their playstyle

## Config Changes

### Savaru's Affixology

- Ensure loot table injection works with Terralith/Tectonic/YUNG's structures
- Verify identification scroll recipes use accessible materials (paper + feather — confirmed in v2.1.6)
- Consider disabling or reducing XP cost on ash repair (chill rule)

### Simply Swords

- Ensure unique weapons are not disabled by default
- Verify Better Combat compatibility (optional)

### Relics RPG

- Ensure loot table injection compatible with existing dimension mods
- Verify trinket slot integration (Trinkets API)

## Next Steps

1. [x] Version pins confirmed via Modrinth API
2. [ ] Test launch with Wave 3 mods (after writing MODLIST-V2.md and GETTING-STARTED-V2.md)
3. [ ] Verify no mod conflicts during launch
4. [ ] Fine-tune config overrides
5. [ ] Cross-wave loot table integration testing
