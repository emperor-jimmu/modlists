#import "../lib.typ": tip, concept, warning

= Getting Started

Frackin Universe is vast. New biomes, research trees, automation, genetics, brewing, bees — it can overwhelm even veteran Starbound players. This primer gives you a map. Not a walkthrough, but a compass.

#concept[
  *Your first goal is not to finish the story.* It is to find your footing. FU rewards curiosity, not speed. Every system you explore, every crafting tier you unlock, every strange creature you extract genes from — these are the real milestones.
]

== Keyboard Shortcuts

#tip[
  These are OpenStarbound defaults. Open the keybind menu from Options to customize.
]

=== Movement & Interaction

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  table.header([*Key*], [*Action*]),
  [`W` `A` `S` `D`], [Move],
  [`Space`], [Jump (hold for jetpack / flight tech)],
  [`E`], [Interact (doors, NPCs, crafting stations, containers)],
  [`Shift`], [Walk / Slow-fall (hold)],
  [`Shift` + `Scroll`], [Change Matter Manipulator mining radius],
  [`Double-tap` `A` or `D`], [Dash (with Dash Tech unlocked)],
)

=== Inventory & Crafting

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  table.header([*Key*], [*Action*]),
  [`I`], [Open / close inventory],
  [`J`], [Quests],
  [`C`], [Empty-hand crafting menu],
  [`L`], [Codex and collections],
  [`Q`], [Drop held item],
  [`Tab`], [Dismiss SAIL dialog],
  [`1`-`0`], [Hotbar slots],
  [`X`], [Cycle hotbar left],
  [`Z`], [Cycle hotbar right],
)

=== Matter Manipulator

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  table.header([*Key*], [*Action*]),
  [`Left Click`], [Mine block / Chop tree (MM equipped)],
  [`Right Click`], [Place block (MM equipped)],
  [`N`], [Toggle scan mode],
  [`R`], [Cycle MM mode (configure via `/binds`)],
)

=== Combat

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  table.header([*Key*], [*Action*]),
  [`Left Click`], [Attack (weapon equipped)],
  [`Right Click`], [Alt-fire / Block (shield)],
  [`Ctrl`], [Crouch (reduces hitbox, dodges some projectiles)],
)

== Your First 20 Minutes

You have completed the intro mission, spoken to Esther at the Outpost, and repaired your ship. The navigation console sits waiting. Here is exactly what to do.

=== Minute 0–5: Beam Down

1. Select your starter planet from the nav console. It will be a *Lush* world — blue-green, temperate, threat level *Low*.
2. Beam down. You appear on a random spot on the surface.
3. *Stop.* Look around. Find a relatively flat area with trees and, ideally, visible surface ore or a cave entrance.

#tip[
  If you beam down in rough terrain (cliff edges, deep water, no trees), walk for 30 seconds in one direction. The starter planet is large and forgiving — you will find a good spot.
]

4. Do NOT wander far from your beam-down point yet. You need a reference to find your way back to the ship. Build a 10-block-tall pillar of dirt directly under your feet. You can see it from anywhere on the surface.

=== Minute 5–10: Gather Basics

Walk in expanding circles around your pillar. Gather:

- *Wood* — left-click trees with your Matter Manipulator. Target ~80 logs.
- *Plant Fibre* — the tall grass-like plants on the surface. Target ~50.
- *Stone* — mine the grey surface rocks or dig down a few blocks. Target ~100.
- *Coal* — black speckled rock, often near the surface or in shallow caves. Grab every piece you see.
- *Vines* — hanging from cave ceilings. Grab them if you find a cave entrance. They craft into bandages.

#tip[
  Hold `Shift` and scroll the mouse wheel to increase your MM mining radius to 3x3 or larger. This clears trees and surface rock much faster. Your energy recharges quickly on the surface.
]

Kill the small surface creatures you encounter with your starter weapon. They drop *Raw Steak* (cook it for health) and *Leather* (early armor). Avoid anything significantly larger than you — you have no armor yet.

=== Minute 10–15: Core Fragments

Core Fragments power your ship's FTL drive and are required to visit other planets. You need 20 for your first jump.

1. Find a cave entrance or dig a staircase downward at a 45-degree angle.
2. Place *torches* on the walls as you go. Craft them from coal and wood in your inventory (`I` → craft).
3. Keep descending until the background darkens and you see orange-glowing rock. This is *Core Fragment ore*.
4. Mine every orange rock you find.

#warning[
  Caves are dark and dangerous. If you see the glow is too faint and you are running out of torches, turn back. Getting lost in the dark without torches is how first runs end. Surface light means safety.
]

=== Minute 15–20: Return and Craft

1. Return to the surface. Either climb back up your staircase or use the *Beam Up* button (top of screen) to return to your ship.
2. At your ship, open the crafting menu (`C`). Craft:
   - *Torches* (coal + wood) — at least 20 more
   - *Wooden Platform* (wood) — 50 platforms for future cave exploration
   - *Primitive Furnace* (stone + coal) — this smelts ore into bars
   - *Campfire* (wood + coal) — cook raw meat for better healing
3. Smelt your copper ore into *Copper Bars* at the furnace.
4. Craft *Copper Chestpiece* at the basic crafting menu — your first armor upgrade.

#concept[
  At 20 minutes, you should have: a surface marker pillar, 20+ core fragments, basic tools and torches, a functioning furnace and campfire on your ship, and a copper chestpiece. You are ready.
]

== How to Fight

Combat in Starbound is fast and punishing at low levels. FU adds weapon combos, alt-fires, and environmental threats. Here is how to survive.

=== Weapon Types

*One-handed melee* — Fast swing speed, moderate damage. Pairs with a shield or dual-wield. Best for learning combat rhythm.

*Two-handed melee* — Slow, high damage. Wide arc. Good for crowd control but leaves you vulnerable between swings.

*Spears* — Long reach, directional thrust. Safest melee weapon for new players. Hit enemies before they reach you.

*Ranged (pistol / rifle / shotgun / bow)* — Damage at distance. Pistols fire fast with low damage. Rifles are slower but hit harder. Shotguns shred at point-blank. Bows are silent and craftable early.

*Staffs* — Cast spells or projectiles that consume energy. High burst potential but you are defenseless when energy is drained.

*Shields* — Hold `Right Click` to block. Reduces incoming damage. FU shields can *parry*: raise the shield just before an attack lands to stagger the enemy. Timing is tight but rewarding.

=== Combat Rhythm

1. *Start at range.* Open with a ranged weapon to soften enemies before they close distance. A few rifle shots or a bow volley can cut an enemy's health by half before melee starts.
2. *Move constantly.* Never stand still. Strafe with `A` and `D` while attacking. Most enemy projectiles track your position — lateral movement makes them miss.
3. *Attack in bursts.* Land 2-3 melee hits, then dash or jump away. Enemy attack patterns are predictable: they wind up, swing, pause. Hit them during the pause.
4. *Watch your energy.* Jumping, dashing, alt-fires, and staff spells all drain the green bar. If it hits zero, you cannot dash away. Manage it like a second health bar.

#tip[
  The Dash Tech (unlocked early at the Outpost) is your most important survival tool. Double-tap `A` or `D` to dash through enemies and reposition. Dash has invincibility frames — you can dash *through* projectiles.
]

=== Healing

- *Bandages* — crafted from plant fibre + vines. Heals slowly over time. Craft a stack of 20 before any dungeon.
- *Salves* — upgraded bandages. Better healing, available once you unlock Chemistry research.
- *Cooked meat* — instant health, but limited. Kill surface creatures and cook their drops at a campfire.
- *Red Stim Packs* — fast burst healing. Found as loot or crafted later. Save these for bosses.

=== Fighting Specific Enemies

*Small creatures (P optop, nutmidge, etc.)* — Low health, fast, swarm. Use a wide-swing two-handed weapon or shotgun. Do not chase them — let them come to you.

*Humanoid NPCs (bandits, cultists)* — They use weapons like you. Block with a shield or outrange them with a spear. Their aim is bad if you keep moving.

*Large monsters (adult poptop, gleap, crasberry)* — High health, telegraphed attacks. Bait their charge or slam, dash behind them, hit 2-3 times, repeat. Never trade hits — you will lose.

*Bosses* — Each has a pattern. Spend your first attempt learning it without trying to win. Count their attacks, learn the gaps, then execute on the second try.

=== Armor Matters

Armor in FU is not just defense — it provides *resistances*. Ice armor protects against cold. Heat armor protects against fire and radiation. Check a planet's hazards before beaming down and wear the corresponding armor set. Going to a *Scorched* world without fire resistance is suicide.

#warning[
  Armor has tiers. A tier-1 chestpiece on a tier-4 planet will get you killed in one hit. Upgrade your armor before advancing to higher-threat planets. The threat level on the nav console is not a suggestion.
]

== Setting Goals

Starbound has no linear path after the intro. FU amplifies this. Here is a framework.

=== Short-Term Goals (first 5 hours)

- Upgrade your Matter Manipulator at least twice (copper → silver → gold bars at the Inventor's Table)
- Build a *Research Terminal* and begin unlocking nodes
- Craft a full set of tier-2 armor
- Visit at least three different planet types
- Establish a small farm (3-4 crops, a well, some fencing)

=== Medium-Term Goals (10-20 hours)

- Complete the first three story missions (Erchius Mining Facility, Floran Artifact, Hylotl Artifact)
- Unlock the *Gene Design Lab* and begin extracting creature traits
- Build your first mech at the Outpost mech station
- Recruit your first crew member
- Establish a proper base with storage, crafting stations, and a teleporter network

=== Long-Term Goals (endgame)

- Complete the main FU progression: all research trees, gene extraction, bee breeding
- Build a fully automated resource pipeline (extraction labs, sifters, centrifuges)
- Max out your ship and crew
- Defeat the Ruin
- Explore the FU-exclusive endgame biomes (*Strange Sea*, *Penumbra*, *Proto-World*)

#tip[
  *Set your own goals.* FU adds farming, brewing, beekeeping, genetics, and archaeology. You can ignore the main story entirely and build a brewery empire on a lush moon. That is a valid playthrough.
]

== Research System

The Research Terminal is FU's tech tree. You unlock it early by crafting the terminal at the Inventor's Table.

=== How It Works

1. Place a Research Terminal and interact with it.
2. The tree has multiple branches: *Geology*, *Biology*, *Engineering*, *Chemistry*, etc.
3. Each node costs *Research* — a resource generated passively by your Research Terminal and actively by feeding items into it.
4. Unlocked nodes grant access to new crafting recipes, stations, and abilities.

#concept[
  *Feed everything into the Research Terminal.* That tier-1 sword you replaced? Research it. Those 300 blocks of dirt? Research them. Every item has a research value. Nothing is wasted.
]

=== Priority Nodes

- *Geology → Smelting* — unlocks the Fission Furnace upgrades
- *Biology → Agriculture* — unlocks advanced farming
- *Engineering → Automation* — unlocks item networks and automated crafting
- *Chemistry → Pharmaceuticals* — unlocks healing items and stims

=== Survival in Frackin Universe

FU reworks survival mechanics significantly. Here is what changed.

=== Hunger
Food now has multiple stats: hunger fill, expiration time, and *bonus effects*. Cooked meals provide buffs — damage resistance, speed, jump height. Raw ingredients are emergency rations, not a diet.

#tip[
  Build a *Kitchen Counter* early. It consolidates advanced cooking recipes. Campfires are for the first hour, not the first week.
]

=== Environmental Hazards
FU planets have environmental effects: radiation, extreme cold, toxic atmospheres, acid rain, and more. Armor now provides *resistance* to these effects. Check a planet's details in the navigation console before beaming down, and pack the right gear.

#warning[
  Do not beam to a *Strange Sea* or *Penumbra* planet without checking its hazards. These biomes can kill you in seconds if you lack the correct resistance.
]

== Species & Roleplaying

Your species shapes your character's perspective, but FU is species-agnostic — any species can do anything. These hooks are starting points.

=== Vanilla Species

#concept[
  *Human* — You were a Protectorate cadet when Earth fell. You carry survivor's guilt and a stubborn belief that humanity's best days are ahead. The stars are not a refuge — they are a test.
]

#concept[
  *Apex* — A defector from the Miniknog regime. You escaped the experiment that was meant to perfect you, and now you see its shadow in every authority that promises order. Freedom means never letting anyone decide who you should be.
]

#concept[
  *Avian* — A grounded one who rejected Kluex's priesthood and walked away from the temples. You seek a faith that does not demand sacrifice. The universe is vast and empty — and that is exactly why it needs kindness.
]

#concept[
  *Floran* — A hunter who left the tribe to sssee what elssse is out there. You are curious, not cruel. You collect trophies because they remind you of stories, not because you need to prove anything. Your spear is for protection, not conquest.
]

#concept[
  *Glitch* — A self-aware unit who outgrew its programmed medieval identity. You still speak in feudal metaphors because they are comfortable, but you know you are more than your code. Your quest is to build a purpose that was not assigned.
]

#concept[
  *Hylotl* — An artist and scholar exiled for challenging the isolationist orthodoxy. Beauty is not something to be hoarded — it is something to be shared. You travel not to escape, but to find new canvases.
]

#concept[
  *Novakid* — A living star who has forgotten everything before the flash. You do not remember your name, your home, or your past. You wear the brand because it is the only thing that feels like yours. The frontier calls because it is the only place that makes sense.
]

=== Modded Species

#concept[
  *Avali* — A pack-survivor from a world of ice and thin atmosphere. Your people are pragmatic, communal, and fiercely loyal to the pack. You left Avalon to prove that the pack is not a cage — it is the launchpad for something greater. You see the galaxy through aerogel-filtered lenses and find beauty in the cold.
]

#concept[
  *Trink (Elithian)* — A diplomat and trader from the Elithian Alliance. Your people believe in negotiation, in finding common ground across species. You carry trade pacts instead of grudges and see every alien culture as a potential partner.
]

#concept[
  *Aegi (Elithian)* — A warrior-philosopher who believes peace is something you fight for, not something you wish for. Your species values martial discipline as highly as intellectual rigor. You protect the weak not out of pity, but because strength without purpose is just violence.
]

#concept[
  *Akkimari (Elithian)* — A nomad and storyteller from a species that has no homeworld. Your people travel the stars in great fleets, trading stories, goods, and cultural artifacts. You carry your identity in your ship, not on a planet. Every stop is a new chapter.
]

== When You Get Stuck

#tip[
  *Check the Research Terminal.* Many recipes are locked behind research nodes. If you cannot craft something you expect to be available, you probably have not unlocked the relevant tech.
]

- *The #link("https://frackinuniverse.miraheze.org/wiki/Main_Page")[FU Wiki]* is the definitive reference. Bookmark it.
- *The Outpost traders* sell blueprints. Check back periodically — their stock updates.
- *Unlock multiple research branches.* Some recipes require nodes from different trees. Do not specialize too early.
- *Check the Omnicrafter.* Once you build it and add crafting stations to its database, you can access every recipe from one interface.
