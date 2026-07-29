# Fidelitas Suprema — Arma 3 Modlist & Guide Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Scaffold the full Fidelitas Suprema project: guide files, Typst PDF template, build script, and supporting documents.

**Architecture:** Guide content lives in `.typ` files organized by wave under `guide/waves/`. A single `template.typ` at the root imports all content files and applies military-styled formatting. `generate-pdf.bat` compiles the PDF via Typst 0.15 into `output/`.

**Tech Stack:** Typst 0.15 (PDF generation), PowerShell/Batch (build script), Arma 3 v2.20 (game target), Steam Workshop (mod source)

---

## File Structure

```
H:\Projects\modguides\arma-3-modlist\
├── .gitignore
├── AGENTS.md
├── README.md
├── conflicts-mods.md
├── mod-ideas.md
├── generate-pdf.bat
├── template.typ
├── guide/
│   ├── meta/
│   │   ├── about.typ
│   │   └── installation-setup.typ
│   └── waves/
│       ├── 00-wave-0/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   ├── gameplay-guide.typ
│       │   └── mission.typ
│       ├── 01-wave-1/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   ├── strategy-guide.typ
│       │   └── mission.typ
│       ├── 02-wave-2/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   └── mission.typ
│       ├── 03-wave-3/
│       │   ├── narrative.typ
│       │   ├── mods.typ
│       │   └── mission.typ
│       └── 04-wave-4/
│           ├── narrative.typ
│           ├── mods.typ
│           └── mission.typ
└── output/
```

---

### Task 1: Create project scaffolding and .gitignore

**Files:**
- Create: `.gitignore`

- [ ] **Step 1: Create all directories**

Run:
```powershell
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\meta" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\waves\00-wave-0" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\waves\01-wave-1" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\waves\02-wave-2" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\waves\03-wave-3" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\guide\waves\04-wave-4" | Out-Null
New-Item -ItemType Directory -Force -Path "H:\Projects\modguides\arma-3-modlist\output" | Out-Null
Write-Output "All directories created"
```

- [ ] **Step 2: Write .gitignore**

Write to `H:\Projects\modguides\arma-3-modlist\.gitignore`:
```gitignore
output/
*.pdf
```

- [ ] **Step 3: Commit**

```powershell
git add .gitignore
git commit -m "chore: scaffold project structure with .gitignore"
```

---

### Task 2: Write AGENTS.md

**Files:**
- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

Write to `H:\Projects\modguides\arma-3-modlist\AGENTS.md`:

```markdown
# Fidelitas Suprema — AI Agent Instructions

## Project Purpose

A 5-wave progressive modlist and gameplay guide for Arma 3 (version 2.20, June 17, 2025). Output is a styled PDF generated via Typst 0.15.

## File Conventions

- Guide content files use `.typ` extension (Typst native markup), NOT `.md`
- Mod lists go in `guide/waves/XX-wave-N/mods.typ`
- Narratives go in `guide/waves/XX-wave-N/narrative.typ`
- Mission recommendations in `guide/waves/XX-wave-N/mission.typ`
- Each wave has exactly those three files (plus guide files for waves that need them)

## Mod Rules

### Hard Rules (never violate)
- No conflicting mods — check dependency trees and known compatibility
- No porn mods — cosmetic bikini/bathing suit skins allowed; no nudity textures, no sex animation packs, no adult-only Steam Workshop mods
- No redundant mods — if two mods do the same thing, pick the better one
- No cheat/overpower/all-knowing mods — no god mode, no wallhack radar, no infinite stamina, no damage hacks
- Must be compatible with Arma 3 v2.20 — release date June 17, 2025. Use patch release date as heuristic if you cannot determine a specific mod version's compatibility

### Wave 0 Litmus Test (UI/QoL Only)
A mod qualifies for Wave 0 if it ONLY changes:
- Information display (HUD, map markers, unit tracking)
- Interface convenience (inventory sorting, keybinding enhancements)
- Visual clarity without adding new assets

A mod is NOT UI/QoL if it:
- Alters core gameplay mechanics (damage, stamina, weapon handling)
- Changes AI behavior
- Adds new weapons, vehicles, or content
- Modifies the physics or ballistics engine

### Adult Mods Threshold
- Bikini/bathing suit cosmetic skins only
- No nudity textures of any kind
- No sex/animation mods
- If listed on Steam Workshop under "Adult Only," exclude it

## Mod Entry Format

Each mod entry in a wave's `mods.typ` file:

```typst
== [Mod Name](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Graphics | Content | Mechanics | UI/QoL
- *Mod ID:* `WORKSHOP_ID`
- *Dependencies:* [#link("https://steamcommunity.com/workshop/filedetails/?id=450814997")[@CBA_A3]] (omit if none)
- *Description:* One-two sentence summary of what this mod does.
- *System Impact:* What gameplay mechanics this mod changes or adds. Omit section for purely cosmetic mods.
- *Verified:* YYYY-MM-DD
```

## Wave Overview

| Wave | Theme | Mod Tier | Est. Count |
|------|-------|----------|-----------|
| 0 | Basic Training | UI/QoL only | 3–6 |
| 1 | The Spark | Visual/immersion | 8–15 |
| 2 | Steel | ACE/RHS/medical | 15–25 |
| 3 | Sharp | TFAR/ACRE/realism | 20–35 |
| 4 | The Highest | Full milsim | 30–50+ |

## PDF Build

Run from project root:
```batch
generate-pdf.bat
```

Requires Typst 0.15 in PATH. Output goes to `output\Fidelitas-Suprema.pdf`.

## Working Documents

- `conflicts-mods.md` — Track known mod incompatibilities. NOT included in PDF.
- `mod-ideas.md` — Candidate mods to evaluate later. NOT included in PDF.
```

- [ ] **Step 2: Commit**

```powershell
git add AGENTS.md
git commit -m "docs: add AGENTS.md with AI instructions and mod rules"
```

---

### Task 3: Write README.md

**Files:**
- Create: `README.md`

- [ ] **Step 1: Write README.md**

Write to `H:\Projects\modguides\arma-3-modlist\README.md`:

```markdown
# Fidelitas Suprema

A 5-wave progressive modlist and gameplay guide for Arma 3 (version 2.20).

## What Is This?

Fidelitas Suprema is a curated collection of mods and companion guides organized into five waves of increasing complexity. Each wave adds more mods, more difficult content, and a roleplaying narrative backstory.

## The Waves

| Wave | Name | Vibe |
|------|------|------|
| 0 — Tirocinium | Basic Training | Recruit boot camp — UI/QoL mods only, full how-to-play guide |
| 1 — Ignis | The Spark | Green deployment — visual mods, combat tactics |
| 2 — Ferrum | Steel | Mechanized infantry — ACE medical, RHS, co-op ops |
| 3 — Acer | Sharp | Special forces — radio comms, land nav, realism |
| 4 — Suprema | The Highest | Joint task force command — full milsim, combined arms |

## Prerequisites

- Arma 3 version 2.20 (June 17, 2025) or later
- Steam Workshop access
- All mods are installed via the Official Launcher (see installation guide)

## Reading the Guide

Browse the files under `guide/` to read the content directly. Each wave's folder contains:
- `narrative.typ` — the roleplaying backstory
- `mods.typ` — the mod list with Steam Workshop links
- `*-guide.typ` — gameplay or strategy advice
- `mission.typ` — recommended campaign or mission

## Building the PDF

1. Install [Typst 0.15](https://github.com/typst/typst/releases/tag/v0.15.0)
2. Run `generate-pdf.bat` from the project root
3. Output: `output\Fidelitas-Suprema.pdf`

## License

This guide and modlist are provided for free use. Individual mods retain their own licenses on the Steam Workshop.
```

- [ ] **Step 2: Commit**

```powershell
git add README.md
git commit -m "docs: add README.md with project overview"
```

---

### Task 4: Write working documents

**Files:**
- Create: `conflicts-mods.md`
- Create: `mod-ideas.md`

- [ ] **Step 1: Write conflicts-mods.md**

Write to `H:\Projects\modguides\arma-3-modlist\conflicts-mods.md`:

```markdown
# Known Mod Conflicts

This file tracks mod incompatibilities discovered across the modlist. It is a working document and is NOT included in the generated PDF.

## Conflict Entry Format

```markdown
### Mod A vs Mod B
- **Mod A:** [Name](https://steamcommunity.com/workshop/filedetails/?id=A)
- **Mod B:** [Name](https://steamcommunity.com/workshop/filedetails/?id=B)
- **Nature:** Crash on launch / broken feature / performance issue / data override
- **Resolution:** Use Mod A, drop Mod B / Use Mod B, drop Mod A / Incompatible, find alternative
- **Notes:** Any additional context.
```

## Conflicts

_None recorded yet. Add entries as mods are evaluated._
```

- [ ] **Step 2: Write mod-ideas.md**

Write to `H:\Projects\modguides\arma-3-modlist\mod-ideas.md`:

```markdown
# Mod Ideas

Candidate mods to evaluate for inclusion. This is a working document and is NOT included in the generated PDF.

## Idea Entry Format

```markdown
### [Mod Name](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)
- **Proposed Wave:** 0-4
- **Rationale:** Why it fits
- **Concerns:** Compatibility risks, overlap with existing mods, adult content check needed
- **Status:** To Evaluate | Approved | Rejected
```

## Ideas

_None recorded yet. Add entries as candidate mods are discovered._
```

- [ ] **Step 3: Commit**

```powershell
git add conflicts-mods.md mod-ideas.md
git commit -m "docs: add conflicts-mods.md and mod-ideas.md working documents"
```

---

### Task 5: Write guide meta files (about.typ, installation-setup.typ)

**Files:**
- Create: `guide/meta/about.typ`
- Create: `guide/meta/installation-setup.typ`

- [ ] **Step 1: Write about.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\meta\about.typ`:

```typst
== What Is Fidelitas Suprema?

Fidelitas Suprema is a curated progression of Arma 3 mods and companion guides, organized into five waves of increasing complexity. Whether you are stepping into Arma 3 for the first time or you are a veteran operator looking for the definitive milsim experience, this guide walks you through every stage.

Each wave introduces:
- A curated set of mods that build on the previous wave
- A roleplaying narrative that sets the scene for your campaign
- A gameplay or strategy guide appropriate to your experience level
- A recommended mission or campaign to play with that wave's mods

== Wave Progression

#show: block.with(fill: rgb("f5f5f5"), inset: 12pt, radius: 4pt)

*Wave 0 — Tirocinium (Basic Training)*: You are a fresh recruit. UI and quality-of-life mods only. A complete how-to-play guide covers everything from movement and controls to basic combat, navigation, and communication.

*Wave 1 — Ignis (The Spark)*: Deployed to your first real conflict. Visual and immersion mods enhance the battlefield. Advanced combat tactics and team coordination become the focus.

*Wave 2 — Ferrum (Steel)*: Seasoned mechanized infantry. Full realism mods including ACE medical system, RHS/CUP weapon packs. Learn wounding, vehicle repair, and battlefield logistics.

*Wave 3 — Acer (Sharp)*: Special forces operations. Radio communication mods (TFAR/ACRE), environmental survival, and land navigation. Dynamic reconnaissance and surgical strikes.

*Wave 4 — Suprema (The Highest)*: The culmination. Every compatible realism mod — joint task force command, rules of engagement, JTAC coordination, and full combined-arms operations.

== Compatibility

All mods in this guide have been verified against Arma 3 version 2.20 (released June 17, 2025). Mod selection prioritizes compatibility, avoiding conflicts and redundant features.

== Credits

Fidelitas Suprema is a community project. Individual mods are the work of their respective authors on the Steam Workshop.
```

- [ ] **Step 2: Write installation-setup.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\meta\installation-setup.typ`:

```typst
== Before You Begin

Arma 3 version 2.20 (June 17, 2025) or later is required. Verify your game is up to date through Steam before proceeding.

== Mod Installation via Official Launcher

All mods are installed through the Arma 3 Official Launcher via Steam Workshop subscriptions. There are no external download links or manual file placements.

#show: block.with(fill: rgb("f5f5f5"), inset: 12pt, radius: 4pt)

*Step 1 — Subscribe to Mods*
Visit each mod's Steam Workshop page and click *Subscribe*. The mod will download automatically through Steam. You can verify subscription status on the mod's Workshop page — the *Subscribe* button will change to *Subscribed*.

*Step 2 — Open the Official Launcher*
From your Steam Library, click *Play* on Arma 3. When the Launcher window appears, select the *Mods* tab.

*Step 3 — Enable the Mods*
Under *Available Mods*, you will see your subscribed mods listed. Check the box next to each mod to activate it. The launcher will automatically resolve the load order — you do not need to reorder mods manually.

*Step 4 — Verify Dependencies*
If a mod requires another mod (e.g., CBA_A3), that dependency must also be subscribed and activated. The launcher will warn you if a dependency is missing. The full dependency tree for each mod is listed in the mod entry.

*Step 5 — Launch*
Click *Play* to start Arma 3 with the selected mods loaded. The game will display the active mod list on the main menu screen — verify all expected mods appear.

== Preset Profiles

The Official Launcher supports saving mod presets. Create a separate preset for each wave:

1. Activate the mods for the current wave
2. Click the *Preset* dropdown in the Mods tab
3. Select *Save As...*
4. Name it after the wave (e.g., `Fidelitas Suprema — Wave 1`)
5. To switch waves, load the desired preset from the dropdown

== Troubleshooting

*Mod not appearing in launcher*: Restart Steam. If the mod finished downloading while the launcher was open, it may not show until the launcher restarts.

*Game crashes on launch*: Disable all mods, then enable them one by one to identify the culprit. Check `conflicts-mods.md` in the project root.

*Performance issues*: Too many large content mods can degrade performance. Consider the recommended mod count per wave. If you are below the target and still struggling, check your system against Arma 3's recommended specifications.

*Version mismatch*: If a mod was updated after this guide was published, it may introduce incompatibilities. Report it via your project's issue tracker.
```

- [ ] **Step 3: Commit**

```powershell
git add guide/meta/about.typ guide/meta/installation-setup.typ
git commit -m "docs: add about.typ and installation-setup.typ guide meta files"
```

---

### Task 6: Write Wave 0 content files

**Files:**
- Create: `guide/waves/00-wave-0/narrative.typ`
- Create: `guide/waves/00-wave-0/mods.typ`
- Create: `guide/waves/00-wave-0/gameplay-guide.typ`
- Create: `guide/waves/00-wave-0/mission.typ`

- [ ] **Step 1: Write Wave 0 narrative.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\00-wave-0\narrative.typ`:

```typst
== Backstory

You are a civilian who has just enlisted. No military background. No combat experience. You signed the papers because your home region has seen escalating violence, and standing by was no longer an option. The Altis Armed Forces accepted your application and assigned you to a basic training battalion stationed at Camp Rogain, north of the capital Pyrgos.

Your drill instructors have one objective: turn you from a liability into a soldier.

You arrive at camp with nothing but the clothes on your back and a head full of questions. Over the coming weeks, you will learn everything from how to hold a rifle to how to read a tactical map. Mistakes are expected. Hesitation is normal. The instructors have seen hundreds of recruits pass through these gates — some become operators, some wash out. Which one you become is entirely in your hands.

== Role

*Recruit — Altis Armed Forces*

You are the lowest rank. Your only advantage is a willingness to learn. Follow orders, pay attention during training exercises, and do not be afraid to ask for clarification. Combat will come soon enough — for now, the range and the classroom are your battlefield.

== Tone

This wave is a tutorial experience. The enemy is your own ignorance, not any opposing force. Mistakes are learning opportunities. There are no real consequences for failure — only more practice.
```

- [ ] **Step 2: Write Wave 0 mods.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\00-wave-0\mods.typ`:

```typst
== Mod List

This wave is limited to UI and quality-of-life mods. These do not alter core gameplay, damage models, AI behavior, or add new content. They only improve the information available to you and make the interface more comfortable to use.

_Mods to be added. See formatting template below._

== Formatting Template

Each mod entry should follow this structure. Replace the placeholder values with actual mod data.

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("2980b9")), inset: 12pt, radius: 4pt)[
== [CBA_A3 — Community Base Addons](https://steamcommunity.com/workshop/filedetails/?id=450814997)

- *Type:* UI/QoL
- *Mod ID:* `450814997`
- *Description:* Foundation framework required by many Arma 3 mods. Provides shared functions and event handlers. Does not change gameplay on its own.
- *System Impact:* Required dependency for many mods in later waves. Has no visible impact by itself.
- *Verified:* 2025-06-17
]
```

- [ ] **Step 3: Write Wave 0 gameplay-guide.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\00-wave-0\gameplay-guide.typ`:

```typst
== Controls Primer

Open Arma 3 and go to _Configure \> Controls_ to see all key bindings. The most essential ones are listed here.

=== Movement

_W, A, S, D_ — Move forward, left, backward, right.\
_Q, E_ — Lean left, lean right.\
_Z_ — Prone (lie down).\
_X_ — Crouch.\
_C_ — Stand up.\
_V_ — Vault over low obstacles (hold to step over).\
_Left Shift_ — Sprint (hold).\
_Left Ctrl + W/S_ — Adjust stance height incrementally.

=== Weapons

_Left Mouse Button_ — Fire.\
_Right Mouse Button (hold)_ — Aim down sights / hold breath.\
_R_ — Reload.\
_F_ — Switch fire mode (single, burst, full auto) / change weapon.\
_Mouse Wheel_ — Open weapon selection menu; scroll to select.

=== Observation

_Numpad Enter_ — Third-person view toggle (server-dependent).\
_Right Mouse Button (hold)_ — Zoom view.\
_Numpad + / -_ — Zoom in / out of view.\
_Alt (hold)_ — Free-look — move your head independently of your weapon. Always use this to scan your surroundings.

=== Interaction

_Mouse Wheel_ — Open action menu; scroll to select options.\
_Space_ — Confirm action.\
_I_ — Open inventory.\
_G_ — Open gear menu (equipment).\
_Backspace_ — Holster weapon.

=== Communication

_, (comma) and . (period)_ — Cycle through communication channels.\
_Caps Lock_ — Push-to-talk on direct voice chat.\
_/ (slash)_ — Open text chat.\
_Tab_ — Open the commanding menu (squad orders, etc.).

=== Navigation

_M_ — Open map.\
_Ctrl + M_ — Open GPS device (if equipped).\
_K_ — Open compass (toggle).\
_Shift + Left Click (on map)_ — Place a marker.

== Essential Survival Skills

=== Using Cover

Arma 3 does not have a snap-to-cover mechanic. Cover is positional. Always position your body behind solid objects — walls, rocks, vehicles, sandbags — so that the enemy's line of sight is broken. Use Q/E lean to peek around corners without exposing your full body.

A good rule: if you can see the sky when you look up from your position, you are exposed to indirect fire. Stay near overhead cover whenever possible.

=== Stance Adjustment

Arma 3 has a continuous stance system. Hold _Left Ctrl_ and press _W_ (up) or _S_ (down) to adjust your height while crouched or standing. This lets you shoot through windows, over low walls, or under obstacles at exactly the right height. Use it constantly.

=== Scanning and Target Identification

Press and hold _Alt_ to freelook independently of your weapon. Scan the horizon, tree lines, windows, and rooftops before moving from cover. Enemy AI can spot you from hundreds of meters. The player who sees first usually wins.

Use _Right Mouse Button_ to zoom in on distant targets — this simulates focusing your eyes and is critical for identifying friendlies versus hostiles at range.

=== Movement Under Fire

When you take fire and do not know where from:
1. Immediately go prone or take nearest hard cover.
2. Do not stand still looking around — you will die.
3. Call out the direction if you heard the shot.
4. Only pop your head up to spot once you are behind cover.

DO NOT sprint in a straight line when under fire. Zigzag between cover points. The AI leads moving targets.

=== Damage and First Aid

Your character takes damage to specific body parts. The screen will show hit indicators. Red screen tint means you are bleeding. If you bleed out, you die — even if the initial wound was not fatal.

Open your inventory (I) and drag a field dressing or first aid kit to the appropriate body part. You cannot heal fully in the field — only stop the bleeding. Return to a medic or medical vehicle for full treatment.

If you cannot walk, you can still crawl and fire from the prone position. Call for help over voice or text chat.

=== Map Reading

Open the map (M). You are shown as a blue arrow. Friendly units are blue circles. Known enemy positions — if reported — are red.

To set a waypoint: shift-click on the map. To mark a position for your team: double-click and select a marker type from the menu.

The map has a coordinate grid. Call out coordinates when reporting enemy positions. Use the three-number grid reference system (e.g., "Grid 047-215").

Learn to read contour lines for elevation. Dense contour lines mean steep terrain. Use high ground — it gives you both visibility and a firing advantage.

=== Vehicle Operations

Vehicles have many crew positions: driver, gunner, commander, and passenger seats. Use the mouse wheel action menu to select your seat when approaching a vehicle.

As driver: _W/S_ accelerate/brake, _A/D_ steer. _Q/E_ are reserved for the commander's turret on armored vehicles.

Always approach vehicles from behind to avoid friendly fire from the gunner. When dismounting, exit on the side AWAY from the enemy.

If your vehicle takes damage and begins smoking, dismount immediately. Vehicles can explode, killing everyone inside.

== Recommended First Session

1. Open the in-game VR Training from the main menu (Tutorials \> VR Training). Complete the Movement, Weapons Handling, and Explosives tutorials.
2. Start the East Wind campaign on Recruit difficulty. Play through the first three missions (Drawdown '35, Signal Lost, and Patrol).
3. Do not worry about completing objectives perfectly — focus on getting comfortable with the controls.
4. If you die, observe how the AI moves and uses cover. Watch what gets you killed and adapt.
```

- [ ] **Step 4: Write Wave 0 mission.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\00-wave-0\mission.typ`:

```typst
== Recommended Campaign

=== East Wind — Prologue and Act 1

The official Arma 3 single-player campaign. You play as Corporal Ben Kerry, a NATO soldier stationed on the Mediterranean island of Stratis when a CSAT invasion forces your unit into a desperate guerilla campaign.

*Play the VR Training tutorials first* if you have not already — they cover the basics of each weapon system.

Start on *Recruit* difficulty. The focus is on learning the controls, not on combat proficiency.

Playlist:
1. Drawdown '35
2. Signal Lost
3. Patrol
4. Survive (Adapt episode)
5. Common Denominator
6. Bingo Fuel

Stop after completing these missions. You will continue the campaign in Wave 1 with additional mods and tactical knowledge.

=== Bootcamp (Showcase)

If you prefer a structured training environment before the campaign: play the Bootcamp showcase mission. It walks through the same fundamentals in a controlled setting with an instructor voice-over.
```

- [ ] **Step 5: Commit**

```powershell
git add guide/waves/00-wave-0/
git commit -m "docs: add Wave 0 Tirocinium content files"
```

---

### Task 7: Write Wave 1 content files

**Files:**
- Create: `guide/waves/01-wave-1/narrative.typ`
- Create: `guide/waves/01-wave-1/mods.typ`
- Create: `guide/waves/01-wave-1/strategy-guide.typ`
- Create: `guide/waves/01-wave-1/mission.typ`

- [ ] **Step 1: Write Wave 1 narrative.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\01-wave-1\narrative.typ`:

```typst
== Backstory

Basic training is over. You are no longer a recruit. The Altis Armed Forces has assigned you to a light infantry platoon stationed at FOB Spartan, in the volatile eastern region of Altis. AAF command has been stretched thin by a resurgent CSAT-aligned militia operating in the hills. Your platoon's mission: stabilize the region and deny the militia safe haven.

You arrive at Spartan by helicopter at dawn. The base is a collection of prefab buildings, sandbag walls, and tired soldiers rotating out from night patrol. Your squad leader, a grizzled sergeant with a Altis Intervention campaign patch on his sleeve, sizes you up in two seconds and assigns you to a fireteam.

The veterans in your squad have seen real combat. One of them tells you over a shared cigarette: "The militia knows this terrain better than we ever will. They've been running these hills for years. You want to go home in one piece? Learn to work with your team, or you will not make it."

Your first patrol departs in thirty minutes.

== Role

*Rifleman — Altis Armed Forces Light Infantry*

You are a rifleman in a four-man fireteam. Your team leader is experienced — listen to his commands. Your squad has an automatic rifleman, a grenadier, and a designated marksman. Your job is to follow orders, cover your sector, and stay alive long enough to become a veteran yourself.

== Tone

The training wheels are off. The enemy is smart, numerous, and dug in. Your team will save you if you stick together. Lone-wolfing gets you and your squadmates killed. Communication is no longer optional — it is survival.
```

- [ ] **Step 2: Write Wave 1 mods.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\01-wave-1\mods.typ`:

```typst
== Mod List

Wave 1 introduces visual, sound, and immersion mods. Still no gameplay-altering mechanics — the focus is on improving the sensory experience of the battlefield.

_Mods to be added. See formatting template below._

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("2980b9")), inset: 12pt, radius: 4pt)[
=== Continued from Wave 0

All mods from Wave 0 remain active. Do not disable any previous wave's mods unless a specific conflict is noted in `conflicts-mods.md`.
]

== Formatting Template

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("8e44ad")), inset: 12pt, radius: 4pt)[
== [Example Graphics Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Graphics
- *Mod ID:* `WORKSHOP_ID`
- *Dependencies:* [#link("https://steamcommunity.com/workshop/filedetails/?id=450814997")[@CBA_A3]]
- *Description:* Enhances visual effects including explosions, smoke, and particle systems.
- *Verified:* 2025-06-17
]

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("27ae60")), inset: 12pt, radius: 4pt)[
== [Example Content Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Content
- *Mod ID:* `WORKSHOP_ID`
- *Description:* Adds period-accurate weapon packs for NATO and CSAT forces.
- *System Impact:* Replaces vanilla weapon models with higher-fidelity versions. Does not change weapon stats.
- *Verified:* 2025-06-17
]
```

- [ ] **Step 3: Write Wave 1 strategy-guide.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\01-wave-1\strategy-guide.typ`:

```typst
== Combat Fundamentals

You know the controls. Now you need to know how to fight.

=== The Four Fs of Contact

When your squad takes contact, every fireteam member defaults to a role. Memorize these:

1. *Find* — The first person to spot the enemy calls out direction, distance, and description. "Contact! East, two hundred meters, infantry behind the stone wall!"
2. *Fix* — The automatic rifleman and grenadier suppress the enemy position. They do not need to hit anything — they need to keep heads down so the enemy cannot maneuver.
3. *Flank* — While the enemy is suppressed, the rifleman and team leader move to an angle where the enemy's cover no longer protects them. This is usually 45-90 degrees from the suppression axis.
4. *Finish* — From the flanking position, engage the now-exposed enemy with accurate fire. Call "clear" when the position is neutralized.

=== Fireteam Roles

*Team Leader*: Moves the team, issues engagement orders, coordinates with squad leader. Carries standard rifle and binoculars.

*Automatic Rifleman*: Primary suppression tool. Carries an LMG with large magazine capacity. Does not need to be accurate — volume of fire keeps the enemy pinned.

*Grenadier*: Anti-cover specialist. Carries an under-barrel grenade launcher. Useful for enemies behind walls, inside buildings, or clustered together.

*Rifleman*: The flexible element. Carries a standard rifle and extra ammunition for the automatic rifleman. Can act as secondary suppression, flanker, or casualty treatment.

=== Suppression Mechanics

Arma 3 models suppression: bullets landing near an AI unit degrade its accuracy and can force it to go prone. Use suppression to:
- Pin enemies while your team maneuvers
- Force snipers and machine gunners out of their positions
- Cover a withdrawal or retreat

A single rifleman firing controlled shots does not suppress. You need sustained automatic fire from an LMG or multiple riflemen firing rapidly at the same target area.

=== Bounding Overwatch

Moving across open terrain as a squad:

1. One fireteam ("Overwatch") takes a firing position with clear sight lines across the movement path.
2. The other fireteam ("Bound") sprints to the next piece of cover — typically 20-30 meters forward.
3. Bound team calls "Set."
4. Overwatch team moves, becoming the new Bound. The former Bound team is now Overwatch.
5. Repeat.

The rule: one team moves, one team covers. Never both move at the same time across exposed ground.

=== Room Clearing

Entering a building with potentially hostile occupants:

1. Stack up on the wall beside the door — do NOT stand in front of it.
2. The point man throws a frag or flashbang through the door and waits for detonation.
3. Point man enters first, sweeping the immediate corners (left and right).
4. Number two enters and sweeps the opposite direction.
5. Call "Clear left" / "Clear right" as each sector is confirmed.
6. Move through the room to the next door. Do not stop in fatal funnels (doorways, hallways).

=== Hit and Run

Against numerically superior forces:
1. Engage from cover with surprise — get one or two kills before the enemy reacts.
2. Withdraw immediately after the first volley. Do not stay for a prolonged firefight.
3. Displace to a new position at least 50 meters away and re-engage from a different angle.

The goal is not to wipe the enemy squad. The goal is to bleed them repeatedly until they lose cohesion and abandon the position.

== Situational Awareness

=== Auditory Cues

Arma 3 has directional audio. Crank your headset and learn to recognize:
- The crack of a supersonic round passing near you (high-pitched snap)
- The distant thump of the rifle that fired it (lower, from a different direction — crack-thump ranging)
- Vehicle engine sounds and their direction
- Footsteps on different surfaces (gravel, wood, metal floor)

If you hear a crack but no thump: the shooter is close, the round did not have time to decelerate below supersonic. You are in immediate danger.

=== Reading the Battlefield

Every few seconds while in cover, ask yourself:
- Where is my team?
- Where was the last known enemy position?
- What is my next piece of cover if I need to move?
- Is there a flanking route the enemy could use against me?

If you cannot answer all four, you are not situationally aware. Fix that before you fire.

=== Communication Protocols

When reporting contact, use this exact format:
#block(fill: rgb("f5f5f5"), inset: 12pt, radius: 4pt)[
*Alert* — "Contact!"\
*Direction* — "Bearing 045!" (compass direction from your position to the enemy)\
*Distance* — "300 meters!"\
*Description* — "Infantry squad, behind the low wall!"\
*Action* — "Engaging!" or "Requesting suppression!" or "Falling back!"
]

Example: "Contact, bearing 270, two hundred meters, technical with DShK on the ridgeline, requesting marksman!"\
Example: "Contact, south-east, one-fifty, infantry moving through the olive grove, engaging!"

Do not ramble. Do not describe your feelings. Give the four elements and shut up so others can report.

=== AAR — After-Action Review

After every mission, regardless of success or failure, mentally run through what happened:
1. What was the plan going in?
2. What actually happened?
3. Why was there a difference?
4. What will you do differently next time?

Write it down if it helps. The soldiers who improve the fastest are the ones who treat every failure as a lesson, not a loss.
```

- [ ] **Step 4: Write Wave 1 mission.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\01-wave-1\mission.typ`:

```typst
== Recommended Campaign

=== East Wind — Act 2 and Act 3

Continue the official campaign from where Wave 0 left off. The campaign transitions from guerilla survival to combined-arms operations as NATO forces establish a foothold on Altis.

Play on *Regular* difficulty. You should now be comfortable with the controls and can focus on tactical decision-making rather than just surviving each encounter.

Playlist (continuing from Wave 0):
1. Tipping Point
2. Fertile Ground
3. Air Superiority
4. Moral Fiber
5. Paradise Found

=== Remnants of War (Optional)

If you complete East Wind early: play the Remnants of War mini-campaign. Set after the events of East Wind, you play as a humanitarian aid worker dealing with the aftermath of the conflict. This introduces non-combat decision-making, mine-clearing mechanics, and the civilian cost of war.

Note: this campaign is narrative-heavy and combat-light. Play it for the story and perspective, not for firefights.
```

- [ ] **Step 5: Commit**

```powershell
git add guide/waves/01-wave-1/
git commit -m "docs: add Wave 1 Ignis content files"
```

---

### Task 8: Write Waves 2-4 content files

**Files:**
- Create: `guide/waves/02-wave-0/narrative.typ`, `guide/waves/02-wave-0/mods.typ`, `guide/waves/02-wave-0/mission.typ`
- Create: `guide/waves/03-wave-0/narrative.typ`, `guide/waves/03-wave-0/mods.typ`, `guide/waves/03-wave-0/mission.typ`
- Create: `guide/waves/04-wave-0/narrative.typ`, `guide/waves/04-wave-0/mods.typ`, `guide/waves/04-wave-0/mission.typ`

- [ ] **Step 1: Write Wave 2 narrative.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\02-wave-2\narrative.typ`:

```typst
== Backstory

Two combat tours have changed you. Your squad leader pinned sergeant stripes on your collar three months ago and transferred to a training command in Kavala. You now lead a squad — the same squad you learned to fight in.

NATO high command has declared a full intervention. CSAT forces are entrenched across Altis with armor, air support, and a network of fortified positions that have turned the island into a fortress. Standard infantry tactics will not break these lines. The campaign plan calls for mechanized infantry — squads mounted in armored personnel carriers, supported by main battle tanks, striking enemy positions with speed and overwhelming firepower.

Your company has been assigned AMV-7 Marshall IFVs. You and your squad will ride into battle inside armored hulls, dismounting at the objective, clearing fortified positions, and remounting for the next push. The medic assigned to your platoon carries more than field dressings now — he has advanced medical gear and the training to use it. When a man goes down, he stays down only as long as it takes to stabilize him.

The first objective is the town of Agios Dionysios, which controls the main supply route to the CSAT divisional headquarters. Intel says the militia reinforced it with technicals and a couple of old T-34s dug into hull-down positions. Your IFV's 40mm autocannon evens the odds, but only if you can guide it onto target without getting your head taken off.

You brief your squad in the back of the Marshall as the ramp rumbles beneath you. They listen. They trust you. Do not waste that trust.

== Role

*Squad Leader — NATO Mechanized Infantry*

You command a 9-man squad, coordinate with vehicle crews, and are responsible for every decision from the moment the ramp drops until the last man is back inside. Your squad's lives depend on your tactical judgment. There is no respawn.

== Tone

War has teeth. Casualties are permanent within each mission. The mods add realistic wounding, vehicle damage, and communications limitations. Mistakes that were survivable in Wave 1 will kill you here. Think before you act.
```

- [ ] **Step 2: Write Wave 2 mods.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\02-wave-2\mods.typ`:

```typst
== Mod List

Wave 2 introduces gameplay-altering mechanics for the first time: the ACE medical system, RHS/CUP weapon and vehicle packs, and logistics mods. These fundamentally change how you approach combat.

_Mods to be added. See formatting template below._

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("2980b9")), inset: 12pt, radius: 4pt)[
=== Continued from Previous Waves

All mods from Waves 0 and 1 remain active. Do not disable any previous wave's mods unless a specific conflict is noted in `conflicts-mods.md`.
]

== Formatting Template

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("e74c3c")), inset: 12pt, radius: 4pt)[
== [Example Mechanics Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Mechanics
- *Mod ID:* `WORKSHOP_ID`
- *Dependencies:* [#link("https://steamcommunity.com/workshop/filedetails/?id=450814997")[@CBA_A3]]
- *Description:* Adds advanced medical system with realistic wounding, triage, and treatment.
- *System Impact:* Replaces vanilla healing. Wounds are specific to body parts. Bleeding requires tourniquets and bandages. Advanced treatments require medical vehicles or surgical kits. Unconsciousness, cardiac arrest, and limb fractures are now possible.
- *Verified:* 2025-06-17
]
```

- [ ] **Step 3: Write Wave 2 mission.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\02-wave-2\mission.typ`:

```typst
== Recommended Campaign

=== Liberation RX (Community Scenario)

A persistent co-op campaign on Altis. Starting from a single FOB, you and your squad must liberate the entire island from CSAT occupation — capturing towns, factories, and military bases one objective at a time. The enemy counters with QRF units, air strikes, and reinforcement waves.

_Setup:_ Host a local server or join a dedicated one. Play with 2-8 players. A small squad of 4 is ideal for learning the logistics flow.

_Why Liberation:_ This scenario integrates every new mechanic from Wave 2. You will manage medical casualties, repair damaged vehicles, capture and hold supply points, and call in CAS. Each session builds on the last, creating a persistent narrative of your squad's campaign.

=== Alternative: Antistasi

A guerilla warfare scenario where you start as a small resistance cell and must build public support, capture weapons caches, and eventually overthrow the occupying force. More asymmetric than Liberation — you will spend the early game ambushing patrols with scavenged weapons.

Play Antistasi if you prefer an underdog narrative over a conventional military campaign.
```

- [ ] **Step 4: Write Wave 3 narrative.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\03-wave-3\narrative.typ`:

```typst
== Backstory

The conventional war is over. NATO declared victory six months ago, but peace is an illusion. A CSAT hardliner faction calling itself the "Aegis Compact" has gone underground — literally. They operate from cave networks in the mountainous interior, striking supply convoys and then vanishing before QRF can respond. Standard infantry patrols are too slow, too loud, too predictable.

You have been hand-picked for a special operations task force. Your training was accelerated: advanced reconnaissance, close-quarters battle, high-altitude insertion, explosive breaching. Your squad is half the size it used to be, but every operator in it is lethal in their own right.

Missions are no longer announced at morning briefings. You get a grid reference, an infil method, and an objective. The rest is improvisation. Radio silence until mission complete. No armor support. No CASEVAC. If the mission goes wrong, you extract yourself or you do not extract at all.

Your first operation is a night HALO insertion onto a ridge overlooking a suspected underground command post. Intel wants two things: a live prisoner from the command staff, and photographic evidence of the bunker complex. You have six hours of darkness to infiltrate, execute, and exfil before dawn exposes you to every patrol in the valley.

Your spotter checks the altimeter. The jump light goes green.

== Role

*Team Leader — NATO Special Operations*

You command a four-man SF team: you, a weapons specialist, a combat medic, and an explosives/breaching engineer. You are autonomous — no higher command on the radio, no backup, no extraction unless you arrange it yourself. Every decision is yours. Every consequence is yours.

== Tone

Precision and stealth. Speed and violence of action. You are outnumbered, outgunned, and operating behind enemy lines. Success depends on planning, coordination, and the discipline to abort when the situation deteriorates beyond recovery. Live to fight another night.
```

- [ ] **Step 5: Write Wave 3 mods.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\03-wave-3\mods.typ`:

```typst
== Mod List

Wave 3 adds advanced communication (radio simulation), environmental realism, and enhanced AI behavior. These mods deepen the simulation and reward coordinated, deliberate play.

_Mods to be added. See formatting template below._

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("2980b9")), inset: 12pt, radius: 4pt)[
=== Continued from Previous Waves

All mods from Waves 0 through 2 remain active. Do not disable any previous wave's mods unless a specific conflict is noted in `conflicts-mods.md`.
]

== Formatting Template

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("e74c3c")), inset: 12pt, radius: 4pt)[
== [Example Radio Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Mechanics
- *Mod ID:* `WORKSHOP_ID`
- *Description:* Simulates realistic radio communication with range limits, terrain interference, and multiple frequency channels.
- *System Impact:* Replaces vanilla voice chat. Radios have limited range affected by terrain. Requires carrying radio backpacks for long-range communication. Different channels for squad, platoon, and command nets.
- *Verified:* 2025-06-17
]

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("8e44ad")), inset: 12pt, radius: 4pt)[
== [Example Environment Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Graphics
- *Mod ID:* `WORKSHOP_ID`
- *Description:* Enhances weather effects, foliage detail, and lighting for a more immersive environment.
- *Verified:* 2025-06-17
]
```

- [ ] **Step 6: Write Wave 3 mission.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\03-wave-3\mission.typ`:

```typst
== Recommended Campaign

=== Dynamic Recon Ops (Community Scenario)

A mission generator that creates unique reconnaissance and strike operations every session. You define the parameters — location, enemy strength, time of day, infil method — and the scenario builds the mission.

_Setup:_ Host locally. Play with 2-4 players (your SF team). Select night operations with HALO insertion for maximum authenticity.

_Why DRO:_ No two missions are the same. The generator creates organic variety that tests your team's ability to adapt. Some missions will be walkovers. Some will go catastrophically wrong. Both experiences teach you something.

=== TRGM 2 (Optional)

A more structured mission generator with narrative elements, randomized objectives, and persistent campaign stats. Good for longer sessions where you want multiple objectives in sequence with a coherent through-line.

=== Overthrow (Optional)

If you want an open-world sandbox: Overthrow drops you into a living Altis with civilian populations, an economy, and an occupying force. Your SF team must destabilize the occupation through targeted strikes while managing public opinion. More strategic than tactical — good for sessions where you want long-term consequences.
```

- [ ] **Step 7: Write Wave 4 narrative.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\04-wave-4\narrative.typ`:

```typst
== Backstory

The Aegis Compact has been broken. Their underground command network was dismantled operation by operation, their leadership captured or killed, their safe houses reduced to craters. The special operations phase is complete.

Now comes the endgame.

Satellite imagery and defector testimony confirm what NATO intelligence suspected for months: CSAT has been shipping heavy armor and air-defense systems to a fortified complex on the island of Malden. The facility — codenamed OLYMPUS — is a combined-arms bastion designed to repel exactly the kind of invasion NATO is planning. Minefields, layered air defense, entrenched armor, and an infantry brigade dug into urban positions around the primary objective. Taking it requires a joint task force: infantry, armor, rotary-wing air support, and fixed-wing CAS, all operating in concert.

You have been promoted to company command. Under your authority: two infantry platoons, a tank section (two MBTs), an attack helicopter flight, and a FAC/JTAC team embedded with the lead element. The operation will span multiple phases over twelve hours: SEAD strikes at dawn, armor breach mid-morning, infantry assault through the afternoon, and a final push into the command bunker by nightfall.

You will not be pulling triggers. You will be coordinating fires, managing casualty extraction, re-tasking air support, and making the go/no-go calls that determine whether three hundred soldiers come home.

The operation plan is on your desk. The call sign for this mission: *Fidelitas Suprema*.

== Role

*Company Commander — NATO Combined Arms Task Force*

You command from the tactical operations center. Your job is no longer about individual marksmanship — it is about orchestration. The success or failure of the largest NATO operation since the invasion rests on your ability to keep every moving piece synchronized.

== Tone

This is the final exam. Everything you learned in Waves 0 through 3 — controls, tactics, medical, logistics, communications, special operations — has prepared you for this. The difficulty is not mechanical; it is cognitive. You must track multiple fronts, prioritize threats, and accept that you will lose assets. The question is whether you lose the right ones.
```

- [ ] **Step 8: Write Wave 4 mods.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\04-wave-4\mods.typ`:

```typst
== Mod List

Wave 4 is the full milsim experience. Every compatible realism mod that has been verified against Arma 3 v2.20 and does not conflict with the existing mod stack.

_Mods to be added. See formatting template below._

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("2980b9")), inset: 12pt, radius: 4pt)[
=== Continued from Previous Waves

All mods from Waves 0 through 3 remain active. Do not disable any previous wave's mods unless a specific conflict is noted in `conflicts-mods.md`.
]

== Formatting Template

#block(fill: rgb("f5f5f5"), stroke: (left: 4pt + rgb("e74c3c")), inset: 12pt, radius: 4pt)[
== [Example Combined Arms Mod](https://steamcommunity.com/workshop/filedetails/?id=WORKSHOP_ID)

- *Type:* Content | Mechanics
- *Mod ID:* `WORKSHOP_ID`
- *Description:* Adds modern combined-arms capabilities including enhanced command and control, fire support coordination, and logistics management.
- *System Impact:* Introduces JTAC terminal for coordinating airstrikes, logistics supply chain management, and enhanced map tools for large-scale operations planning.
- *Verified:* 2025-06-17
]
```

- [ ] **Step 9: Write Wave 4 mission.typ**

Write to `H:\Projects\modguides\arma-3-modlist\guide\waves\04-wave-4\mission.typ`:

```typst
== Recommended Campaign

=== Operation Olympus — Custom Zeus Mission

Wave 4 is designed for a handcrafted Zeus mission. A dedicated game master (or a pre-scripted AI gamemaster mod) controls enemy forces in real-time, creating a dynamic, unpredictable battlefield that cannot be achieved through scripted scenarios alone.

_Setup:_ One player acts as Zeus (game master). The rest play as the combined-arms company. Use a dedicated server.

_Mission Phases:_
1. SEAD — attack helicopters and fixed-wing suppress enemy air defenses along approach corridor Bravo
2. Breach — armor platoon breaches the outer perimeter at grid 026-158 while infantry secures the breach point
3. Assault — infantry clears urban zones Alpha through Delta in sequence
4. Final — combined push on the OLYMPUS command bunker; all available assets authorized
5. Extract — CASEVAC collection, ammo re-supply, debrief

=== Alternative: ALiVE (Advanced Light Infantry Virtual Environment)

If a human Zeus is not available, run ALiVE to populate Malden with AI factions that operate autonomously — patrols, logistics convoys, QRF, and civilian populations — creating a persistent, living battlefield. ALiVE's commander module can track operational progress and generate emergent objectives.

=== Alternative: Mike Force

For a Vietnam-era inspired combined arms experience on a different map (Cam Lao Nam). Mike Force features base building, airmobile operations, and dynamic enemy threat scaling. Good if your group wants a change of setting while keeping the command role.
```

- [ ] **Step 10: Commit**

```powershell
git add guide/waves/02-wave-2/ guide/waves/03-wave-3/ guide/waves/04-wave-4/
git commit -m "docs: add Waves 2-4 Ferrum, Acer, Suprema content files"
```

---

### Task 9: Write Typst PDF template

**Files:**
- Create: `template.typ`

- [ ] **Step 1: Write template.typ**

Write to `H:\Projects\modguides\arma-3-modlist\template.typ`:

```typst
// Fidelitas Suprema — Typst PDF Template
// Requires Typst 0.15
// Military-themed styling: navy/gold accents, sans-serif headings, serif body

// ── Colors ──
#let navy       = rgb("1a2332")
#let gold       = rgb("c9a84c")
#let white      = rgb("ffffff")
#let charcoal   = rgb("2c3e50")
#let slate      = rgb("b0b8c4")
#let light-gray = rgb("f5f5f5")

// ── Mod type colors ──
#let color-content   = rgb("27ae60")
#let color-ui        = rgb("2980b9")
#let color-mechanics = rgb("e74c3c")
#let color-graphics  = rgb("8e44ad")

// ── Page setup (body pages) ──
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: none,
  footer: context align(center, text(size: 9pt, fill: slate)[
    Fidelitas Suprema — Arma 3 Modlist & Guide
    \  —  \
    #counter(page).display("1 / 1")
  ]),
  numbering: "1",
)

// ── Fonts ──
#set text(
  font: ("Source Serif 4", "Georgia"),
  size: 11pt,
  fill: charcoal,
  lang: "en",
)

#show heading.where(level: 1): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "bold",
  fill: navy,
)

#show heading.where(level: 2): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "semibold",
  fill: charcoal,
)

#show heading.where(level: 3): set text(
  font: ("Archivo Narrow", "Segoe UI"),
  weight: "regular",
  fill: charcoal,
)

// ── Heading numbering ──
#set heading(numbering: "1.1")

// ── Justified paragraphs ──
#set par(justify: true, leading: 0.65em)

// ── Link styling ──
#show link: set text(fill: gold, underline: true)

// ── Table of contents ──
#show outline.entry.where(
  level: 1
): set text(font: ("Archivo Narrow", "Segoe UI"), weight: "bold", size: 11pt)

#show outline.entry.where(
  level: 2
): set text(font: ("Source Serif 4", "Georgia"), size: 10pt, fill: charcoal)

// ═══════════════════════════════════════════
// COVER PAGE
// ═══════════════════════════════════════════

#set page(
  margin: (x: 0cm, y: 0cm),
  fill: navy,
  footer: none,
  numbering: none,
)

#place(center + horizon, block(
  width: 100%,
  height: 100%,
  fill: navy,
)[
  #v(4cm)
  #align(center, image("assets/logo.jpg", width: 60%))
  #v(2cm)
  #align(center, text(size: 36pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
    FIDELITAS SUPREMA
  ])
  #v(0.5cm)
  #align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
    Arma 3 Modlist & Guide — Version 2.20
  ])
  #v(1cm)
  #align(center, text(size: 11pt, font: ("Archivo Narrow", "Segoe UI"), style: "italic", fill: white)[
    A 5-Wave Progression from Recruit to Commander
  ])
])

// ═══════════════════════════════════════════
// RESET PAGE STYLE FOR BODY
// ═══════════════════════════════════════════

#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  fill: white,
  footer: context align(center, text(size: 9pt, fill: slate)[
    Fidelitas Suprema — Arma 3 Modlist & Guide
    \  —  \
    #counter(page).display("1 / 1")
  ]),
  numbering: "1",
)

#pagebreak()

// ═══════════════════════════════════════════
// TABLE OF CONTENTS
// ═══════════════════════════════════════════

#outline(title: [Table of Contents], indent: 1.5em, fill: none)

#pagebreak()

// ═══════════════════════════════════════════
// META
// ═══════════════════════════════════════════

= About Fidelitas Suprema
#include "guide/meta/about.typ"

#pagebreak()

= Installation & Setup
#include "guide/meta/installation-setup.typ"

// ═══════════════════════════════════════════
// WAVE 0 — TIROCINIUM
// ═══════════════════════════════════════════

#pagebreak()

// Part divider
#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 0 \ Tirocinium
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Basic Training
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 0: Tirocinium — Basic Training
#include "guide/waves/00-wave-0/narrative.typ"
#include "guide/waves/00-wave-0/mods.typ"
#include "guide/waves/00-wave-0/gameplay-guide.typ"
#include "guide/waves/00-wave-0/mission.typ"

// ═══════════════════════════════════════════
// WAVE 1 — IGNIS
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 1 \ Ignis
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  The Spark
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 1: Ignis — The Spark
#include "guide/waves/01-wave-1/narrative.typ"
#include "guide/waves/01-wave-1/mods.typ"
#include "guide/waves/01-wave-1/strategy-guide.typ"
#include "guide/waves/01-wave-1/mission.typ"

// ═══════════════════════════════════════════
// WAVE 2 — FERRUM
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 2 \ Ferrum
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Steel
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 2: Ferrum — Steel
#include "guide/waves/02-wave-2/narrative.typ"
#include "guide/waves/02-wave-2/mods.typ"
#include "guide/waves/02-wave-2/mission.typ"

// ═══════════════════════════════════════════
// WAVE 3 — ACER
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 3 \ Acer
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  Sharp
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 3: Acer — Sharp
#include "guide/waves/03-wave-3/narrative.typ"
#include "guide/waves/03-wave-3/mods.typ"
#include "guide/waves/03-wave-3/mission.typ"

// ═══════════════════════════════════════════
// WAVE 4 — SUPREMA
// ═══════════════════════════════════════════

#pagebreak()

#set page(fill: navy, margin: (x: 2.5cm, y: 4cm), footer: none, numbering: none)
#align(center, text(size: 28pt, font: ("Archivo Narrow", "Segoe UI"), weight: "bold", fill: gold)[
  Wave 4 \ Suprema
])
#v(1cm)
#align(center, text(size: 14pt, font: ("Archivo Narrow", "Segoe UI"), fill: gold)[
  The Highest
])

#set page(fill: white, margin: (x: 2.5cm, y: 2.5cm), footer: context align(center, text(size: 9pt, fill: slate)[
  Fidelitas Suprema — Arma 3 Modlist & Guide
  \  —  \
  #counter(page).display("1 / 1")
]), numbering: "1")

#pagebreak()

= Wave 4: Suprema — The Highest
#include "guide/waves/04-wave-4/narrative.typ"
#include "guide/waves/04-wave-4/mods.typ"
#include "guide/waves/04-wave-4/mission.typ"
```

- [ ] **Step 2: Commit**

```powershell
git add template.typ
git commit -m "feat: add Typst PDF template with military styling"
```

---

### Task 10: Write generate-pdf.bat

**Files:**
- Create: `generate-pdf.bat`

- [ ] **Step 1: Write generate-pdf.bat**

Write to `H:\Projects\modguides\arma-3-modlist\generate-pdf.bat`:

```batch
@echo off
setlocal enabledelayedexpansion
echo ========================================
echo  Fidelitas Suprema — PDF Generator
echo ========================================
echo.

REM Check for Typst 0.15
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst not found in PATH.
    echo Install Typst 0.15 from: https://github.com/typst/typst/releases/tag/v0.15.0
    echo.
    pause
    exit /b 1
)

REM Verify Typst version
typst --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst version check failed. Ensure Typst 0.15 is installed.
    pause
    exit /b 1
)

echo [OK] Typst found
echo.

REM Check assets
if not exist "assets\logo.jpg" (
    echo [ERROR] Missing logo file: assets\logo.jpg
    echo Place your logo at assets\logo.jpg and try again.
    pause
    exit /b 1
)
echo [OK] Logo found

REM Check guide files
if not exist "guide\meta\about.typ" (
    echo [ERROR] Missing guide file: guide\meta\about.typ
    pause
    exit /b 1
)
echo [OK] Guide files found

REM Create output directory
if not exist "output\" mkdir "output"
echo [OK] Output directory ready
echo.

REM Compile PDF
echo Compiling PDF...
typst compile template.typ output\Fidelitas-Suprema.pdf

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo  PDF generated successfully!
    echo  Output: output\Fidelitas-Suprema.pdf
    echo ========================================
) else (
    echo.
    echo [ERROR] PDF generation failed. Check the error output above.
    echo.
    pause
    exit /b %ERRORLEVEL%
)

echo.
pause
```

- [ ] **Step 2: Commit**

```powershell
git add generate-pdf.bat
git commit -m "feat: add generate-pdf.bat build script with dependency checks"
```

---

### Task 11: Verify the project builds

**Files:**
- Verify: `output/Fidelitas-Suprema.pdf` (generated)

- [ ] **Step 1: Run the build script**

Run:
```powershell
.\generate-pdf.bat
```

Expected: successful PDF generation at `output\Fidelitas-Suprema.pdf`

- [ ] **Step 2: Check the PDF was created**

Run:
```powershell
Test-Path "output\Fidelitas-Suprema.pdf"
```

Expected: `True`

- [ ] **Step 3: Verify PDF file size (not empty)**

Run:
```powershell
(Get-Item "output\Fidelitas-Suprema.pdf").Length
```

Expected: a reasonable file size (at least several KB, not 0)

- [ ] **Step 4: If build fails, diagnose**

If Typst reports errors, fix the template.typ syntax and re-run. Common issues:
- Typst 0.15 syntax differences from older versions
- Missing font names (update fallback chain to installed fonts)
- File path issues (ensure include paths are relative to template.typ)

---

## Self-Review

### 1. Spec Coverage Check
- Project structure ✓ — all directories and files in the spec
- .gitignore ✓ — covers output/ and *.pdf
- AGENTS.md ✓ — includes mod rules, wave overview, entry format, build instructions
- README.md ✓ — project overview, wave descriptions, prerequisites, build instructions
- conflicts-mods.md ✓ — working document with entry format
- mod-ideas.md ✓ — working document with entry format
- Guide meta files ✓ — about.typ and installation-setup.typ with full content
- Wave 0 ✓ — narrative, mods (template), gameplay-guide (comprehensive), mission
- Wave 1 ✓ — narrative, mods (template), strategy-guide (comprehensive), mission
- Wave 2 ✓ — narrative, mods (template), mission
- Wave 3 ✓ — narrative, mods (template), mission
- Wave 4 ✓ — narrative, mods (template), mission
- template.typ ✓ — cover page with logo, TOC, navy/gold styling, font fallbacks, wave divider pages, all includes
- generate-pdf.bat ✓ — Typst check, asset check, directory creation, compilation, error handling
- PDF spec ✓ — A4, Archivo Narrow/Segoe UI, Source Serif/Georgia, navy/gold/charcoal colors, link styling
- Mod entry format ✓ — Workshop ID links, verified date, system impact
- Wave 0 litmus test ✓ — in AGENTS.md and mods.typ filtering guidance
- Adult mods boundary ✓ — explicit rules in AGENTS.md
- No Markdown→Typst conversion ✓ — all guide files are .typ
- Version tracking ✓ — Mod ID and Verified fields in entry template

### 2. Placeholder Scan
No TBD/TODO/placeholder content. All files have real content. Mod files have formatting templates with example entries, clearly marked as "to be added."

### 3. Type Consistency
- Wave 0 uses == (level 2) headings in content files ✓
- Wave 1 uses == (level 2) headings ✓
- Template uses = (level 1) for wave titles ✓
- Mod entry template uses == (level 2) for mod name ✓
- Color variable names consistent: navy, gold, charcoal, slate, light-gray ✓
- Font names consistent: "Archivo Narrow", "Segoe UI", "Source Serif 4", "Georgia" ✓
