# Minecraft Modpack — AGENTS.md

This document defines the vision, constraints, and working conventions for this Minecraft modpack. Every session working on this project must align with the principles below.

---

## Core Vision

This modpack is built around four pillars that must coexist in every design decision:

1. **Serious power fantasy** — the player should eventually become godlike. Flight, oneshotting bosses, extreme mobility, personal invincibility. Power is personal — world-altering magic is kept minimal or absent. The player becomes a demigod, not a world-shaper. **RPG-style levels and skills** reinforce this — every action earns XP, every level-up unlocks or improves a tangible ability, and the player always feels like they're growing stronger even between gear upgrades.

2. **Easy-to-standard difficulty curve** — the early game is accessible and forgiving. The ramp is smooth, never a wall. No single biome, mob, or mechanic gatekeeps progress. Difficulty escalates at the player's pace through voluntary engagement with harder content.

3. **200h+ content runway** — no single "win" condition. Multiple parallel endgames (tech, magic, colony, exploration). The player should not exhaust all meaningful progression before 200 hours. Content must feel abundant, not padded.

4. **Chill living** — at any point, the player can stop optimizing and just build a home, tend a garden, exist. The pack never punishes you for logging off, ignoring progression, or spending a session decorating. Cozy is always a valid game state.

**Combat & weapons — the power fantasy's edge.** Battles and powerful weapons are a core expression of the power fantasy, deliberately **late-game** (Phase 2+, peaking in Phase 3) so the early ramp stays forgiving. Weapons — not escalating enemy spawns — are the focus. The weapon ceiling is **steampunk / Create-native**: Create: Gunsmithing (personal firearms), Create: Big Cannons + Advanced Technologies (artillery), and Apotheosis-forged melee via Simply Swords / Simply More. Modern ballistic firearm mods (TACZ, Scorched Guns) are **out of scope** — they duplicate Gunsmithing's role and break the aesthetic. The goal: worthy battles with worthy weapons, never bullet-sponge hordes.

---

## Progression System

### Phase 1 — Cozy Roots (hours 0-40)

The player eases into the world. Punch trees, build a starter home with Sophisticated Storage barrels. Recruit a few Guard Villagers for safety. Place the first MineColonies builder hut. Early Create mechanical power (water wheel, windmill) and early Mekanism basic machines (metallurgic infuser, enrichment chamber). First Apotheosis gear drops with affixes start appearing. Farmer's Delight + Brewin' And Chewin' provide hearty meals and drinks. Waystones unlock fast travel between villages. GraveStone Mod makes death forgiving — keep XP, 24h grave protection.

- Difficulty: forgiving
- Focus: shelter, food, basic automation
- New mechanics are introduced slowly
- The world feels safe enough to build something pretty
- **RPG levels 1–25**: early skill unlocks (mining speed, jump height, fall damage reduction)

### Phase 2 — Industrial Ascent (hours 40-200)

This is the core of the modpack. Mekanism expands into mid-tier and late-tier: digital miner, ore quintupling, induction matrix, fission reactor. Applied Energistics 2 ME system goes online and becomes the storage backbone. Create rotational power drives factories, sequenced crafters, and contraptions of increasing scale — including The Factory Must Grow for oil processing, diesel engines, and aluminum/steel production. MineColonies grows from a village into a functioning city, consuming excess resources and supplying rare materials. Apotheosis gear customization (gems, affixes, enchanting overhaul) matures into the primary loot chase — the player hunts for mythic rolls and perfect gem sockets. Create: Big Cannons enters the picture for colony defense and siege spectacle. Chunk Loaders keep factories running across dimensions. The Farmer's Delight ecosystem expands with More Delight, My Nether's Delight, and Ocean's Delight. YUNG's dungeon mods enrich exploration loot. Storage Delight adds kitchen furniture for base decoration. Northstar Redux adds space exploration with Create-based rockets, oxygen systems, and off-world colonies.

- Difficulty: standard, gradual ramp
- Focus: deep automation scaling, logistics puzzles, resource multiplication
- This phase alone should provide 100-150 hours of content
- Every session unlocks a new capability, nothing comes fast
- **RPG levels 25–60**: passive skill trees (damage boosts, resource efficiency, movement upgrades)

### Phase 3 — Perpetual Ascent (hours 200+)

No endpoint. Mekanism endgame activates: fusion reactor, supercritical phase shifter, antimatter, full Mekasuit. Applied Energistics 2 grows into quantum networks and spatial storage. Create reaches absurd speeds and scale — mega-factories, infinite resource loops. Apotheosis mythic gear with perfectly socketed gems, max-level enchantments, and ideal affix rolls turns the player into an unstoppable force. MineColonies is a self-sufficient empire across multiple biomes. The Aether, Twilight Forest, and L_Ender's Cataclysm provide combat endgame for those who want it. The player flies freely, oneshots anything, and builds at creative-scale using survival-automated resources.

- Difficulty: the player is the difficulty
- Focus: endless optimization, personal power ceiling, megabuilds, "just one more thing"
- Chill building remains valid at any power level — no rush

---

## Mod Roles & Integration

### Mod List

The complete mod list with versions, roles, and download links is maintained in **[GUIDE.md](./GUIDE.md)** (NeoForge 1.21.1). V3 is the only version that remains — V1 (Forge 1.20.1) and V2 (Fabric 1.21.1) have been removed.

### Integration Rules

- Create outputs (cobblestone, alloys, processed ingots) feed into AE2 storage. AE2 autocrafting queues feed back into Mekanism.
- Ars Nouveau spellbooks complement Mekanism gear — magic enhances tech, tech enhances magic. Neither should obsolete the other. *(Only if Ars Nouveau is added — currently not in V3; Apotheosis + Relics + Simply Swords fill the equipment-magic role.)*
- Guard Villagers scale their presence with colony size. A larger base should have proportionally more guards.
- Sophisticated Storage is intentionally outclassed by AE2 in Phase 2 but remains useful for localized micro-storage near Create contraptions.
- Farmer's Delight is the hub for all food mods. Brewin' And Chewin' (drinks/fermentation), More Delight (new meals), and Storage Delight (kitchen furniture) extend it without overlapping.
- YUNG's dungeon mods add exploration targets and loot injection points — they feed items into Apotheosis affix/gem system and reward dungeon diving in any phase.
- The Aether, Twilight Forest, and L_Ender's Cataclysm are optional endgame combat dimensions. They don't gate or block any tech/magic progression — the player engages when they choose.
- Waystones (fast travel) and GraveStone Mod (forgiving death) are chill-living enablers. Their configs should always be set to reduce friction, never to add it.
- Apotheosis gems and affixes work on Mekanism armor/tools — gear customization feeds power fantasy across both tracks.
- Chunk Loaders are essential for Phase 2+ automation across dimensions. They keep Mekanism factories and MineColonies running when the player explores.
- No data pack should duplicate a mod's functionality. Data packs handle targeted QoL only (e.g., anti-creeper grief, armor stand posing).
- No mod should duplicate another mod's core purpose. If two mods provide the same capability, one must be configured lower or gated later.

---

## Technical Standards

```
Minecraft Version    1.21.1
Modloader            NeoForge
Java Version         21

Configuration        All non-default config overrides live in config/
                     Each override must be documented: what was changed and why

Mod Management       Add mods one wave at a time, test launch after each wave
                     Never add a mod that duplicates an existing mod's role
                        QoL and performance mods are encouraged:
                         - EMI / Jade (recipe and block info)
                         - Sodium (performance)
                         - Iris (shader loader — enables shaderpacks)
                         - Distant Horizons (LOD — extreme render distance)
                         - Xaero's Minimap / JourneyMap (minimap)
                         - AppleSkin (food info)
                         - Loot Journal (pickup notifications)
                         - Advancement Plaques (advancement plaques)

                         - Modern UI (modernized UI framework — text engine, fancy tooltips, GUI blur)
                         - Traveler's Titles (biome/dimension entry titles)
                          - Sound (UI/action sound effects)
                         - Tiny Item Animations (inventory item float/pulse)

Data Packs           Stored in datapacks/, each with a README explaining purpose
                     Worldgen tweaks, QoL changes, and loot table modifications
                     No recipe overrides unless intentionally designed

Resource Packs       Stored in resourcepacks/, optional, documented

File Layout          config/              — mod config overrides, tracked in version control
                     datapacks/           — world data packs
                     resourcepacks/       — optional resource packs
                     shaderpacks/         — shader .zip files
                      GUIDE.md            — Mod list (NeoForge 1.21.1)
                     AGENTS.md            — this file
                     STATUS.md            — what's configured, what's pending
                      GETTING-STARTED.md   — per-wave tutorials, keybinds, configs

Note: This is a guide repository. Config overrides, data packs, and resource
packs are tracked here for version control. The actual mod .jar files live in
the user's Minecraft instance at %APPDATA%\.minecraft\mods\.
```

---

## Session Navigation

When starting a session on this project, follow this order:

1. **Read STATUS.md** — understand what was in progress, what's blocked, what's done.
2. **Read GUIDE.md** — know the current mod set and version pins.
3. **Pick one chunk** — each session should produce one completed unit of work (a mod configured, an integration wired, a data pack written, a bug fixed).
4. **Update STATUS.md** — mark what was completed, note blockers, set the next chunk.

### Integration Rule

Before configuring any mod, ask: *"What should this connect to?"* Every machine recipe, pipe routing, storage hook, and spell unlock must serve the progression curve. No orphan features. If a mod adds a capability that doesn't feed into at least one other mod's progression, gate it or reconsider it.

### Progression Gate Rule

No single mechanic should let the player skip a phase. If the digital miner can be crafted in Phase 1, it undermines the Industrial Ascent. Gate powerful items behind materials that only become available in their intended phase — typically through MineColonies research unlocks, Create brass-tier crafting, or Mekanism material gates.

### Chill Rule

At no point should config changes or feature additions make the game hostile to idle play. Don't add hunger/thirst overhauls, invasive mob spawning, or decay mechanics. The player should always be able to walk away from progression and just build. This is non-negotiable.

### Game Mode Constraints

- **Survival only** — creative mode is never used. Every block placed, every item crafted, and every structure built must be achievable in survival. Mods that require creative-mode access for core functionality are incompatible. Config options that assume creative-mode access (e.g., spawn eggs for testing) should be noted but don't disqualify a mod.
- **Strictly single-player** — no multiplayer, no servers, no LAN games. Mods that add server administration tools, multiplayer sync features, or permissions systems are irrelevant. Multiplayer-only features (voting, teams, economy) should be config-disabled or skipped entirely. Mod compatibility with multiplayer is noted for reference but has zero weight in decision-making.
