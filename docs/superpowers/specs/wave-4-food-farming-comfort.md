# Wave 4 — Food, Farming & Comfort

**Fabric 1.21.1** | **Phase 1–2** | Let's Do ecosystem

## Design Goal

Wave 4 makes food meaningful, farming satisfying, and home life cozy. The Let's Do ecosystem replaces Farmer's Delight as the Fabric-native cooking hub — with Farm & Charm at the center, extended by Bakery, Brewery, HerbalBrews, and Candlelight.

No hunger/thirst overhauls, no decay mechanics, no survival difficulty increases. This is the **chill living** pillar: the player can always stop optimizing and just grow food, cook a feast, decorate a kitchen, and share a meal.

## Player Experience

### First encounter (Phase 1, hours 0–10)

The player finds new crops growing wild (tomatoes, cucumbers, corn, lettuce, tea leaves). They craft a cutting board and cooking pot, make their first hearty meal — better saturation than steak. They place a plate with a slice of cake on their counter. It looks nice.

### Mid-game (Phase 2, hours 40–80)

The player has a full kitchen: Farm & Charm stove, Bakery oven, Brewery barrels aging wine, HerbalBrews tea kettle. Oritech automated farming keeps crops flowing. Cooked meals give significant buffs — resistance, speed, jump boost — that make exploration safer. The dining table has place settings from Candlelight.

### Late-game (Phase 3, hours 150+)

The player throws feasts: group meals from Candlelight that feed multiple players (or just themself — no pressure). Their home has a stocked pantry, a wine cellar, and a tea garden. Food buffs stack with gear affixes from Wave 3. At this point, cooking is a background activity — the player has everything automated and just enjoys the aesthetic.

## Mod Roles

| Mod | Version | Role |
|-----|---------|------|
| **Farm & Charm** | 1.1.22 | Core hub: new crops and soil types, cutting board, cooking pot, stove, bees, goats. Defines the cooking machinery |
| **Bakery** | 2.1.6 | Breads, cakes, pies, pastries. Adds a multi-block oven, dough crafting, decorative cakes. Grain/crop processing extension |
| **Brewery** | 2.1.9 | Fermentation, alcoholic drinks. Adds brewing station, aging barrels, drink effects (haste, resistance, etc.). Crops: hops, barley, grapes |
| **HerbalBrews** | 1.1.3 | Teas and herbal drinks with restorative effects. Adds tea leaves, chamomile, lavender. Relaxation-focused — calming effects, health regen |
| **Candlelight** | 2.1.12 | Dining decoration and feasts. Adds cooking pots, pans, plates, glasses, tablecloths, candelabras. Group meals from shared dishes |

### Already Present from Earlier Waves

| Mod | Present Since | Relevance to Wave 4 |
|-----|---------------|---------------------|
| Cloth Config | Wave 0 | Required by Farm & Charm |
| Architectury API | Wave 0 | Required by all Let's Do mods |
| Oritech | Wave 1 | Automated farming for Let's Do crops — planters, harvesters, water |

## Integration Points

### With Oritech (Wave 1)

- Oritech automated farm machines can grow and harvest Let's Do crops
- Let's Do cooking machines (stove, oven, brewing station) can be fed ingredients via Oritech item pipes
- Farm output stored in Sophisticated Storage barrels → feeds AE2-like storage if added later

### With Equipment Magic (Wave 3)

- Cooked meals with buffs stack with gear affixes — a fully fed player wearing Epic gear is significantly stronger
- Bakery cakes and Candlelight feasts work as base decoration in the player's home between combat sessions

### With Exploration (Wave 2)

- New crops spawn in Terralith biomes — tomatoes in warm climates, tea in forests, grapes in plains
- Meals with saturation buffs make long exploration trips safer (less time spent eating)
- No food decay mechanics — food stays fresh, zero punishment for exploration

## Progression Curve

### Phase 1 (hours 0–40) — Fresh Ingredients

- Find wild crops, craft a cutting board and cooking pot
- Make first meals — better saturation than vanilla steak
- Animals can be bred with new crops

### Phase 2 (hours 40–150) — Full Kitchen

- Build a stove, oven, brewing station, tea kettle
- Automate crop farming with Oritech machines
- Unlock drink recipes with buffs — use them before boss fights or long expeditions
- Decorate with plates, glasses, tablecloths from Candlelight

### Phase 3 (hours 150+) — Feasts

- All machines automated, ingredients self-sustaining
- Cook feasts for the spectacle — stack multiple buffs at once
- Kitchen is a fully decorated part of the base

## Config Changes

- Farm & Charm: verify default crop spawn rates are reasonable
- Brewery: ensure drink effects are balanced (not too strong)
- All mods: check for server-client sync issues
- No hunger/thirst overhauls — ensure none of these mods add hunger drain mechanics

## Comparison to V1 (Forge 1.20.1)

| Aspect | V1 | V2 |
|--------|----|----|
| Cooking hub | Farmer's Delight | Farm & Charm (Let's Do ecosystem) |
| Drinks | Brewin' And Chewin' | Brewery + HerbalBrews |
| Dining | Storage Delight | Candlelight |
| Farming | Vanilla crops | Farm & Charm new crops + soil types |
