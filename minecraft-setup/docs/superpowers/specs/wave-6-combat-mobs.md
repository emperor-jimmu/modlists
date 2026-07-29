# Wave 6 — Combat & Mobs

**Fabric 1.21.1** | **Phase 1–3** | Adds combat depth and new enemies

## Design Goal

Wave 6 gives the player's gear something to fight. Better Combat makes every weapon feel distinct. Mutant Monsters and AdventureZ add genuinely threatening enemies. Champions adds elite mob affixes for loot chases. Enchantment Descriptions makes gear information clear.

Everything is configurable or opt-in — consistent with the chill philosophy.

## Mod Roles

| Mod | Version | Role | New Dependencies |
|-----|---------|------|------------------|
| **Better Combat** | 2.3.2 | Melee combat animations — weapon reach, sweeping, attack speed visuals. Makes Simply Swords weapons feel different from each other | PlayerAnimator (new), Cloth Config, Fabric API |
| **Mutant Monsters** | 21.1.1 | Mutant versions of vanilla mobs (zombie, skeleton, creeper, enderman) — each drops unique gear. Configurable spawn rate | Puzzles Lib (new), Forge Config API Port (new), Fabric API |
| **AdventureZ** | 1.5.0 | New endboss (Blackstone Golem, ritual-summoned), The Eye (dragon boss, altar-summoned), and overworld/nether mobs. Most content is opt-in | Fabric API, Cloth Config |
| **Champions** | 1.0.6 | Elite mob affixes (rare/epic mobs with special abilities). Configurable rank chance. Better loot = higher rank | none |
| **Enchantment Descriptions** | 21.1.10 | Shows what enchantments actually do in tooltips. 30M downloads — essential QoL | Bookshelf Lib (new), Prickle (new), Fabric API |

### New Dependencies

| Mod | Required By | Notes |
|-----|-------------|-------|
| PlayerAnimator | Better Combat | Animation library — 22M downloads, very popular |
| Puzzles Lib | Mutant Monsters | Library by same author (Fuzs) |
| Forge Config API Port | Mutant Monsters | Fabric port of Forge's config API |
| Bookshelf Lib | Enchantment Descriptions | Library by Darkhax |
| Prickle | Enchantment Descriptions | Config library |

### Already Present from Earlier Waves

| Mod | Since | Notes |
|-----|-------|-------|
| Fabric API | Wave 0 | Required by all |
| Cloth Config | Wave 0 | Required by Better Combat, AdventureZ |
| Mod Menu | Wave 0 | All configs accessible via Mod Menu |

## Integration

| Wave | Integration |
|------|-------------|
| Wave 3 (Equipment Magic) | Better Combat animations enhance Simply Swords weapons. Champions drop higher-rarity affix gear. Mutant gear can be socketed with Affixology gems |
| Wave 1 (Tech Reborn) | Tech Reborn armor + weapons work with Better Combat animations |
| Wave 5 (Logistics + Powah) | Enemies drop materials that feed into Tech Reborn processing |
| Wave 2 (Exploration) | Mutants spawn in Terralith/Tectonic biomes. AdventureZ bosses accessible from explored dimensions |

## Progression

### Phase 1 (hours 0–40)

- Better Combat active from first punch — every weapon feels different immediately
- Mutant Monsters start spawning at configurable rates — early mutants are challenging but beatable
- Enchantment Descriptions helps understand gear

### Phase 2 (hours 40–150)

- Champions start appearing with rare/epic affixes — better loot for well-equipped players
- AdventureZ content becomes accessible: Summoner (thunderstorms), Nether mobs
- Ritual-summoned bosses become viable targets

### Phase 3 (hours 150+)

- Blackstone Golem (AdventureZ) is beatable with quantum armor and Epic affix gear
- The Eye dragon boss is a proper endgame challenge
- Champions at highest rank drop best loot in the game

## Config Changes

- Mutant Monsters: reduce spawn rate to 50% of default (chill-friendly)
- Champions: adjust rank distribution to favor common over elite
- Better Combat: verify compatibility with Simply Swords unique weapon abilities
- AdventureZ: explicit boss-summoning is already opt-in, no changes needed
