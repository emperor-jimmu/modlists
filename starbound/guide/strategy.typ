#import "../lib.typ": tip, concept, warning

= Strategy

You have beaten the Ruin. You have built bases, recruited crew, and stared down bosses that made your first Lush planet feel like a distant memory. This chapter is for what comes next — optimisation, synergy, and mastery.

#concept[
  Strategy is not about playing harder. It is about playing smarter. Every section below answers the same question: given that you have limited time, energy, and inventory space, what is the most efficient path to what you want?
]

== Planet Farming & Resource Efficiency

Time is your scarcest resource. Walking across a planet costs minutes. Beaming to the wrong planet costs an FTL jump and fuel. Efficient routing compounds over a hundred hours.

=== Threat Tiers: What to Farm Where

#table(
  columns: (auto, 1fr, 1fr),
  inset: 6pt,
  table.header([*Tier*], [*Example Planets*], [*Key Resources*]),
  [Low], [Lush, Forest, Desert], [Iron, Copper, Coal, Wood, Food],
  [Moderate], [Ocean, Savannah, Jungle], [Titanium, Silver, Gold, Oil],
  [Risky], [Volcanic, Scorched, Irradiated], [Durasteel, Solarium, Tungsten],
  [Dangerous], [Strange Sea, Penumbra, Proto-World], [Endgame FU materials, rare genes],
)

#tip[
  Always carry a flag. Plant it at your mining site before descending. If you die, you beam back to your ship — the flag lets you teleport directly back to your corpse and your gear. Flags cost 1 copper bar and 20 plant fibre. There is no excuse for not carrying one.
]

=== The 20-Minute Mining Run

Aim for short, focused trips:

1. Beam to a planet with your target resource. Check the nav console for planet info — MPI (More Planet Info) will tell you what materials are present.
2. Descend to the cave layer. Surface ore is sparse; cave ore is dense.
3. Mine in a straight horizontal line at a depth where you see the material you want. Zigzagging wastes time.
4. Return to the surface when your inventory is full or your torches run low. Do not push deeper — a greedy miner is a dead miner.
5. Beam up, empty your inventory into labelled containers, and immediately redeploy for another run. Momentum is everything.

=== Research-as-You-Mine

Your Research Terminal generates passive research, but feeding items into it is faster. Every excess ore stack, every duplicate weapon, every block of dirt — feed it. The research unlocks are more valuable than the pixel value of vendoring trash.

#tip[
  Build a Research Terminal on your ship. After every mining run, dump everything you do not need into it before sorting the rest. Two minutes of feeding items can unlock a node that saves you hours.
]

=== FU Resource Refinement

Raw ore is inefficient. FU adds refinement chains:

- *Sifters* process blocks into ores and gems. Dump your excess cobblestone and dirt here.
- *Extraction Labs* refine ores into higher-yield forms. One titanium bar becomes three titanium rods.
- *Centrifuges* separate liquids into components. Lava becomes core fragments, sulfur, and volatiles.

Set up a small processing station on your ship or base with a sifter, extractor, and centrifuge in a line. Feed raw materials in one end, get refined resources out the other.

== Faction Dynamics

Factions in Starbound are not just lore — they determine which NPCs are hostile, which traders will deal with you, and which quests are available.

=== The Major Players

*Protectorate* — Your default faction. Neutral to most. Completing story missions improves your standing with outpost NPCs and unlocks new vendors.

*Apex Miniknog* — Hostile totalitarian regime. Miniknog dungeons are high-risk, high-reward. With Miniknog Rearmed installed, their soldiers have distinctive white armor and plasma weapons — visually recognisable at a distance. Do not engage without tier-3+ gear.

*Floran Tribes* — Largely neutral but territorial. Floran villages are safe. Floran hunting parties in the wild may attack if you linger near their camps.

*Avian Grounded / Stargazers* — The Grounded are friendly traders and quest-givers. The Stargazers are hostile temple guardians. Temples contain valuable loot but every room is trapped.

*Human Bandits* — Hostile everywhere. Camps appear on most planet types. Low-tier loot but good for early weapon farming.

*Hylotl* — Peaceful. Villages are safe zones with high-tier furniture to scan for your Pixel Printer.

=== FU-Added Factions

FU adds multiple new factions tied to biomes and dungeons. The general rule: if it has a nameplate and a weapon, it is hostile until proven otherwise. Read the nav console planet description — it will often warn you if a planet is faction-occupied.

#tip[
  Universal Wardrobe lets you save cosmetic outfits. If you need to roleplay your way through a faction encounter — dress like them. Some modded NPCs react to what you wear.
]

=== Reputation in Practice

Vanilla Starbound does not have a formal reputation system, but NPC behaviour follows predictable rules:

- *Villages* are always safe unless you attack first.
- *Dungeons* are always hostile.
- *Traders* sell better stock after story milestones. Check the Outpost traders after every major quest completion.
- *Crew recruits* require you to complete a quest for them first. The quest type varies by species and profession.

== Crew Composition & Synergies

=== Why Crew Matters

Crew members are not cosmetic. They provide passive bonuses, assist in combat, and can be assigned to specific roles on your ship. A well-composed crew is a force multiplier.

=== Roles and Bonuses

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  table.header([*Role*], [*Uniform*], [*Bonus*]),
  [Soldier], [Combat armor], [Increases ship weapon damage and assists in ground combat],
  [Engineer], [Orange jumpsuit], [Increases ship fuel efficiency and travel speed],
  [Medic], [White coat], [Passive health regeneration on ship],
  [Janitor], [Grey uniform], [Slightly increases all other crew bonuses — the unsung hero],
  [Tailor], [Apron], [Unlocks cosmetic clothing options and improves outfit stats],
  [Mechanic], [Green vest], [Increases mech durability and repair speed],
  [Chemist], [Lab coat], [Reduces crafting costs for stims and medical supplies],
)

#concept[
  Better Crew (mod installed) improves crew AI significantly. Crew members will use cover, switch weapons based on range, and avoid standing in environmental hazards. They feel like actual teammates rather than follower NPCs.
]

=== Recruitment Strategy

1. *Merchant ships* — Friendly space encounters often have recruitable NPCs. Check every friendly ship you encounter.
2. *Villages* — Complete quests for village NPCs. After 2-3 quests for the same village, someone will offer to join.
3. *Tenant system* — Build a colony, place colony deeds, and fulfill tenant quests. Tenants can become crew.
4. *Bounty hunting* — Some bounty targets can be recruited instead of killed.

=== Optimal Composition

- *Early game (1-2 crew):* 1 Soldier (combat support), 1 Engineer (fuel savings)
- *Mid game (3-4 crew):* Add a Medic (survival) and a second Soldier (ground team of 3)
- *Late game (5+ crew):* Add a Janitor (amplifies everyone), a Mechanic (mech support), and a Chemist (stims are cheap)

#tip[
  Crew members level up through combat. Take your Soldier crew on dangerous missions — they get stronger. A max-level Soldier hits harder than most tier-4 weapons.
]

== Base Building & Colony Management

=== Where to Build

Choosing a base planet is a permanent decision. You will invest dozens of hours here. Prioritise:

1. *Safety* — No hostile mob spawns near the surface. Lush, Forest, or Ocean planets are ideal.
2. *Flat terrain* — Building on a slope is a constant fight against gravity. Find a wide plateau or beach.
3. *Teleporter access* — Your base needs a teleporter. Place one at your Outpost, one at your base. Instant travel between them.
4. *Aesthetic* — You will look at this base for a hundred hours. Pick a planet whose sky colour and background you like.

#warning[
  Do not build your main base on a planet you plan to remove mods for. If a mod adds biome-specific blocks and you uninstall it, those blocks become Perfectly Generic Items. OpenStarbound mitigates this somewhat by preserving item data, but it is not a guarantee. Build with vanilla and FU blocks.
]

=== Base Layout Principles

- *Central hub:* One large room with your teleporter, main storage wall, and crafting stations. This is where you spend most of your time. Make it easy to navigate.
- *Storage wall:* Labelled containers in a grid. One container per material type (Ores, Bars, Organics, Weapons, Armor, Blocks, Seeds, Liquids). Enhanced Storage lets you name and colour-code containers — use it.
- *Crafting wing:* All crafting stations in one area, arranged by tier. Early-game stations near the entrance, endgame stations in the back.
- *Omnicrafter placement:* Your Omnicrafter should be in the central hub, adjacent to your storage wall. It consolidates all crafting station interfaces. You should be able to open storage on one side and craft on the other without moving.

=== Colony Basics

Colonies generate rent (pixels) and quests. Key mechanics:

1. Craft a *Colony Deed* at the Inventor's Table.
2. Place it in an enclosed room with a door, a light source, and at least one piece of furniture.
3. A tenant will arrive. Fulfill their quests to earn rewards and potentially recruit them.
4. Different furniture types attract different tenant professions. A kitchen counter attracts chefs. A lab table attracts chemists. Experiment.

#tip[
  Tenants pay rent in pixels. A colony of 10+ tenants on a high-tier planet generates passive income while you are out exploring. More Teleportz (mod installed) lets you place teleporters at your colony and outpost for instant tax collection.
]

== Boss Tactics & Loadout Optimisation

=== Universal Boss Rules

Every boss in Starbound follows the same design: telegraphed attack patterns, invulnerability phases, and an arena gimmick. The approach is always the same:

1. *Run 1 — Observe.* Do not try to win. Watch the boss for 2-3 full attack cycles. Count how many attacks, how long each wind-up takes, when the invulnerability phase triggers.
2. *Run 2 — Execute.* Use what you learned. Attack during the gaps. Use the arena gimmicks. Kill it.
3. *Run 3 — Farm.* Most bosses drop unique crafting materials. Kill them again for duplicate drops.

=== Weapon Type Matchups

- *Slow, large bosses (Erchius Horror, Ixodoom):* Use ranged weapons. Stay mobile. Their melee attacks one-shot low-tier armor. Rifles and rocket launchers let you damage them while dodging.
- *Fast, small bosses (Asra Nox, Kluex Avatar):* Use fast melee or shotguns. You cannot outrun them — you need to trade hits efficiently. Shields help. Parry timing is critical.
- *Summoner bosses (Bone Dragon, certain FU bosses):* Kill the adds first. The summons are the real threat. The boss itself is usually passive or slow until its minions are cleared.
- *Phase-shift bosses (The Ruin, FU endgame):* Each phase has different vulnerabilities. The Ruin's heart phase is immune to energy weapons but weak to physical. Carry two weapons of different damage types.

=== Consumable Preparation

#table(
  columns: (auto, 1fr),
  inset: 6pt,
  table.header([*Item*], [*Use*]),
  [Red Stim Pack], [Burst heal. Bring 10+ to any boss fight.],
  [Green Stim Pack], [Speed boost. Useful for dodging large AOE attacks.],
  [Blue Stim Pack], [Jump boost. Critical for aerial bosses and platform-heavy arenas.],
  [Bandages], [Slow heal over time. Use between phases.],
  [Nanowrap Bandages], [FU-upgraded bandages. Faster heal, higher cap.],
  [Combat Food], [Cooked meals with damage resistance and health buffs. Eat one before the fight.],
  [Spare Weapon], [Weapons break in FU. Carry a backup.],
)

#tip[
  Place a teleporter at the boss arena entrance before the fight. If you die, you beam directly back instead of running the entire dungeon again. This is the single highest-impact prep step you can take.
]

=== Armor and Resistance

Boss arenas often have environmental damage: lava pits, poison clouds, electrical floors. Wear armor that resists the arena hazard, not just the boss damage type. A fire-resistant chestpiece on the Ixodoom fight (which has lava pools) is more valuable than higher raw defense that leaves you burning.

=== The Teleporter Rule

Before every boss door, before every major dungeon descent, before every risky mining operation: *place a teleporter*. The materials are cheap. The time saved by not corpse-running is incalculable.

== Modded Mechanics Deep Dives

=== Omnicrafter Strategy

The Omnicrafter (installed) eliminates the need to run between crafting stations. Once you add a station to its database, you can access its recipes from anywhere the Omnicrafter is placed.

- *Database management:* Add every crafting station you build to the Omnicrafter immediately. Do not wait until you "need" it — by then you will have forgotten.
- *Ship placement:* Install the Wall-Mounted Omnicrafter (OSB) on your ship. Craft from orbit. This alone saves hours of beaming up and down to craft one item.
- *Station organisation:* Keep your physical crafting stations in your base for the Omnicrafter to reference, but craft through the Omnicrafter interface. You only need one of each station.

=== Enhanced Storage Automation

Enhanced Storage (installed) adds container sorting, naming, search, and quick-stack. With the OSB Cumulative Patch, every container in the game supports these features.

- *Name your containers.* "Ores — Tier 1," "Ores — Tier 2," "Weapons — Energy," "Weapons — Physical." You will thank yourself at hour 80.
- *Quick-stack:* Open a container and press the quick-stack button. All matching items in your inventory are deposited. No more dragging items one at a time.
- *Sort by category:* Set up container categories in Enhanced Storage's config. Items auto-sort to the correct container when quick-stacked.

=== BYOS — Build Your Own Ship

Frackin Universe includes BYOS functionality. The Universal BYOS Patcher (OSB, installed) ensures all BYOS mods work together.

- *Expand aggressively.* Ship space is a bottleneck. Upgrade your ship size as soon as you can afford it. A larger ship means more crafting stations, more storage, more crew quarters.
- *Crew quarters matter.* Crew members need beds assigned to them. Without a bed, they wander aimlessly. With Better Crew, assigned crew stay near their furniture — use this to position them near stations they service.
- *Ship security.* Some space encounters board your ship. Place turrets near the teleporter pad. Your crew will fight, but turrets are a force multiplier.

=== Research Terminal Optimisation

- *Feed systematically.* After every planet visit, feed everything you do not intend to use. Make this a habit, not an afterthought.
- *Focus branches.* Spreading research across all branches equally slows your progression. Pick one branch, max it to the next tier gate, then move to the next. Geology and Engineering have the highest return on investment early.
- *Passive research scales.* Higher-tier Research Terminals generate more passive research per minute. Upgrade your terminal as soon as the node unlocks.

=== RPG Progression: Dual System Strategy

This modlist runs two progression systems simultaneously: Frackin Universe's research-based tech tree and RPG Growth's experience-based character levels. They do not replace each other — they complement each other. Think of the research tree as your gear and capability gate, and RPG Growth as your personal power curve.

==== How They Interact

#table(
  columns: (auto, 1fr, 1fr),
  inset: 6pt,
  table.header([*System*], [*What It Controls*], [*How You Progress*]),
  [FU Research], [Crafting stations, armor tiers, weapon unlocks, automation, extraction, genes, bees, brewing], [Feed items into the Research Terminal. Complete research nodes to unlock new crafting recipes and capabilities.],
  [RPG Growth], [Base stats (STR, DEX, INT, etc.), class unlocks, class techs, Professions, Affinities, Specializations], [Kill monsters for XP orbs. Level up, allocate stat points via the Mysterious Book.],
)

#concept[
  FU determines what you can build. RPG Growth determines how strong you are when you use it. A tier-6 sword in the hands of a level-1 character deals base damage. The same sword on a level-40 character with points in STR and the correct class does 3× the damage. Do not neglect either system — they multiply each other.
]

==== FU + RPG Growth Balance Patches

This modlist includes patches that synchronise the two systems:

- *RPG Growth FU Recipe Balance* — adjusts RPG Growth crafting costs to match FU's economy. Without it, RPG Growth items may be trivially cheap or impossibly expensive relative to FU's material progression.
- *Pandora's Box RPG Growth EXP Patch* — recalibrates XP rates for FU's expanded bestiary. FU adds hundreds of new creatures across dozens of biomes. Without this patch, the sheer volume of enemies would either over-level you in the early game or under-reward you in the endgame.
- *RPG Growth Extended Levels* — extends the level cap. FU's content volume means you will hit the default level cap long before you finish exploring. This patch ensures there is always room to grow.

==== Stat Allocation Priorities

RPG Growth gives you 7 stats. Your priority depends on your class:

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  table.header([*Class*], [*Primary Stats*], [*Why*]),
  [Soldier / Brute], [STR > VIT], [You are in melee range. Every point of VIT is one more hit you can take before burning a stim. STR increases damage and knockback.],
  [Ranger / Gunslinger], [DEX > STR], [DEX increases ranged damage and reduces spread. At range, you dictate engagement distance — fewer points in VIT are acceptable.],
  [Mage / Caster], [INT > DEX], [INT scales spell damage and reduces energy costs. FU energy weapons and staves also benefit from INT. DEX keeps you mobile between casts.],
  [Explorer / Hybrid], [DEX > VIT], [You need mobility for traversing dangerous biomes and enough HP to survive environmental damage. Balanced but not specialised.],
  [Avali Mechanist], [INT > DEX], [Avali tech and aerogel weapons scale with INT. Fight at range with constructs and drones — DEX for positioning.],
)

#tip[
  Respect the respec. RPG Growth allows stat reallocation later. Experiment with a hybrid build for the first 20 levels while you learn which weapons and playstyle you prefer. Commit to a focused build once you know what works.
]

==== When to Focus on Each System

The two systems peak at different stages:

*Levels 1-20:* Prioritise FU research. Unlock your first extraction chain, a tier-2 armor set, and basic automation before worrying about stat optimisation. A tier-1 character with a tier-3 weapon out-damages a level-30 character with a tier-1 weapon. Gear gates are harder than level gates.

*Levels 20-40:* Both systems in parallel. Your research tree should be into tier 3-4 by now. Spend RPG Growth points to specialise your build. Pick your class and commit.

*Levels 40-60:* RPG Growth becomes the primary growth vector. Your research tree is deep; most key nodes are unlocked. Each level in RPG Growth now adds meaningful power to your established gear setup. Extended Levels ensures the curve continues past the default cap.

*Levels 60+:* Endgame synergy. Max your research, max your stats, optimise your class specialisation. This is where Affinities and Specializations from RPG Growth combine with FU's endgame gear to produce builds that trivialise tier-4 planets and make Proto-World survivable.

==== Race Traits + RPG Growth

Race Traits gives your species innate stat bonuses. These stack with RPG Growth stats:

- *Trink & Eld'uukhar:* Bonus INT — natural mages.
- *Saturnians:* Bonus DEX — natural rangers.
- *Avali:* Bonus DEX + INT — hybrid tech-fighters.
- *Sergal & Lucario:* Bonus STR — natural soldiers.
- *Humans & Novakids:* Balanced — no penalty, no bonus. The flexible choice.

#concept[
  Your race choice matters mechanically, not just cosmetically. A Saturnian Ranger will always out-perform a human Ranger at the same level because of the racial DEX bonus. If you min-max, match your race to your planned class before you spend your first stat point.
]

==== Combat XP Optimisation

XP orbs drop from kills. Maximising XP gain is a function of kill rate, not kill difficulty:

- *Farm in FU dungeons.* Packed enemy density means more kills per minute. Galactic Dungeons, Super Dungeon Pack, and Extra Dungeons all provide high-density combat zones.
- *AOE weapons scale XP.* Rocket launchers, grenades, and area-effect staves kill multiple enemies per shot. Each enemy drops its own XP orb. One rocket into a room of 5 creatures gives 5× the XP of a single-target kill.
- *Bosses are inefficient.* Boss XP rewards do not scale proportionally to the time investment. Farm trash mobs for levels; fight bosses for gear.
- *Do not die.* Death in RPG Growth carries an XP penalty. Play aggressive — but not careless. The penalty compounds over a long session.

#tip[
  The Pandora's Box EXP patch balances XP rates. If you feel you are levelling too fast or too slow, adjust the patch config — it is tunable. Do not suffer through bad XP pacing when the fix is a config edit away.
]

=== Environmental Resistance Gearing

FU planets have specific hazard types. You can see them in the nav console with MPI installed.

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  table.header([*Hazard*], [*Resistance*], [*Common Sources*]),
  [Cold], [Ice / Thermal armor], [Frozen, Tundra, Arctic planets],
  [Heat], [Fireproof armor], [Volcanic, Scorched, Magma planets],
  [Radiation], [Radiation shielding], [Irradiated, Alien, Strange Sea planets],
  [Acid], [Acid protection], [Toxic, Penumbra planets],
  [Suffocation], [Breathing EPP], [Moon, Asteroid, Proto-World (no atmosphere)],
)

#warning[
  FU environmental damage stacks. A Volcanic planet with acid rain deals both heat and acid damage. You need resistance to both. Check all hazards on the nav console, not just the first one.
]

=== Automated Resource Pipelines

Item Networks (unlocked via the Engineering research tree) let you automate crafting. The basic principle:

1. *Input chest* → raw materials
2. *Extractor / Sifter / Centrifuge* → processes materials
3. *Output chest* → finished products

Once set up, dump raw ore in one end and collect refined bars from the other. This is the difference between a mid-game base and an endgame fortress.

#tip[
  Automate the boring things first. Dirt → Sifter → ores. Ores → Extractor → bars. Wood → planks. Set up three basic pipelines and you eliminate 80% of manual crafting time.
]

== Long-Term Strategy

You have beaten the story. Your ship is upgraded. Your base is functional. Now what? This section is for the player who has hit the "I want more" wall — the transition from survivor to empire-builder.

#concept[
  Long-term strategy is not about what you do next. It is about what you want your galaxy to look like. Decide what kind of universe you are building, then build the infrastructure to support it.
]

=== The Self-Sustaining Base

A base that requires no input from you is the ultimate goal. Every resource you ever need, produced automatically, waiting in labelled containers when you return home.

The full pipeline:

1. *Mining:* Automated drills extracting ore chunks on a dedicated mining planet. Connect via teleporter.
2. *Refinement:* Chunks → Sifters → raw ores → Extraction Labs → refined bars → Storage.
3. *Farming:* Automated watering and harvesting (Gardenbot or Irrigation Tech) producing food surplus.
4. *Power:* Generators fuelled by excess organic material keeping the whole system running.
5. *Defense:* Turrets and crew patrols ensuring nothing breaks your machines while you are away.

#tip[
  Dedicate one planet to production. One to farming. One to your colony. One to your trophy hall. Specialisation beats the Swiss Army base every time.
]

=== FU Collection Systems

FU adds several deep collection systems that function as their own endgame:

==== Genetics

The *Gene Design Lab* lets you extract traits from creatures and splice them into new species. Completing the gene library means collecting samples from every FU biome.

- Target biomes you have not visited. Every new planet type has unique creatures.
- Build a containment facility — sealed rooms with the lab equipment in the centre. Escaped experiments can damage your base.
- Prioritise rare biome creatures first. Common genes are easy to fill in later.

==== Bees

Beekeeping is a full secondary progression system. Bees produce resources, pollinate crops, and can be bred for specific outputs.

- Start with common Forest and Lush bees. Learn the breeding mechanics.
- Different biomes spawn different wild bees. Build apiaries on multiple planets, not just your home base.
- Endgame bees produce rare materials passively. A max-tier apiary generates resources while you do other things — set it up early.

==== Brewing and Distilling

The *Brewery* station turns crops into drinks with powerful temporary buffs. Unlike food buffs, drink buffs stack with meal buffs.

- Rice → Sake (melee damage buff). Wheat → Ale (defense buff). Experiment with fruit combinations.
- FU adds dozens of crop types. One of each crop, one brewing station, and a dedicated fridge for ingredients is a worthwhile investment.

==== Archaeology

Fossils are hidden in rock layers across all planet types. The *Archaeology Station* lets you extract, clean, and display them.

- Fossils are biome-specific. A fossil found on a Desert planet does not exist on a Forest planet. The collection demands exploration.
- Display fossils in your trophy hall. They are not just decorative — they are proof of everywhere you have been.

=== Colony at Scale

A 10-tenant colony pays rent. A 30-tenant colony generates a small empire's worth of pixels.

- Build apartment towers, not sprawl. A vertical tower with 3×6 tenant rooms fits 18 tenants in a compact footprint.
- Merchant tenants sell rare items. Cultivate a merchant wing with 5+ merchant-type tenants and check their stock daily.
- Guard tenants patrol and defend. One guard per 10 civilian tenants keeps raids manageable.

#concept[
  Pixels are the only resource you cannot automate. Colonies are your pixel engine. Invest in them.
]

=== Endgame Biomes — The Gauntlet

FU endgame biomes are the final test of your build:

*Strange Sea* — Bioluminescent ocean moon. Extreme radiation, unique sea creatures, rare genetic material. Bring full radiation armor and an underwater breathing mod.

*Penumbra* — Eternal twilight world. Hostile shadow creatures, extreme cold, and the best loot tables in the game. Light sources are weapons here — enemies weaken in bright areas.

*Proto-World* — Primordial planet with no atmosphere. Suffocation hazard, lava oceans, and creatures that predate the Protectorate. The hardest planet type in FU.

*Gas Giants* — No surface. You fly through cloud layers harvesting gases. Requires flight tech and strong jetpack or mech. Unique resources available nowhere else.

#warning[
  Endgame biomes have threat levels that cannot be out-levelled. A tier-6 Proto-World creature kills a player in tier-4 armor in two hits regardless of level. Gear is a gate, not a suggestion.
]

=== The Trophy Hall

A complete trophy hall is the Starbound equivalent of 100% completion. What goes in it:

- Boss trophies from every dungeon — Erchius Horror, Ixodoom, Bone Dragon, Asra Nox, The Ruin
- FU boss trophies — the expanded boss roster adds unique drops
- Fossil displays — one of every type, arranged by planet of origin
- Weapon racks — legendary and unique weapons displayed on walls
- Mannequins — one of every armor set, arranged by tier and faction
- Bee specimen cases — one of every bee species, colour-coded by biome

#tip[
  Build your trophy hall on a Lush planet. The bright background makes dark armour and fossil displays pop. Visitors (if you play multiplayer) see your collection the way you intended.
]

=== Build Projects

For players who enjoy building more than fighting:

- *Starship drydock* — A landing pad with cranes, fuel lines, and maintenance bays. Build it on an asteroid field for atmosphere.
- *Underwater research station* — Glass domes on an Ocean planet. Hylotl aesthetic with research labs and an airlock system.
- *Mountain monastery* — Avian or Glitch themed. Stone, stained glass, and a cliffside view. Meditation gardens on every terrace.
- *Lunar observatory* — On a moon with no atmosphere. Telescopes, star charts, and a transparent dome. The view is the point.
- *Trading outpost* — Multiple teleporters, a marketplace with vendor stalls, and apartments for visiting players. Functional and thematic.

=== Infinite Goals

Some goals have no endpoint. They are there to give purpose when everything else is finished:

- *One million pixels* — Max out your pixel wallet.
- *Every research node unlocked* — Complete the entire FU tech tree.
- *One of every weapon type* — Collection log: energy pistols, rocket launchers, staves, spears, bows, every variant.
- *Every crew role at max level* — Train every profession to its peak.
- *A base on every planet type* — One functional outpost per biome, connected by teleporter network.
- *Complete gene library* — Every creature trait extracted.
- *Complete bee library* — Every species and mutation bred.

#concept[
  You do not need to do all of these. Pick one. That is your reason to log in tomorrow. When you finish it, pick another. The galaxy is not going anywhere.
]

