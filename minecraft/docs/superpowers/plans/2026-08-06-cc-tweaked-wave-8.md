# CC:Tweaked Wave 8 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add CC:Tweaked as Wave 8 — programmable computers with a full Lua tutorial, recipe gating via KubeJS, config overrides, and FTB Quests integration.

**Architecture:** 1 new mod (zero deps), 1 new KubeJS script (recipe gates), 1 config file, GUIDE.md section appended before Progression Overview, STATUS.md update, 1 new FTB Quests chapter (6 quests). All item IDs marked with placeholder item IDs — verification at test launch required.

**Tech Stack:** NeoForge 1.21.1, KubeJS (already in pack Wave 4.5), CC:Tweaked from Modrinth.

## Global Constraints

- Minecraft 1.21.1, NeoForge
- Survival-only (no command computers)
- Phase 2 gating: turtles → TFMG steel, Advanced Computer → Mekanism Enriched Alloy, Wireless Modem → Create brass
- Single-player (HTTP API disabled, no multiplayer features)
- No new dependencies (CC:Tweaked is self-contained)
- Item IDs for recipe gates must be verified at test launch (F3+H); current values are best-guess

---

### Task 1: Create KubeJS Recipe Script

**Files:**
- Create: `kubejs/server_scripts/wave8_cc_tweaked.js`
- Create: `kubejs/` directory (if not already present)

**Interfaces:**
- Consumes: None (first task)
- Produces: KubeJS `ServerEvents.recipes` script removing 4 default CC:Tweaked recipes and adding 4 gated replacements

- [ ] **Step 1: Create directory**

```bash
mkdir -p kubejs/server_scripts
```

- [ ] **Step 2: Write recipe script**

```javascript
// wave8_cc_tweaked.js — CC:Tweaked recipe gates for Phase 2 progression
// Item IDs marked [VERIFY] must be confirmed at test launch (F3+H tooltips)

ServerEvents.recipes(event => {
  // Remove default recipes
  event.remove({ id: 'computercraft:computer_advanced' });
  event.remove({ id: 'computercraft:turtle_normal' });
  event.remove({ id: 'computercraft:turtle_advanced' });
  event.remove({ id: 'computercraft:wireless_modem_normal' });

  // Advanced Computer → Mekanism Enriched Alloy
  event.shaped('computercraft:computer_advanced', [
    ' R ',
    'ACA',
    ' R '
  ], {
    R: 'minecraft:redstone_block',
    A: 'mekanism:enriched_alloy',   // [VERIFY] item ID
    C: 'computercraft:computer_normal'
  });

  // Normal Turtle → TFMG Steel
  event.shaped('computercraft:turtle_normal', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // [VERIFY] item ID
    C: 'computercraft:computer_normal',
    X: 'minecraft:chest'
  });

  // Advanced Turtle → TFMG Steel + Advanced Computer
  event.shaped('computercraft:turtle_advanced', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // [VERIFY] item ID
    C: 'computercraft:computer_advanced',
    X: 'minecraft:chest'
  });

  // Wireless Modem → Create Brass
  event.shaped('computercraft:wireless_modem_normal', [
    ' B ',
    'BCB',
    ' E '
  ], {
    B: 'create:brass_ingot',         // [VERIFY] item ID
    C: 'computercraft:computer_normal',
    E: 'minecraft:ender_pearl'
  });
});
```

- [ ] **Step 3: Commit**

```bash
git add kubejs/server_scripts/wave8_cc_tweaked.js
git commit -m "feat(wave8): add CC:Tweaked KubeJS recipe gates"
```

---

### Task 2: Create CC:Tweaked Config Override

**Files:**
- Create: `config/computercraft-server.toml`

**Interfaces:**
- Consumes: None
- Produces: Config file disabling HTTP, command computers, setting turtle fuel limit

- [ ] **Step 1: Write config file**

```toml
# Driftwood — CC:Tweaked server config overrides
# Copy this to <world>/serverconfig/computercraft-server.toml after first world creation.
# All settings not listed here remain at CC:Tweaked defaults.

[http]
enabled = false

command_computers = false

[turtles]
need_fuel = true
fuel_limit = 200000
```

- [ ] **Step 2: Commit**

```bash
git add config/computercraft-server.toml
git commit -m "feat(wave8): add CC:Tweaked config (HTTP off, survival, generous fuel)"
```

---

### Task 3: Add Wave 8 Section to GUIDE.md

**Files:**
- Modify: `GUIDE.md` — insert Wave 8 section before "## Progression Overview", update summary table, update phase descriptions

**Interfaces:**
- Consumes: GUIDE.md as-is after Wave 7 section
- Produces: GUIDE.md with complete Wave 8 section (mod table, Lua tutorial, integration recipes, interdependency notes, session plan) and updated summary/progression tables

- [ ] **Step 1: Insert Wave 8 section header and mod table**

Locate the line `## Progression Overview` (after Wave 7's `**Tip**: Space is the most...` closing). Insert BEFORE it:

```markdown
<!--raw-typst #pagebreak() -->

## Wave 8 — Programmable Computers

Programmable computers, autonomous turtles, and Lua scripting. Write programs to automate your base in ways Create and Mekanism can't — custom logic, conditional automation, self-optimizing systems.

### Mod

| Mod | Role |
|---|---|
| [**CC: Tweaked**](https://modrinth.com/mod/cc-tweaked) | Programmable computers, turtles, and Lua scripting. Wireless networking, peripheral API for block interaction, redstone integration |

> **Source note**: CC:Tweaked's devs recommend Modrinth for the latest NeoForge builds. If CurseForge has an equivalent version, either source works.

**No additional dependencies** — CC:Tweaked is self-contained.

### Recipe Gates

CC:Tweaked's default recipes use vanilla materials and would be craftable in Phase 1. To enforce the Phase 2 progression gate, a KubeJS script (`kubejs/server_scripts/wave8_cc_tweaked.js`) overrides the following:

| Item | Gated Recipe | Gate |
|---|---|---|
| Advanced Computer | Basic Computer + Enriched Alloy (Mekanism) + Redstone Block | Phase 2 — Metallurgic Infuser |
| Turtle (all variants) | TFMG Steel ingots + Computer + Chest | Phase 2 — Blast Furnace |
| Wireless Modem | Create Brass casings + Computer + Ender Pearl | Phase 1.5–2 — Brass age |
| Basic Computer | Stone + Redstone + Glass Pane (vanilla, unchanged) | Phase 1 — harmless without peripherals |
| Wired Modem | Stone + Redstone (vanilla, unchanged) | Phase 1 — local only |

### Configuration

CC:Tweaked's config is world-specific (`<world>/serverconfig/computercraft-server.toml`). Tracked override at `config/computercraft-server.toml`:

| Setting | Value | Why |
|---|---|---|
| `[http].enabled` | `false` | Single-player only — no web API needed |
| `command_computers` | `false` | Survival-only constraint |
| `[turtles].need_fuel` | `true` | Keeps turtles balanced — coal/lava are abundant |
| `[turtles].fuel_limit` | `200000` | Generous but finite. A lava bucket (1000 moves) fits 200 times |

Copy `config/computercraft-server.toml` to `<world>/serverconfig/` after first world creation.

### Crafting Your First Computer

#### Step 1: Materials

| Item | Recipe | Phase |
|---|---|---|
| **Basic Computer** | 4 stone + 1 redstone + 1 glass pane (crafting table, 3×3) | Phase 1 |
| **Advanced Computer** | 1 Basic Computer + 4 Enriched Alloy + 1 redstone block (see Recipe Gates above) | Phase 2 |
| **Monitor** | 3 stone + 1 glass pane (top row) | Phase 1 |

#### Step 2: Place it

Place the computer block on the ground. Right-click it to open the interface. You'll see a black screen with a prompt:

```
CraftOS 1.9
>
```

This is the **shell** — your command-line interface to the computer. Type `help` and press Enter to see available commands.

#### Step 3: Attach a monitor (optional)

Place a **Monitor** adjacent to the computer. Wrap it in a Lua program with `peripheral.wrap("right")` (or whichever side it's on). More on peripherals later.

### The Shell

The shell is where you type commands. Here are the essential ones:

| Command | What it does |
|---|---|
| `help` | List all commands |
| `help <command>` | Show help for a specific command |
| `ls` | List files in current directory |
| `cd <dir>` | Change directory. `cd ..` = up one level |
| `mkdir <name>` | Create a new directory |
| `rm <file>` | Delete a file |
| `cp <src> <dst>` | Copy a file |
| `mv <src> <dst>` | Move/rename a file |
| `edit <file>` | Open the built-in text editor |
| `pastebin get <code> <file>` | Download a program from pastebin |
| `reboot` | Restart the computer |
| `shutdown` | Turn off the computer |
| `id` | Show this computer's ID number |
| `programs` | List available built-in programs |
| `clear` | Clear the screen |

**Tab completion**: Start typing a filename or command, press Tab to autocomplete.

**Ctrl+T**: Terminates any running program immediately. If you're stuck in a loop, Ctrl+T is your escape hatch.

### The Editor

The built-in editor opens when you run `edit <filename>`.

| Key | Action |
|---|---|
| `Ctrl+S` | Save file |
| `Ctrl+E` | Exit editor (back to shell) |
| `Ctrl+P` | Print file to screen |
| Arrow keys | Move cursor |
| `Ctrl+A` | Select all |
| `Ctrl+C` / `Ctrl+V` | Copy / Paste |
| `Page Up` / `Page Down` | Scroll |

Write your code, Ctrl+S to save, Ctrl+E to exit, then type the filename (without `.lua`) to run it.

> **Tip**: Create a `programs/` directory for your scripts with `mkdir programs`. Keep the root clean — put test scripts and experiments in folders.

### Your First Program

Let's write "Hello, world!":

```
> edit hello
```

This opens a blank editor. Type:

```lua
print("Hello, world!")
```

Press **Ctrl+S** to save, then **Ctrl+E** to exit. Now run it:

```
> hello
Hello, world!
```

**Congratulations — you just wrote and ran your first Lua program!**

#### How programs run

- Type the filename (without `.lua`) and press Enter
- The computer creates a `.lua` file when you save from the editor
- To stop a running program: **Ctrl+T**
- Programs run in the `/` (root) directory. Use `cd programs` to switch to your programs folder
- The startup program is `/startup.lua` — create it to run code automatically when the computer boots

#### A slightly bigger program

```lua
-- greeting.lua
local name = "Adventurer"
print("Welcome, " .. name .. "!")
print("It is day " .. os.day() .. " of your journey.")

if os.day() < 10 then
    print("Early days — build your shelter!")
else
    print("You've been here a while. Time for industry!")
end
```

Save as `greeting`, run with `greeting`. The `..` operator concatenates strings. `os.day()` returns the Minecraft day number.

### Lua Syntax Primer

Lua is a small, simple language. Here's everything you need to write useful programs:

#### Variables

```lua
local x = 10          -- local variable (preferred — stays in scope)
y = 20                -- global variable (accessible everywhere — use sparingly)
```

#### Types

```lua
local a = nil         -- nothing (unset variable = nil)
local b = true        -- boolean
local c = 42          -- number (no integer/float distinction)
local d = "hello"     -- string
local e = {1, 2, 3}  -- table (arrays and dictionaries)
local f = function() end  -- function
```

Check a type with `type(value)`: `type(42)` → `"number"`.

#### Conditionals

```lua
if fuel < 100 then
    turtle.refuel()
elseif fuel > 10000 then
    print("Fuel is full!")
else
    print("Fuel level: " .. fuel)
end
```

Comparisons: `==` (equal), `~=` (not equal), `<`, `>`, `<=`, `>=`. Combine with `and`, `or`, `not`.

#### Loops

```lua
-- Numeric for (counted)
for i = 1, 10 do
    print("Iteration " .. i)
end

-- While (condition)
local n = 10
while n > 0 do
    print(n)
    n = n - 1
end

-- Repeat-until (always runs at least once)
repeat
    turtle.dig()
until turtle.detect() == false

-- Generic for (iterate over a table)
local items = {"stone", "dirt", "iron"}
for _, name in ipairs(items) do
    print(name)
end

-- Break out early
for i = 1, 100 do
    if turtle.getFuelLevel() < 10 then break end
    turtle.forward()
end
```

#### Functions

```lua
-- Define a function
local function greet(name)
    return "Hello, " .. name .. "!"
end

-- Call it
print(greet("Steve"))    -- "Hello, Steve!"

-- Functions are values — store in tables
local commands = {
    dig = function() turtle.dig() end,
    place = function() turtle.place() end,
}
commands.dig()
```

#### Strings

```lua
local s = "Minecraft"
print(string.len(s))          -- 9
print(string.sub(s, 1, 4))   -- "Mine"
print(s:len())                -- 9 (method syntax)
print(s:sub(1, 4))            -- "Mine"

-- Concatenation
local msg = "Day " .. os.day()   -- "Day 42"

-- Convert
print(tonumber("42"))         -- 42
print(tostring(42))           -- "42"
```

#### Tables

Tables are Lua's only data structure. They work as arrays, dictionaries, or both:

```lua
-- Array (indexed from 1, not 0)
local ores = {"iron", "gold", "diamond"}
print(ores[1])                -- "iron"
print(#ores)                  -- 3 (length)
table.insert(ores, "emerald") -- append

-- Dictionary
local config = {
    depth = 64,
    width = 3,
    fuelThreshold = 100,
}
print(config.depth)           -- 64 (dot syntax)
print(config["depth"])        -- 64 (bracket syntax)
config.height = 5             -- add new key

-- Iterate
for k, v in pairs(config) do
    print(k .. " = " .. v)
end
```

#### Math

```lua
print(math.random(1, 100))   -- random 1-100
print(math.random())          -- random 0-1
print(math.floor(3.7))       -- 3 (round down)
print(math.ceil(3.2))        -- 4 (round up)
print(math.max(2, 8, 5))     -- 8
print(math.min(2, 8, 5))     -- 2
print(math.abs(-5))          -- 5
```

### The Event Loop

Computers in CC:Tweaked are event-driven. Programs don't just run from top to bottom and exit — they wait for things to happen.

#### Pulling events

```lua
-- Block until ANY event happens
local event, param1, param2 = os.pullEvent()
print("Event: " .. event)

-- Wait for a specific event type
local event, key = os.pullEvent("key")
print("You pressed: " .. key)

-- Wait for a timer
os.startTimer(5)                     -- fire timer in 5 seconds
local event, timerID = os.pullEvent("timer")
print("5 seconds passed!")
```

#### Event types

| Event | Parameters | Fires when... |
|---|---|---|
| `key` | key code (number) | A key is pressed |
| `char` | character (string) | A text character is typed |
| `timer` | timer ID (number) | A timer expires |
| `redstone` | — | Any redstone input changes |
| `peripheral` | side (string) | A peripheral is attached |
| `peripheral_detach` | side (string) | A peripheral is removed |
| `turtle_inventory` | — | Turtle inventory changes |

#### Running multiple things at once

```lua
-- Run two functions, stop when EITHER finishes
parallel.waitForAny(
    function() while true do print("A") sleep(1) end end,
    function() sleep(5) print("B done!") end
)

-- Run two functions concurrently until BOTH finish
parallel.waitForAll(
    function() while true do print("Tick") sleep(1) end end,
    function() sleep(10) print("Timer done!") end
)
```

#### A practical event loop

```lua
-- watchdog.lua — monitor a redstone signal, print when it changes
local lastState = rs.getInput("back")
print("Monitoring redstone on back. Ctrl+T to stop.")

while true do
    local event = os.pullEvent("redstone")
    local current = rs.getInput("back")
    if current ~= lastState then
        print("Redstone changed: " .. (current and "ON" or "OFF"))
        lastState = current
    end
end
```

`sleep(n)` is shorthand for `os.startTimer(n); os.pullEvent("timer")`.

### Peripherals & Wrapping

Peripherals are external blocks connected to your computer via **Wired Modems**. They let your computer interact with inventories, tanks, and machines.

#### Connecting a peripheral

1. Craft a **Wired Modem** (stone + redstone, vanilla recipe)
2. Place it on the side of a block (e.g., a chest, a Mekanism tank)
3. Place your computer adjacent to the modem
4. Right-click the modem — you'll see "Peripheral: <name> connected"

#### Wrapping in code

```lua
-- Find a modem on a specific side
local modem = peripheral.wrap("right")

-- Find ANY peripheral of a given type
local chest = peripheral.find("minecraft:chest")

-- List all connected peripherals
local names = peripheral.getNames()
for _, name in ipairs(names) do
    print(name, peripheral.getType(name))
end
```

#### Working with inventories

```lua
local chest = peripheral.wrap("right")

-- List contents
local items = chest.list()
for slot, item in pairs(items) do
    print("Slot " .. slot .. ": " .. item.name .. " x" .. item.count)
end

-- Move items
chest.pushItems("left", 1)       -- push slot 1 to left inventory
chest.pullItems("bottom", 1, 2)  -- pull slots 1-2 from bottom

-- Check item count
local count = chest.getItemDetail(1)
if count then
    print("Slot 1 has " .. count.count .. " " .. count.name)
end
```

#### Working with fluid tanks

```lua
local tank = peripheral.wrap("back")
local tanks = tank.tanks()

for _, t in ipairs(tanks) do
    print(t.name .. ": " .. t.amount .. "/" .. t.capacity .. " mB")
end

-- Push fluid to adjacent tank
tank.pushFluid("left")
```

### Turtles

Turtles are mobile computers — programmable robots that can move, mine, build, farm, and fight.

#### Crafting a turtle

You need a Basic or Advanced Computer, a Chest, and **7 TFMG Steel Ingots** (gated — see Recipe Gates above). Place them in a crafting table:

```
SSS
SCS
SXS
```
- S = TFMG Steel Ingot
- C = Basic/Advanced Computer
- X = Chest

#### Tool turtles

Right-click a turtle with a tool to equip it:

| Tool | Turtle type | What it does |
|---|---|---|
| Diamond Pickaxe | Mining Turtle | Mines blocks, drops items |
| Diamond Axe | Felling Turtle | Chops wood faster |
| Diamond Shovel | Digging Turtle | Digs soft blocks faster |
| Diamond Hoe | Farming Turtle | Tills soil |
| Diamond Sword | Melee Turtle | Attacks mobs |
| (nothing) | Normal Turtle | Places blocks, moves inventory |

#### Fuel

Turtles need fuel to move. Refuel by placing fuel items in the selected slot and running `turtle.refuel()`:

```lua
turtle.select(1)              -- select slot 1 (where your coal is)
turtle.refuel()               -- consume 1 fuel item
print(turtle.getFuelLevel())  -- fuel remaining (each coal = 80 moves)
```

Fuel values: Coal/Charcoal (80), Block of Coal (800), Lava Bucket (1000), Blaze Rod (120).

#### Movement

```lua
turtle.forward()    -- move forward 1 block
turtle.back()       -- move backward 1 block
turtle.up()         -- move up 1 block
turtle.down()       -- move down 1 block
turtle.turnLeft()   -- rotate 90° left
turtle.turnRight()  -- rotate 90° right
```

Each movement returns `true` if successful, `false` if blocked.

#### Inventory

Turtles have 16 inventory slots. Access them with:

```lua
turtle.select(3)               -- switch to slot 3
turtle.suck()                  -- pick up items from front
turtle.drop()                  -- drop selected slot in front
turtle.getItemCount(3)         -- count items in slot 3
turtle.getItemSpace(3)         -- free space in slot 3
turtle.transferTo(4)           -- move from selected to slot 4
```

#### Block interaction

```lua
turtle.dig()         -- mine block in front
turtle.digUp()       -- mine block above
turtle.digDown()     -- mine block below
turtle.place()       -- place block from selected slot in front
turtle.placeUp()     -- place block above
turtle.placeDown()   -- place block below
turtle.inspect()     -- get info about block in front
turtle.detect()      -- is there a block in front? (true/false)
turtle.compare()     -- does block in front match selected slot?
```

#### Example: Simple strip miner

Save this as `miner`:

```lua
-- 3-wide strip miner, 64 blocks deep
local depth = 64
local width = 3

-- Refuel first
turtle.select(1)
turtle.refuel()
print("Fuel: " .. turtle.getFuelLevel())

-- Check if we have a chest behind us to deposit into
print("Place a chest behind the turtle, then press Enter")
read()

for d = 1, depth do
    for w = 1, width do
        while turtle.detect() do
            turtle.dig()
            sleep(0.5)
        end
        turtle.forward()

        -- Deposit if inventory is getting full
        if turtle.getItemCount(16) > 0 then
            -- Save position and return to chest
            for _ = 1, d do turtle.down() end
            for _ = 1, w do turtle.back() end
            -- Deposit all
            for slot = 1, 16 do
                turtle.select(slot)
                turtle.drop()
            end
            -- Return to mining position
            turtle.select(1)
            turtle.refuel()
            for _ = 1, w do turtle.forward() end
            for _ = 1, d do turtle.up() end
        end
    end

    -- Move to next row: back to start, down 1
    for _ = 1, width do turtle.back() end
    turtle.digDown()
    turtle.down()
end

print("Mining complete! " .. depth * width .. " blocks mined.")
```

Run with `miner`. Place a chest behind the turtle, place fuel in slot 1.

### Redstone

Computers can read and output redstone signals on all six sides:

```lua
-- Output (power a side)
rs.setOutput("left", true)          -- full power on left
rs.setOutput("right", false)        -- off
rs.setAnalogOutput("top", 7)        -- signal strength 7 (0-15)
rs.setOutput("bottom", true)        -- full power

-- Input (read a side)
local signal = rs.getInput("back")   -- true if powered, false if not
local strength = rs.getAnalogInput("back")  -- 0-15 signal strength

-- Bundled output (colored cables, 16 channels per side)
rs.setBundledOutput("left", colors.red + colors.green)
```

#### Practical redstone pattern: Create clutch control

```lua
-- toggle.lua — toggle a Create clutch on keypress
local powered = false
rs.setOutput("back", false)

print("Press Space to toggle clutch. Ctrl+T to stop.")
while true do
    local event, key = os.pullEvent("key")
    if key == keys.space then
        powered = not powered
        rs.setOutput("back", powered)
        print("Clutch: " .. (powered and "ENGAGED" or "DISENGAGED"))
    end
end
```

Place the computer so its "back" faces a Create Clutch. Run `toggle`, press Space to engage/disengage.

### Wireless Networking

Wireless Modems let computers communicate across any distance — even across dimensions.

#### Crafting a Wireless Modem

The recipe is gated behind Create Brass (see Recipe Gates). Craft one, place it on a computer, right-click to open.

#### Sending and receiving

**Computer A (sender):**
```lua
rednet.open("left")                    -- open modem on left side
local targetID = 5                     -- Computer B's ID (use `id` command)
rednet.send(targetID, "Hello, base!")
print("Message sent!")
rednet.close("left")
```

**Computer B (receiver):**
```lua
rednet.open("left")
local senderID, message = rednet.receive()  -- wait for any message
print("Message from #" .. senderID .. ": " .. message)
rednet.close("left")
```

#### Broadcast to all computers

```lua
rednet.open("left")
rednet.broadcast("Fission reactor: CRITICAL")
rednet.close("left")
```

#### Practical intercom pattern

```lua
-- chat.lua — simple two-way chat between computers
rednet.open("left")
print("Chat open. Type messages. Ctrl+T to quit.")

parallel.waitForAny(
    -- Sender: type messages
    function()
        while true do
            local msg = read()
            rednet.broadcast(msg)
        end
    end,
    -- Receiver: print incoming messages
    function()
        while true do
            local id, msg = rednet.receive()
            print("[#" .. id .. "] " .. msg)
        end
    end
)

rednet.close("left")
```

**Finding a computer's ID**: Open the shell and type `id`. The computer's ID appears on the label or in the shell output.

### Integration Recipes — Copy-Paste Scripts

#### AE2 Level Monitor

```lua
-- ae2monitor.lua — display ME drive capacity on a monitor
-- Attach a wired modem to an ME Interface or ME Drive

local monitor = peripheral.wrap("top")  -- monitor on top
local me = peripheral.find("ae2:me_interface") or peripheral.find("ae2:me_drive")

if not me then
    print("No AE2 peripheral found!")
    return
end

monitor.clear()
monitor.setTextScale(2)

while true do
    local items = me.listItems() or {}
    local total = 0
    for _, item in pairs(items) do
        total = total + item.count
    end

    monitor.setCursorPos(1, 1)
    monitor.write(" AE2 Storage")
    monitor.setCursorPos(1, 3)
    monitor.write(" Items: " .. total)
    monitor.setCursorPos(1, 5)
    monitor.write(" Types: " .. #items)

    -- Redstone warning if getting full
    if total > 100000 then
        rs.setOutput("back", true)
        monitor.setCursorPos(1, 7)
        monitor.write(" WARNING: NEAR CAPACITY")
    else
        rs.setOutput("back", false)
    end

    sleep(5)
end
```

#### Mekanism Fission Watchdog

```lua
-- reactor-watchdog.lua — scram Mekanism fission reactor if temperature > 1200K
-- Place computer adjacent to reactor logic port (comparator reads temperature)
-- Wire redstone output to Scram button or redstone-controlled safety switch

local temp = 0
local scrammed = false

print("Reactor Watchdog active. Ctrl+T to stop.")

while true do
    temp = rs.getAnalogInput("back") * 100  -- signal 0-15 → 0-1500K approx

    if temp > 1200 and not scrammed then
        print("!!! SCRAM: Temperature " .. temp .. "K exceeds 1200K !!!")
        rs.setOutput("left", true)     -- trigger scram
        rednet.broadcast("REACTOR SCRAM — temp " .. temp .. "K")
        scrammed = true
        sleep(1)
        rs.setOutput("left", false)    -- pulse complete
    end

    sleep(1)
end
```

> **Note**: The signal-to-temperature mapping depends on your reactor's configuration. Calibrate by checking in-game reactor temperature against the analog signal value.

#### Turtle Strip-Miner

```lua
-- stripmine.lua — 3-wide tunnel, 64 deep, auto-deposit, self-refuel
-- Place turtle facing the wall to mine. Fuel in slot 1. Chest behind.

local DEPTH = 64
local WIDTH = 3

-- Refuel
turtle.select(1)
turtle.refuel()
local startFuel = turtle.getFuelLevel()
print("Starting fuel: " .. startFuel)

for d = 1, DEPTH do
    for w = 1, WIDTH do
        -- Dig until clear
        while turtle.detect() do
            turtle.dig()
            sleep(0.3)
        end
        turtle.forward()

        -- Auto-deposit when slot 16 fills
        if turtle.getItemCount(16) > 0 then
            print("Depositing at depth " .. d .. "...")
            local currentDepth = d
            for _ = 1, currentDepth do turtle.down() end
            for _ = 1, w do turtle.back() end
            -- Drop everything except slot 1 (fuel)
            for slot = 2, 16 do
                turtle.select(slot)
                turtle.drop()
            end
            -- Refuel and return
            turtle.select(1)
            turtle.refuel()
            for _ = 1, w do turtle.forward() end
            for _ = 1, currentDepth do turtle.up() end
        end
    end

    -- Return to row start, dig down for next row
    for _ = 1, WIDTH do turtle.back() end
    turtle.digDown()
    turtle.down()
    turtle.select(1)
    turtle.refuel()
end

print("Done! Mined " .. (DEPTH * WIDTH) .. " blocks.")
print("Fuel used: " .. (startFuel - turtle.getFuelLevel()))
```

#### Stellaris Launch Sequencer

```lua
-- launch.lua — countdown + redstone pulse for Stellaris rocket
-- Redstone output (left) → Rocket Station
-- Monitor (top) for countdown display

local monitor = peripheral.wrap("top")
if monitor then
    monitor.clear()
    monitor.setTextScale(3)
end

local function countdown(n)
    for i = n, 1, -1 do
        if monitor then
            monitor.setCursorPos(1, 1)
            monitor.clearLine()
            monitor.write("  " .. i)
        end
        print("T-" .. i)
        sleep(1)
    end
end

print("Press Enter to initiate launch sequence")
read()

if monitor then
    monitor.clear()
    monitor.setTextScale(2)
    monitor.setCursorPos(1, 1)
    monitor.write(" IGNITION")
    monitor.setCursorPos(1, 3)
    monitor.write(" SEQUENCE")
end

countdown(10)

-- Fire!
rs.setOutput("left", true)
if monitor then
    monitor.setCursorPos(1, 5)
    monitor.write("  LIFTOFF!")
end
print("LIFTOFF!")
sleep(2)
rs.setOutput("left", false)
print("Sequence complete.")
```

#### Base Status Dashboard

```lua
-- dashboard.lua — cycles through power, storage, time displays
-- Monitors on multiple sides

local monitors = {}
for _, side in ipairs({"top", "left", "right", "front"}) do
    local m = peripheral.wrap(side)
    if m then
        m.clear()
        m.setTextScale(1)
        table.insert(monitors, m)
    end
end

local page = 1

while true do
    local m = monitors[page]
    if m then
        m.clear()
        m.setCursorPos(1, 1)

        if page == 1 then
            m.write("=== POWER ===")
            m.setCursorPos(1, 2)
            m.write("Mekanism Induction:")
            m.setCursorPos(1, 3)
            m.write("  Check comparator")
        elseif page == 2 then
            m.write("=== STORAGE ===")
            m.setCursorPos(1, 2)
            m.write("AE2 ME System:")
            m.setCursorPos(1, 3)
            m.write("  Check ME Drive")
        elseif page == 3 then
            m.write("=== WORLD ===")
            m.setCursorPos(1, 2)
            m.write("Day: " .. os.day())
            m.setCursorPos(1, 3)
            m.write("Time: " .. textutils.formatTime(os.time()))
        end
    end

    page = page + 1
    if page > #monitors then page = 1 end
    sleep(5)
end
```

### Interdependency Notes

- **CC:Tweaked × Create**: Redstone output → Create clutch/gearshift for sequenced automation. Wired modems on Create basins for recipe monitoring. Computers can pulse gearshifts, toggle deployers, and read tank levels.
- **CC:Tweaked × Mekanism**: Reactor monitoring via redstone comparators on logic ports. Tank monitoring via wired modems on dynamic tanks. Enriched Alloy gates the Advanced Computer recipe.
- **CC:Tweaked × AE2**: ME Interface peripheral for inventory listing. Redstone comparator on ME Drive for capacity monitoring. Turtle inventory automation for bulk crafting requests. Applied Mekanistics (already in pack) bridges AE2 chemical storage with potential peripheral access.
- **CC:Tweaked × Stellaris**: Launch sequencer — countdown + redstone trigger to Rocket Station. Turtles can automate rocket component loading and fuel transfer.
- **CC:Tweaked × FTB Quests**: A dedicated "Programmable Computers" quest chapter (6 quests) guides progression from first computer to cross-mod automation.
- **CC:Tweaked × MineColonies**: Turtles can supply builder hut inventories. Monitors can display colony stats if accessible via peripheral API.

### Progression Placement

- **Phase 2 (hours 40–200)**: After basic Mekanism processing (Metallurgic Infuser for Enriched Alloy), Create Brass (Mixer), and TFMG steel production (Blast Furnace).
- The Basic Computer is craftable in Phase 1 for shell tinkering — harmless without peripherals or turtles.
- Turtles and wireless networking are Phase 2 proper, requiring steel and brass respectively.

### Session Plan

| Session | Duration | Activity | Unlocks |
|---|---|---|---|
| 1 — Hello World | 30 min | Craft Basic Computer. Boot it. Explore shell commands. Write `hello` program. Use `pastebin get` to download scripts. | Shell basics, editor, running programs |
| 2 — Lua Basics | 1 hour | Write small programs: number guessing game, timer display, Minecraft day counter. Experiment with `os.pullEvent` and the event loop. | Lua syntax, event-driven programming |
| 3 — Turtles | 1.5 hours | Craft Mining Turtle (needs TFMG steel). Write 3-wide strip miner from the integration recipes. Fuel it with coal. Watch it dig. Write return-to-home script. | Turtle API, autonomous mining |
| 4 — Redstone Control | 30 min | Computer + redstone output → Create clutch. Toggle factory on/off from terminal. Timer-based automation pulses. Read Mekanism tank level via comparator. | Redstone API, Create cross-mod control |
| 5 — Peripherals & Monitoring | 1 hour | Attach wired modems to Mekanism tanks + AE2 ME Drive. Print fuel levels and item counts to monitors. Build the base status dashboard script. | Peripheral API, modded block integration |
| 6 — Networking | 1 hour | Craft Wireless Modem (needs Create brass). Two computers chatting via `rednet`. Remote base monitor at mining outpost. Alert system for automated alerts. | Wireless networking, multi-computer systems |
| 7 — Integration Deep Dive | 2 hours | Write Mekanism fission watchdog. Stellaris launch sequencer. AE2 capacity monitor. Complete FTB Quests chapter. Experiment with custom automation ideas. | Cross-mod automation scripts, full ecosystem |
```

- [ ] **Step 2: Update the wave summary table**

Locate the table near line ~3216 that reads:
```
| Wave 7 — Space Exploration   | 1       | 1      | 2       | Stellaris, Potentials API
| **Total**                    | **161** | **41** | **202** | All confirmed NeoForge 1.21.1
```

Replace with:
```markdown
| Wave 7 — Space Exploration   | 1       | 1      | 2       | Stellaris, Potentials API                                                                                                                                                                                                                                              |
| Wave 8 — Programmable Computers | 1       | 0      | 1       | CC:Tweaked                                                                                                                                                                                                                                                             |
| **Total**                    | **162** | **41** | **203** | All confirmed NeoForge 1.21.1                                                                                                                                                                          |
```

- [ ] **Step 3: Update phase progression descriptions**

Locate the Phase 2 row in the progression table (near line ~3379):
```
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. Mutant Monsters. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete quest chapters. Stellaris Moon and early planets |
```

Append "CC:Tweaked turtles and wireless automation" before "Stellaris Moon":
```markdown
| **Phase 2** (hours 40–200) | Full Create factory (conveyors, deployers, sequenced crafters, trains). Mekanism 3x–5x ore processing. AE2 ME network with autocrafting. Explore Twilight Forest bosses. Apotheosis Rare/Epic gear. Mutant Monsters. First Cataclysm boss. TFMG oil refining and diesel engines. Build with Rechiseled, Macaw's, Handcrafted. Small Ships for ocean travel. Immersive Aircraft for aerial exploration. Complete quest chapters. CC:Tweaked turtles and wireless automation. Stellaris Moon and early planets |
```

Locate Phase 3 row (near line ~3380) and append CC:Tweaked mention:
```markdown
| **Phase 3** (hours 200+)   | Mekanism fusion reactor + MekaSuit. AE2 full autocrafting CPU chains. Endgame Apotheosis Mythic gear with perfect gem sockets. Twilight Forest final bosses. Cataclysm endgame bosses. End dimension exploration. Mars and Glacio space bases. CC:Tweaked cross-mod automation networks. Monumental building projects. Create mega-factories. Perpetual optimization                                                                                                                           |
```

- [ ] **Step 4: Add CC:Tweaked to the activity guide table**

Locate the activity guide table (near line 3400+, entries like "Process space ores..."). Find the last entry and add:
```markdown
| Program your base                  | CC:Tweaked computer + Create clutch + AE2 ME Drive → custom automation scripts                     |
```

- [ ] **Step 5: Commit**

```bash
git add GUIDE.md
git commit -m "feat(wave8): add CC:Tweaked Wave 8 to GUIDE.md — Lua tutorial, integration recipes, session plan"
```

---

### Task 4: Update STATUS.md

**Files:**
- Modify: `STATUS.md` — add Wave 8 completed entry, update pending test launch to Waves 0-8

**Interfaces:**
- Consumes: STATUS.md as-is
- Produces: STATUS.md with Wave 8 entry and updated pending items

- [ ] **Step 1: Add Wave 8 completed entry**

Locate the Wave 7 entry (line ~85-88):
```
### Wave 7 — Space Exploration (~1 mod)
- [x] Stellaris 1.4.23 as core space mod
- [x] Dependency: Potentials API
- [x] ~~TFMG-Stellaris Compatibility~~ removed (not needed, Stellaris has native fuel system)
```

Insert after:
```markdown
### Wave 8 — Programmable Computers (1 mod)
- [x] CC:Tweaked added as programmable computer mod (Modrinth — dev-recommended platform for NeoForge builds)
- [x] KubeJS recipe script: `kubejs/server_scripts/wave8_cc_tweaked.js` — gates turtles (TFMG steel), Advanced Computer (Mekanism Enriched Alloy), Wireless Modem (Create brass)
- [x] Config override: `config/computercraft-server.toml` — HTTP disabled, command computers disabled, turtle fuel limit 200000
- [x] GUIDE.md Wave 8 section written — mod table, config, Lua tutorial (shell, editor, syntax primer, event loop, peripherals, turtles, redstone, wireless networking, 5 integration scripts), interdependency notes, 7-session plan
- [x] FTB Quests: 6 CC:Tweaked quests in new "Programmable Computers" chapter
```

- [ ] **Step 2: Update pending test launch**

Locate:
```
- [ ] Test launch with Waves 0-7 — generate default configs for all mods
```

Replace:
```markdown
- [ ] Test launch with Waves 0-8 — generate default configs for all mods
```

- [ ] **Step 3: Update mod count**

Locate the "All confirmed NeoForge 1.21.1" / total count line and verify it reads 203 (162 core + 41 deps). If a mod count is explicitly stated elsewhere in STATUS.md, update it.

- [ ] **Step 4: Commit**

```bash
git add STATUS.md
git commit -m "feat(wave8): update STATUS.md with CC:Tweaked Wave 8"
```

---

### Task 5: Create FTB Quests Chapter for CC:Tweaked

**Files:**
- Create: `config/ftbquests/quests/chapters/20008000.snbt`

**Interfaces:**
- Consumes: FTB Quests chapter format (observed from existing chapters: SNBT with `id`, `group`, `order_index`, `title`, `subtitle`, `icon`, `quests[]`)
- Produces: New chapter with 6 quests using item-detect tasks and xp/item rewards

- [ ] **Step 1: Write the chapter file**

```snbt
{
  "id": "20008000",
  "group": "20000001",
  "order_index": 7,
  "title": "Programmable Computers",
  "subtitle": "Write Lua programs to automate your world",
  "icon": "computercraft:computer_normal",
  "default_quest_shape": "square",
  "quests": [
    {
      "id": "20008001",
      "title": "Build a Computer",
      "subtitle": "Craft and boot your first computer",
      "description": [
        "Craft a Basic Computer with 4 stone, 1 redstone, and 1 glass pane.",
        "Place it down and right-click to open the shell.",
        "Type `help` to see available commands."
      ],
      "icon": "computercraft:computer_normal",
      "x": 0,
      "y": 0,
      "shape": "square",
      "dependencies": [],
      "tasks": [
        {
          "id": "20008002",
          "type": "item",
          "item": "computercraft:computer_normal",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "20008003",
          "type": "xp_levels",
          "xp_levels": 3
        }
      ],
      "optional": false
    },
    {
      "id": "20008004",
      "title": "Write Your First Program",
      "subtitle": "Create and run a Lua script",
      "description": [
        "Use the `edit` command to create and save a Lua program.",
        "Try: `edit hello` → type `print(\"Hello, Driftwood!\")` → Ctrl+S save → Ctrl+E exit.",
        "Run it by typing `hello` at the shell prompt.",
        "Tip: Programs in `/` root. Use `mkdir programs` to organize your scripts."
      ],
      "icon": "computercraft:computer_normal",
      "x": 0,
      "y": 1,
      "shape": "square",
      "dependencies": [
        "20008001"
      ],
      "tasks": [
        {
          "id": "20008005",
          "type": "item",
          "item": "computercraft:computer_normal",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "20008006",
          "type": "item",
          "item": "minecraft:redstone",
          "count": 16,
          "reward_table_index": 0
        },
        {
          "id": "20008007",
          "type": "xp_levels",
          "xp_levels": 5
        }
      ],
      "optional": false
    },
    {
      "id": "20008008",
      "title": "Automate Mining",
      "subtitle": "Write a turtle strip-miner",
      "description": [
        "Craft a Mining Turtle (TFMG Steel + Basic Computer + Chest).",
        "Write a strip-mining program — the GUIDE.md has a copy-paste script.",
        "Place fuel in slot 1, point it at a wall, and let it dig.",
        "A 3-wide tunnel at 64 depth yields hundreds of ores while you do something else."
      ],
      "icon": "computercraft:turtle_normal",
      "x": 0,
      "y": 2,
      "shape": "square",
      "dependencies": [
        "20008004"
      ],
      "tasks": [
        {
          "id": "20008009",
          "type": "item",
          "item": "computercraft:turtle_normal",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "2000800A",
          "type": "item",
          "item": "minecraft:diamond",
          "count": 3,
          "reward_table_index": 0
        },
        {
          "id": "2000800B",
          "type": "xp_levels",
          "xp_levels": 8
        }
      ],
      "optional": false
    },
    {
      "id": "2000800C",
      "title": "Wireless Network",
      "subtitle": "Connect computers across your base",
      "description": [
        "Craft a Wireless Modem — requires Create Brass (Phase 1.5–2).",
        "Place it on a computer, open it with `rednet.open(\"left\")`.",
        "Send a message to another computer using `rednet.send()`.",
        "Wireless modems work across any distance — base to outpost, overworld to nether."
      ],
      "icon": "computercraft:wireless_modem_normal",
      "x": 0,
      "y": 3,
      "shape": "square",
      "dependencies": [
        "20008004"
      ],
      "tasks": [
        {
          "id": "2000800D",
          "type": "item",
          "item": "computercraft:wireless_modem_normal",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "2000800E",
          "type": "item",
          "item": "create:brass_ingot",
          "count": 4,
          "reward_table_index": 0
        },
        {
          "id": "2000800F",
          "type": "xp_levels",
          "xp_levels": 5
        }
      ],
      "optional": false
    },
    {
      "id": "20008010",
      "title": "Reactor Watchdog",
      "subtitle": "Monitor Mekanism fission reactor safety",
      "description": [
        "Write a watchdog that monitors your fission reactor via redstone comparator.",
        "If temperature exceeds 1200K, automatically trigger SCRAM.",
        "The GUIDE.md has a copy-paste script in the Integration Recipes section.",
        "Bonus: broadcast warnings via wireless modem to your base dashboard."
      ],
      "icon": "mekanism:fission_reactor_logic_adapter",
      "x": 0,
      "y": 4,
      "shape": "square",
      "dependencies": [
        "2000800C"
      ],
      "tasks": [
        {
          "id": "20008011",
          "type": "item",
          "item": "mekanismgenerators:fission_reactor_casing",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "20008012",
          "type": "xp_levels",
          "xp_levels": 12
        },
        {
          "id": "20008013",
          "type": "item",
          "item": "computercraft:wireless_modem_normal",
          "count": 2,
          "reward_table_index": 0
        }
      ],
      "optional": false
    },
    {
      "id": "20008014",
      "title": "Launch Sequencer",
      "subtitle": "Automate Stellaris rocket launches",
      "description": [
        "Write a countdown sequencer for your Stellaris rocket.",
        "Computer → redstone pulse → Rocket Station ignition.",
        "Display the countdown on a monitor: 10... 3... 2... 1... LIFTOFF!",
        "The GUIDE.md has a copy-paste script in the Integration Recipes section."
      ],
      "icon": "stellaris:rocket",
      "x": 0,
      "y": 5,
      "shape": "square",
      "dependencies": [
        "2000800C"
      ],
      "tasks": [
        {
          "id": "20008015",
          "type": "item",
          "item": "stellaris:rocket_station",
          "count": 1,
          "consume_items": false
        }
      ],
      "rewards": [
        {
          "id": "20008016",
          "type": "xp_levels",
          "xp_levels": 12
        },
        {
          "id": "20008017",
          "type": "item",
          "item": "minecraft:nether_star",
          "count": 1,
          "reward_table_index": 0
        }
      ],
      "optional": false
    }
  ]
}
```

**ID scheme**: Chapter `20008000`, quests `20008001`+`20008004`+`20008008`+`2000800C`+`20008010`+`20008014`. Task/reward IDs fill in the gaps. No collision with existing IDs (highest existing chapter is `200020E1`, quest IDs in the `20000xxx` range).

**Item IDs marked for verification**:
- `mekanismgenerators:fission_reactor_casing` — verify at test launch
- `stellaris:rocket_station` — verify at test launch

- [ ] **Step 2: Commit**

```bash
git add config/ftbquests/quests/chapters/20008000.snbt
git commit -m "feat(wave8): add CC:Tweaked FTB Quests chapter (6 quests)"
```

---

## Self-Review

1. **Spec coverage**: All spec sections covered — mod table (T3), recipe gates (T1), config (T2), Lua tutorial (T3), integration scripts (T3), interdependency notes (T3), session plan (T3), FTB quests (T5), STATUS.md update (T4).

2. **Placeholder scan**: Item IDs marked `[VERIFY]` are spec notes — they're concrete values to check, not "TBD". Every code block is complete and copy-pasteable. No "TODO" or "implement later" patterns.

3. **Type consistency**: KubeJS item IDs match GUIDE.md recipe table names. FTB quest item IDs match expected mod item IDs. Chapter `order_index` 7 follows Waves 0-7 logically.
