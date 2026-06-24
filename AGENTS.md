# Minecraft Modpack — AGENTS.md

This document defines the vision, constraints, and working conventions for this Minecraft modpack. Every session working on this project must align with the principles below.

---

## Core Vision

This modpack is built around four pillars that must coexist in every design decision:

1. **Serious power fantasy** — the player should eventually become godlike. Flight, oneshotting bosses, extreme mobility, personal invincibility. Power is personal — world-altering magic is kept minimal or absent. The player becomes a demigod, not a world-shaper.

2. **Easy-to-standard difficulty curve** — the early game is accessible and forgiving. The ramp is smooth, never a wall. No single biome, mob, or mechanic gatekeeps progress. Difficulty escalates at the player's pace through voluntary engagement with harder content.

3. **200h+ content runway** — no single "win" condition. Multiple parallel endgames (tech, magic, colony, exploration). The player should not exhaust all meaningful progression before 200 hours. Content must feel abundant, not padded.

4. **Chill living** — at any point, the player can stop optimizing and just build a home, tend a garden, exist. The pack never punishes you for logging off, ignoring progression, or spending a session decorating. Cozy is always a valid game state.

---

## Progression System

### Phase 1 — Cozy Roots (hours 0-40)

The player eases into the world. Punch trees, build a starter home with Sophisticated Storage barrels. Recruit a few Guard Villagers for safety. Place the first MineColonies builder hut. Early Mekanism basic machines (metallurgic infuser, enrichment chamber). First Ars Nouveau apprentice-tier spells for utility (break, place block, self-heal).

- Difficulty: forgiving
- Focus: shelter, food, basic automation
- New mechanics are introduced slowly
- The world feels safe enough to build something pretty

### Phase 2 — Industrial Ascent (hours 40-200)

This is the core of the modpack. Mekanism expands into mid-tier and late-tier: digital miner, ore quintupling, induction matrix, fission reactor. Applied Energistics 2 ME system goes online and becomes the storage backbone. Create rotational power drives factories, sequenced crafters, and contraptions of increasing scale. MineColonies grows from a village into a functioning city, consuming excess resources and supplying rare materials. Ars Nouveau matures into a genuine combat spellbook — the player can handle raids and bosses without hiding behind walls. Create: Big Cannons enters the picture for colony defense and siege spectacle.

- Difficulty: standard, gradual ramp
- Focus: deep automation scaling, logistics puzzles, resource multiplication
- This phase alone should provide 100-150 hours of content
- Every session unlocks a new capability, nothing comes fast

### Phase 3 — Perpetual Ascent (hours 200+)

No endpoint. Mekanism endgame activates: fusion reactor, supercritical phase shifter, antimatter, full Mekasuit. Applied Energistics 2 grows into quantum networks and spatial storage. Create reaches absurd speeds and scale — mega-factories, infinite resource loops. Top-tier Ars Nouveau spells delete bosses and provide godlike mobility. MineColonies is a self-sufficient empire across multiple biomes. The player flies freely, oneshots anything, and builds at creative-scale using survival-automated resources.

- Difficulty: the player is the difficulty
- Focus: endless optimization, personal power ceiling, megabuilds, "just one more thing"
- Chill building remains valid at any power level — no rush

---

## Mod Roles & Integration

### Current Mod List

| Mod | Role | Phase Entry | Key Integrations |
|-----|------|-------------|------------------|
| **Create** | Core automation engine: rotational power, conveyor belts, sequenced crafting, trains | Phase 1 (basic) | Powers all mechanized crafting. Feeds AE2 with processed materials. |
| **Create: Big Cannons** | Defense/offense set piece: siege cannons for colony defense and spectacle | Phase 2 | Gated behind Create steel + brass. Serves MineColonies defense. |
| **MineColonies** | Living-world anchor: autonomous NPC colony that gives the world permanence | Phase 1 (hut placement) | Supplies rare resources, consumes automation excess. Guard Villagers patrol it. |
| **Mekanism** | Personal power arc: ore multiplication, digital miner, jetpack, Mekasuit, fusion | Phase 1 (basic machines) | Primary path to flight and invincibility. Fed by Create and AE2. |
| **Applied Energistics 2** | Storage and automation brain: ME system, autocrafting, quantum networks | Phase 2 | Connects to everything — pulls from Create outputs, feeds Mekanism inputs, stores colony resources. |
| **Ars Nouveau** | Combat spellbook and utility magic | Phase 1 (apprentice) | Complements Mekanism gear, never replaces it. Provides early game QoL and late game combat. |
| **Guard Villagers** | Town defense: guards patrol MineColonies perimeter | Phase 1 | Scales with colony size. Makes nights and raids manageable. |
| **Sophisticated Storage** | Early-to-mid storage: barrels, limited networked storage | Phase 1 | Bridges punch-trees to AE2. Replaced but not invalidated by ME system. |
| **Sophisticated Backpacks** | Mobile inventory: auto-pickup, auto-feed, feeding upgrade | Phase 1 | Scales with the player across all phases. |
| **Oculus** | Shader loader: runs OptiFine-format shaderpacks on Forge via Iris API | Phase 1 (instant) | Requires Embeddium. Enables Rethinking Voxels, Complementary, BSL, and any Iris-compatible shaderpack. |
| **Distant Horizons** | LOD renderer: renders terrain at extreme distances (hundreds of chunks) | Phase 1 (instant) | Pairs with Oculus shaders. Transforms the visual scale of the world. |
| **Embeddium** | Sodium rendering engine for Forge: massive FPS boost, required by Oculus | Phase 1 (instant) | Underpins the entire graphics stack. Non-negotiable for shader performance. |

### Integration Rules

- Create outputs (cobblestone, alloys, processed ingots) feed into AE2 storage. AE2 autocrafting queues feed back into Mekanism.
- MineColonies resource production plugs into AE2 storage. Colony building requests consume excess from automation surplus.
- Ars Nouveau spellbooks complement Mekanism gear — magic enhances tech, tech enhances magic. Neither should obsolete the other.
- Guard Villagers scale their presence with MineColonies size. A larger colony should have proportionally more guards.
- Sophisticated Storage is intentionally outclassed by AE2 in Phase 2 but remains useful for localized micro-storage near Create contraptions.
- No mod should duplicate another mod's core purpose. If two mods provide the same capability, one must be configured lower or gated later.

---

## Technical Standards

```
Minecraft Version    1.20.1
Modloader            Forge (locked — MineColonies is Forge-exclusive)
Java Version         17

Configuration        All non-default config overrides live in config/
                     Each override must be documented: what was changed and why

Mod Management       Add mods one at a time, test launch after each addition
                     Never add a mod that duplicates an existing mod's role
                      QoL and performance mods are encouraged:
                        - JEI / REI (recipe viewer)
                        - Jade / WAILA (block info)
                        - Embeddium / Rubidium (performance)
                        - Oculus (shader loader — enables Iris shaderpacks)
                        - Distant Horizons (LOD — extreme render distance)
                        - JourneyMap / Xaero's (minimap)
                        - AppleSkin (food info)

Data Packs           Stored in datapacks/, each with a README explaining purpose
                     Worldgen tweaks and loot table modifications only
                     No recipe overrides unless intentionally designed

Resource Packs       Stored in resourcepacks/, optional, documented

File Layout          config/         — mod config overrides, tracked in version control
                     datapacks/      — world data packs
                     resourcepacks/  — optional resource packs
                     MODLIST.md      — live mod list with versions and install instructions
                     STATUS.md       — what's configured, what's pending
                     AGENTS.md       — this file

Note: This is a guide repository. Config overrides, data packs, and resource
packs are tracked here for version control. The actual mod .jar files live in
the user's Minecraft instance at %APPDATA%\.minecraft\mods\.
```

---

## Session Navigation

When starting a session on this project, follow this order:

1. **Read STATUS.md** — understand what was in progress, what's blocked, what's done.
2. **Read MODLIST.md** — know the current mod set and version pins.
3. **Pick one chunk** — each session should produce one completed unit of work (a mod configured, an integration wired, a data pack written, a bug fixed).
4. **Update STATUS.md** — mark what was completed, note blockers, set the next chunk.

### Integration Rule

Before configuring any mod, ask: *"What should this connect to?"* Every machine recipe, pipe routing, storage hook, and spell unlock must serve the progression curve. No orphan features. If a mod adds a capability that doesn't feed into at least one other mod's progression, gate it or reconsider it.

### Progression Gate Rule

No single mechanic should let the player skip a phase. If the digital miner can be crafted in Phase 1, it undermines the Industrial Ascent. Gate powerful items behind materials that only become available in their intended phase — typically through MineColonies research unlocks, Create brass-tier crafting, or Mekanism material gates.

### Chill Rule

At no point should config changes or feature additions make the game hostile to idle play. Don't add hunger/thirst overhauls, invasive mob spawning, or decay mechanics. The player should always be able to walk away from progression and just build. This is non-negotiable.
