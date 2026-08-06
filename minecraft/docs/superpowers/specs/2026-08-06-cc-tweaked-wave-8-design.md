# CC:Tweaked — Wave 8 Design Spec

**Date**: 2026-08-06
**Session**: Adding programmable computers to Driftwood modpack (NeoForge 1.21.1)

## 1. Context

CC:Tweaked is a programmable computer mod — Lua-powered computers, turtles (mobile robots), wireless networking, and a peripheral API for interacting with blocks and inventories. It is available for NeoForge 1.21.1 on Modrinth (the devs recommend Modrinth over CurseForge for the latest NeoForge builds).

**Why it fits Driftwood**:

- **200h+ runway**: Lua programming is genuine depth, not padding. Players can automate in ways Create/Mekanism/AE2 can't — custom logic, multi-step conditional automation, self-optimizing systems.
- **Power fantasy**: a turtle swarm mining a whole chunk, a wall of networked monitors displaying base stats, a reactor watchdog that outthinks the player — computers are the "brain" the tech stack currently lacks.
- **Chill living**: a computer managing your base while you decorate is peak chill. No server admin burden (single-player).
- **No existing overlap**: Create's sequenced gearshift is the closest thing to "programmable" — and it's purely mechanical. CC:Tweaked fills a genuine gap.

## 2. Mod

| Mod        | Version                | Source   | Role                                             |
|------------|------------------------|----------|--------------------------------------------------|
| CC:Tweaked | Latest NeoForge 1.21.1 | Modrinth | Programmable computers, turtles, Lua, networking |

**No additional dependencies** — CC:Tweaked is self-contained.

## 3. Progression Gating

The Basic Computer's default recipe (4 stone, 1 redstone, 1 glass pane) is trivially Phase 1. This is fine — a basic computer with no peripherals is a fancy calculator. The real power (turtles, wireless networking, advanced multitasking) requires Phase 2 materials.

### Recipe Gates (enforced via KubeJS `server_scripts/`)

| Item              | Default Recipe                    | Gated Recipe                                                                        | Gate                                       |
|-------------------|-----------------------------------|-------------------------------------------------------------------------------------|--------------------------------------------|
| Basic Computer    | 4 stone, 1 redstone, 1 glass pane | **Keep default**                                                                    | None — harmless Phase 1 tinkering          |
| Advanced Computer | Gold ingot + Basic Computer + ?   | Basic Computer + **Enriched Alloy** (Mekanism Metallurgic Infuser) + redstone block | Phase 2 (Mekanism basic processing)        |
| Turtle (normal)   | Iron + Basic Computer + Chest     | **TFMG Steel** ingots + Basic Computer + Chest                                      | Phase 2 (TFMG Blast Furnace)               |
| Turtle (advanced) | Gold + Advanced Computer + Chest  | **TFMG Steel** + Advanced Computer + Chest                                          | Phase 2 (builds on Advanced Computer gate) |
| Wireless Modem    | Ender pearl + stone + redstone    | **Brass** casing (Create Mixer) + Basic Computer + ender pearl                      | Phase 1.5–2 (Create brass)                 |
| Wired Modem       | Stone + redstone                  | **Keep default**                                                                    | None — local peripherals are fine early    |

### Implementation: KubeJS script

File: `kubejs/server_scripts/wave8_cc_tweaked.js`

```
ServerEvents.recipes(event => {
  // Remove default recipes
  event.remove({ id: 'computercraft:computer_advanced' });
  event.remove({ id: 'computercraft:turtle_normal' });
  event.remove({ id: 'computercraft:turtle_advanced' });
  event.remove({ id: 'computercraft:wireless_modem_normal' });

  // Advanced Computer → Enriched Alloy (Mekanism)
  event.shaped('computercraft:computer_advanced', [
    ' R ',
    'ACA',
    ' R '
  ], {
    R: 'minecraft:redstone_block',
    A: 'mekanism:enriched_alloy',   // verify exact ID at test launch
    C: 'computercraft:computer_normal'
  });

  // Turtle → TFMG Steel
  event.shaped('computercraft:turtle_normal', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // verify exact ID at test launch
    C: 'computercraft:computer_normal',
    X: 'minecraft:chest'
  });

  // Advanced Turtle → TFMG Steel + Advanced Computer
  event.shaped('computercraft:turtle_advanced', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // verify exact ID at test launch
    C: 'computercraft:computer_advanced',
    X: 'minecraft:chest'
  });

  // Wireless Modem → Brass (Create)
  event.shaped('computercraft:wireless_modem_normal', [
    ' B ',
    'BCB',
    ' E '
  ], {
    B: 'create:brass_ingot',         // verify exact ID at test launch
    C: 'computercraft:computer_normal',
    E: 'minecraft:ender_pearl'
  });
});
```

**Item ID verification**: All mod item IDs marked "verify exact ID" must be confirmed at test launch (F3+H advanced tooltips).

**Alternative approach considered**: Data packs (`data/computercraft/recipes/`). Rejected — KubeJS is already in the pack (Wave 4.5), provides a single script file instead of 5+ individual JSON files, and gives a centralized place for all recipe overrides. Less file sprawl.

## 4. Configuration

CC:Tweaked's config is world-specific: `<world>/serverconfig/computercraft-server.toml`. Overrides for the pack:

| Setting                          | Value      | Why                                                                                                               |
|----------------------------------|------------|-------------------------------------------------------------------------------------------------------------------|
| `[turtles].need_fuel`            | `true`     | Keep fuel enabled — coal/lava/charcoal are abundant. Turtles running forever for free undermines the Phase 2 gate |
| `[turtles].fuel_limit`           | `200000`   | Generous but finite. Even a lava bucket (1000 moves) fits 200 times. Prevents fuel anxiety                        |
| `[http].enabled`                 | `false`    | Single-player only. No need for web API access. Reduces attack surface                                            |
| `[http].rules`                   | empty      | HTTP disabled entirely, no rules needed                                                                           |
| `command_computers`              | `false`    | Survival-only constraint. Command computers are creative-only tools                                               |
| `[peripheral].max_queued_events` | `256`      | Default — sufficient for single-player                                                                            |
| `[threads].max_main_thread_time` | `10000000` | Default 10ms — generous timeout for single-player scripts                                                         |

**Config delivery**: The `config/computercraft-server.toml` will be tracked in `minecraft/config/` for version control. On first world creation, CC:Tweaked generates the file in `<world>/serverconfig/`. The user copies the tracked config there, or we document the settings and let them apply manually after first launch.

### Config Implementation

File: `config/computercraft-server.toml`

```toml
# Driftwood — CC:Tweaked server config overrides
# Copy this to <world>/serverconfig/computercraft-server.toml after first world creation

[http]
enabled = false

command_computers = false

[turtles]
need_fuel = true
fuel_limit = 200000
```

**Note**: CC:Tweaked's TOML config is extensive — the above lists only our overrides. All other settings remain at CC:Tweaked defaults.

## 5. GUIDE.md Section Structure

The Wave 8 section in GUIDE.md will follow the established wave pattern:

### 5.1 Wave Header

```
## Wave 8 — Programmable Computers
```

### 5.2 Mod Table

Single-entry table with CC:Tweaked and a note about Modrinth as source.

### 5.3 What is CC:Tweaked?

One-paragraph pitch: computers you program in Lua, turtles that mine/build/farm, wireless networking, peripheral integration with the entire tech stack.

### 5.4 Crafting Your First Computer

Basic Computer recipe (vanilla), Advanced Computer recipe (gated), placing it, right-click to open. Includes note about the recipe gates and why (Phase 2 progression).

### 5.5 The Shell (~0.5 pages)

Commands: `help`, `ls`, `cd`, `mkdir`, `rm`, `cp`, `mv`, `edit`, `pastebin`, `reboot`, `shutdown`. Tab-completion note.

### 5.6 The Editor (~0.3 pages)

`edit <filename>`, Ctrl to access menu, Save [Ctrl+S], Exit [Ctrl+E], Print [Ctrl+P]. Note that `Ctrl+T` terminates a running program.

### 5.7 Your First Program (~0.3 pages)

"Hello, world!" → `edit hello` → `print("Hello, world!")` → Ctrl+S, Ctrl+E → run with `hello`. Saving, running, stopping with Ctrl+T.

### 5.8 Lua Syntax Primer (~1 page)

- Variables (`local` vs global), types (nil, boolean, number, string, table, function)
- Conditionals: `if`/`elseif`/`else`/`end`
- Loops: `for i=1,10 do ... end`, `while condition do ... end`, `repeat ... until condition`
- Functions: `function name(args) ... end`
- String concatenation: `..`
- Tables: `t = {}`, `t["key"] = value`, `t.key` shorthand, array indexing from 1
- Math: `math.random()`, `math.floor()`, `math.max()`
- String: `string.sub()`, `string.len()`, `tonumber()`, `tostring()`

### 5.9 The Event Loop (~0.5 pages)

- Blocking: `os.pullEvent()` — wait for anything
- Filtered: `os.pullEvent("key")`, `os.pullEvent("timer")`, `os.pullEvent("redstone")`
- Parallel: `parallel.waitForAny(f1, f2)` — run two things, stop when either finishes
- `parallel.waitForAll(f1, f2)` — run two things concurrently
- Event types: `key`, `char`, `timer`, `redstone`, `peripheral`, `peripheral_detach`, `turtle_inventory`
- `os.startTimer(seconds)` → fires a `timer` event

### 5.10 Peripherals & Wrapping (~0.5 pages)

- `peripheral.find("modem")` — find wired modem
- `peripheral.getNames()` — list all attached peripherals
- `peripheral.wrap("left")` — short form for directional
- Working with inventories: `p.list()`, `p.pushItems()`, `p.pullItems()`
- Working with tanks: `p.tanks()`, `p.pushFluid()`

### 5.11 Turtles (~1 page)

- Crafting: steel-gated (see section 3)
- Fuel: `turtle.refuel()` with coal/charcoal/lava. Check level with `turtle.getFuelLevel()`
- Movement: `turtle.forward()`, `turtle.back()`, `turtle.up()`, `turtle.down()`, `turtle.turnLeft()`, `turtle.turnRight()`
- Inventory: `turtle.select(slot)`, `turtle.suck()`, `turtle.drop()`, `turtle.getItemCount()`
- Block interaction: `turtle.dig()`, `turtle.digUp()`, `turtle.digDown()`, `turtle.place()`, `turtle.placeUp()`, `turtle.placeDown()`
- Inspection: `turtle.inspect()` → block info, `turtle.detect()` → is there a block?
- Example: simple 3-wide strip miner (copy-paste ready, ~15 lines)

### 5.12 Redstone (~0.3 pages)

- `rs.setOutput("left", true)` — power on
- `rs.getInput("back")` — read signal strength
- `rs.setAnalogOutput("top", 7)` — set signal level 0–15
- Pattern: event loop that pulses redstone on a timer for a Create clutch

### 5.13 Wireless Networking (~0.5 pages)

- Modem crafting: brass-gated (see section 3)
- `rednet.open("left")` — open modem
- `rednet.send(computerID, message)` — send to specific computer
- `rednet.broadcast(message)` — send to all
- `rednet.receive()` — wait for message
- Finding IDs: `id` command in shell
- Multi-computer intercom pattern (sender/receiver pair, ~8 lines each)

### 5.14 Integration Recipes (~1 page) — copy-paste-ready scripts

Each includes: what it does, what you need (peripherals/modems), the script, how to run it.

1. **AE2 Level Monitor**: Reads ME drive item count via wired modem on an ME Interface. Displays counts on a monitor. Lights redstone lamp if >90% full.
2. **Mekanism Fission Watchdog**: Monitors reactor temperature (redstone comparator on reactor logic port). Triggers redstone to Scram button if >1200K.
3. **Turtle Strip-Miner**: 3-wide tunnel, 64 blocks deep, deposits into ender chest at entrance. Self-refuels. ~25 lines.
4. **Stellaris Launch Sequencer**: Countdown on monitor (10... 3... 2... 1... LIFTOFF), triggers redstone pulse to Rocket Station on launch. ~15 lines.
5. **Base Status Dashboard**: Cycles through multiple monitors showing power (Mekanism induction matrix level via comparator), storage (AE2 drive capacity), colony stats, and time of day. ~40 lines.

### 5.15 Interdependency Notes

- **CC:Tweaked × Create**: Redstone output → Create clutch/gearshift for sequenced automation. Wired modems on Create basins for recipe monitoring.
- **CC:Tweaked × Mekanism**: Reactor monitoring via redstone comparators. Tank monitoring via wired modems. Enriched Alloy gates Advanced Computer.
- **CC:Tweaked × AE2**: ME Bridge peripheral (if available) or redstone comparator on ME Drive for capacity monitoring. Turtle inventory automation for bulk crafting.
- **CC:Tweaked × Stellaris**: Launch sequencer — countdown + redstone trigger. Turtles can automate rocket component loading.
- **CC:Tweaked × FTB Quests**: Add quests: "Build a Computer" (Basic Computer detect), "Write Your First Program" (any program saved to disk), "Automate Ore Processing" (turtle mines 64+ type), "Networked Automation" (place 2 computers + wireless modems).
- **CC:Tweaked × MineColonies**: Turtles can auto-supply builder hut inventories. Monitors can display colony happiness/needs from API (if accessible via peripheral).

### 5.16 Progression Placement

- **Phase 2 (hours 40–200)**: After basic Mekanism processing (Enriched Alloy), Create brass, and TFMG steel.
- Basic Computer craftable in Phase 1 — shell tinkering is harmless.
- Turtles and wireless networking are Phase 2 proper.

### 5.17 Session Plan

| Session                      | Duration  | Activity                                                                                                       | Unlocks                                     |
|------------------------------|-----------|----------------------------------------------------------------------------------------------------------------|---------------------------------------------|
| 1 — Hello World              | 30 min    | Craft Basic Computer. Boot it. Explore shell. Write `hello` program. Use `pastebin`.                           | Shell basics, editor, running programs      |
| 2 — Lua Basics               | 1 hour    | Write small programs: number guessing game, timer display, Minecraft day counter. Test `os.pullEvent`.         | Lua syntax, event loop                      |
| 3 — Turtles                  | 1.5 hours | Craft Mining Turtle (needs steel). Write 3-wide strip miner. Fuel it. Watch it dig. Run return-to-home script. | Turtle API, autonomous mining               |
| 4 — Redstone Control         | 30 min    | Computer + redstone → Create clutch. Toggle factory on/off from terminal. Timer-based automation.              | Redstone API, Create integration            |
| 5 — Peripherals & Monitoring | 1 hour    | Wired modems on Mekanism tanks + AE2 ME Drive. Print fuel levels / item counts to monitor. Dashboard program.  | Peripheral API, mod integration             |
| 6 — Networking               | 1 hour    | Craft Wireless Modem (brass). Two computers chatting. Remote base monitor from mining outpost.                 | Wireless networking, multi-computer systems |
| 7 — Integration Deep Dive    | 2 hours   | Write Mekanism fission watchdog. Stellaris launch sequencer. AE2 capacity alarm. FTB Quests complete.          | Cross-mod automation scripts                |

## 6. FTB Quests Integration

New quests for the existing Wave 4.5 FTB Quests system:

| Quest                    | Task (detect)                                                          | Description                                                                                                    | Reward                        | Depends on               |
|--------------------------|------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|-------------------------------|--------------------------|
| Build a Computer         | `computercraft:computer_normal` in inventory                           | "Craft your first programmable computer. Right-click to open the shell."                                       | XP 16 bottles                 | (none — early Phase 1)   |
| Write Your First Program | Custom: any file saved in turtle/computer directory                    | "Use the `edit` command to create and save a Lua program. Try `print('Hello, Driftwood!')`."                   | XP 32 bottles                 | Build a Computer         |
| Automate Mining          | Custom: turtle mines 64+ of any ore                                    | "Craft a Mining Turtle and write a strip-mining program. Let it dig while you do something else."              | XP 64 bottles + 8 coal blocks | Write Your First Program |
| Wireless Network         | `computercraft:wireless_modem_normal` in inventory                     | "Craft a Wireless Modem using Create brass. Open it and send a message to another computer."                   | XP 48 bottles                 | Build a Computer         |
| Reactor Watchdog         | Custom: computer detects redstone signal from Mekanism fission reactor | "Write a watchdog program that monitors your fission reactor and triggers SCRAM if temperature exceeds 1200K." | XP 128 bottles                | Wireless Network         |
| Launch Sequencer         | Custom: computer sends redstone signal to Stellaris Rocket Station     | "Write a countdown sequencer for your Stellaris rocket launches. 10... 9... 8..."                              | XP 128 bottles                | Wireless Network         |

**Custom task types**: The custom detection tasks (file saved, ore count, redstone signal) require KubeJS event hooks. Implementation detail: use KubeJS `PlayerEvents.loggedIn` / block interaction events to track progress. Document exact KubeJS script during implementation.

## 7. Status Changes

### STATUS.md additions

- Wave 8 added to Completed section
- KubeJS recipe script: `kubejs/server_scripts/wave8_cc_tweaked.js`
- Config override: `config/computercraft-server.toml`
- GUIDE.md Wave 8 section written (mod table, Lua tutorial, integration recipes, session plan)
- FTB Quests: 6 CC:Tweaked quests added

### Mod count update

- Before: 202 mods (161 core + 41 deps)
- After: **203 mods** (162 core + 41 deps) — +1 core (CC:Tweaked), no new deps

## 8. Risks & Mitigations

| Risk                                                     | Mitigation                                                                                                                                                             |
|----------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Item IDs for gated recipes differ from expected          | Verify all IDs at test launch (F3+H). KubeJS `ServerEvents.recipes` logs missing items as warnings, not crashes                                                        |
| CC:Tweaked version on CurseForge may lag behind Modrinth | Source from Modrinth; note this in GUIDE.md. If user prefers CurseForge-only, verify equivalent version exists                                                         |
| KubeJS recipe script conflicts with existing scripts     | No existing `kubejs/server_scripts/` directory — no conflict risk                                                                                                      |
| Peripheral API for modded blocks may not exist natively  | Many mods expose comparators natively (Mekanism, Create). AE2 peripheral bridges exist in Applied Mekanistics. Document fallback: redstone comparators work everywhere |
| FTB Quests custom detection needs KubeJS hooks           | Use existing KubeJS setup. Custom detection is "nice to have" — quests with item detect tasks still work without hooks                                                 |

## 9. Self-Review Notes

- [x] No TBD/TODO placeholders — item IDs marked "verify" are spec notes, not implementation gaps
- [x] Internal consistency: KubeJS script matches recipe table. Config values match design decisions. Session plan uses gated recipes correctly.
- [x] Scope check: single wave (1 mod, 1 KubeJS script, 1 config file, GUIDE.md section, FTB quests). Not decomposed — self-contained unit.
- [x] Ambiguity: "verify exact ID at test launch" is explicit — implementation step, not ambiguity
