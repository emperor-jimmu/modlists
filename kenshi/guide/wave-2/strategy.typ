#let callout(title, body) = block(
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

== The Smith: Strategy

Wave 1 ended with a walled outpost, a food surplus, and the first raid that did not break you. Wave 2 is the next rung: turning that outpost's raw iron, leather and labour into the machines, weapons and defences that decide how far you go. This is the chapter for the forge — the research tree, the crafting benches, the material economy that feeds them, and the smith who works them. The mods in this wave make production deeper, not easier; every card in the mod sections exists to gate a reward behind investment, never to hand it to you.

The single most important thing to internalise is that in Kenshi, *crafting is a ladder, not a menu*. Nothing worth forging starts unlocked. The research bench gates your tech level, the tech level gates your grades, the grades gate your materials, and your smith's skill gates the quality of everything that leaves the bench. A Wave 2 outpost that understands this order can arm itself against the world; one that does not will spend its months hammering Homemade junk while its enemies swing Catun steel.

#callout("Warning:", [Do not treat the forge as a side project. In the mid-game, your smith is your army's quartermaster: the quality of the weapons and armour your people carry is decided by the Smithing and Armour Smith skills of one or two characters, and those skills only rise by working the bench. Start your smith on day one of the wave, or the wave's raids will out-pace your gear.])
 
=== The Research Tree, Mapped

The research tree is the skeleton of everything in this wave, and it runs on a single resource chain: research bench upgrades are paid for in iron plates, and each bench level *is* your tech level. The wiki's Research Bench page is specific about the ladder:

| Bench | Iron Plates | Power | Efficiency |
|---|---|---|---|
| Research Bench II | 10 | 0 | 90% |
| Research Bench III | 20 | 10 | 95% |
| Research Bench IV | 25 | 15 | 100% |
| Research Bench V | 30 | 25 | 105% |
| Research Bench VI | 35 | 30 | 110% |

The efficiency column is the bench's research-efficiency rating — higher is faster, so a Bench V at 105% out-paces a Bench II at 90% — and the power column matters the moment you leave the bench's zero-cost start: from Bench III onward a research bench is a power consumer, so your outpost's energy production has to grow in step with your research ambitions. Bench V is the gate every Wave 2 build eventually circles: it is the bench that unlocks *Hydroponics* (with an AI Core), and Expanded Craftable Weapons gates its Edge Type 1 research at Tech Level 5. If your outpost cannot produce or buy an AI Core, that is the wall your forge hits.

#callout("Tip:", [Budget research time like food. Every research item consumes bench time at the rate your bench's efficiency allows, and a faster bench compounds over a long tree — but the real cost is that a researcher on the bench is not mining, farming or guarding. Queue research overnight: put a character on the bench with a Work job before you log out or move the squad, and wake up to a finished node.])
 
Which research actually matters for this wave, in order:

- *Weapon Smithing* — the tech line that unlocks craftable weapon models from Rusted Junk upward. The wiki's Weapon Smithing (Tech) page lists the ladder: Rusted Junk, Rusting Blade, Mid-Grade Salvage, Old Refitted Blade, Refitted Blade, Catun No.1 through No.3, Mk I through Mk III, then Edge Type 1, and Edge Type 2 — which vanilla only ever produces as a "critical success" from your smith, never directly.
- *Armour Smithing* — how armour grades are produced. Unlike weapons, the wiki's Armour Smith page confirms armour quality depends on the *Armour Smith skill* plus a small random factor, with no research required to unlock higher grades. More on this below.
- *Crossbow Crafting + Mounted Crossbows* — the tech line behind the crossbow economy and the turrets that use it. The Mounted Crossbows II research is the dependency for most of this wave's turret content.
- *Electrical Crafting* — unlocks the Electrical Workbench, which makes Electrical Components out of copper. The wiki describes components as "used in crafting and construction" — they are the mid-tier material your production chain consumes once the wave's machines start needing more than plates and bars.
- *Hydroponics* — the late-game food answer, unlocked at Bench V with an AI Core, with each crop costing Ancient Science Books.

RIY+ (The Scientific Method) plugs into the very top of this tree: it lets your researcher craft the *books* that research consumes. The catch is that the mod gates that ability behind research itself — you pay four books upfront to learn how to make books, and Ancient Science Books plus Engineering Research require higher tech levels before their recipes appear. It does not remove the book bottleneck; it moves it to a gate you can pay with bench time instead of caravan time.

#callout("Warning:", [The AI Core is the true end of this wave's research tree. Almost everything that matters late — hydroponics, Edge Type 1 weapons, top-tier robotics — asks for an AI Core, and the wiki's Hydroponics page is explicit that the tree's initial research "costs an AI Core." They are the rare, hard-to-find component of the late game; if your outpost has no ruins runner and no luck looting, your forge tops out early. Plan the AI Core hunt before you plan the Edge Type forge.])
 
=== The Weapon Forge

The weapon forge is where the material economy and the skill system meet. The wiki's Weapon Smithing (Tech) ladder is the map: your craftable model grade rises with the Weapon Smithing research tier, but the *quality* of each weapon you actually produce rises with your smith's Smithing skill and carries a random element on top.

The ladder, bottom to top:

- *Rusted Junk / Rusting Blade* — the junk tier. Cheap, weak, and mostly useful for training Smithing without wasting good materials.
- *Mid-Grade Salvage / Old Refitted Blade / Refitted Blade* — the workhorse band. Refitted blades are genuinely usable, and this is where most outposts live for the first half of the wave.
- *Catun No.1 / No.2 / No.3* — the serious tier. Catun steel is what bandit-town smiths dream of, and it starts needing steel bars and real bench time.
- *Mk I / Mk II / Mk III* — the high-grade tier. Mk III is the top of the vanilla *craftable* ladder; past this point vanilla locks the door.
- *Edge Type 1 / Edge Type 2* — Edge Type 1 is craftable at the top of the vanilla tree; Edge Type 2 only appears in vanilla as a critical success from a skilled smith, and the wiki is explicit that *there is no vanilla method to craft Edge Type 3 or Meitou yourself*.

That last sentence is the entire reason Expanded Craftable Weapons exists in this wave. It adds the research and recipes to forge Edge Type 3 and Meitou grade weapons — the two grades the base game keeps out of your hands — through a "Weapon Smith - All Grades" bench that unlocks with Weapon Smith III. The gating is appropriately brutal: Edge Type 1 demands Smithing 56, Tech Level 5 and an AI Core; Edge Type 2 demands Smithing 60. By the time your smith forges a Meitou, they have trained through the entire ladder and your outpost has fed an AI Core to the research bench.

#callout("Tip:", [Train your smith on the junk, not the good stuff. Rusted Junk and Rusting Blade recipes cost next to nothing, train Smithing just like the expensive ones, and the "failed" low-quality results are disposable. Save your steel bars and AI Cores for the moment your Smithing skill passes 50 — that is when the high-grade benches stop wasting good materials.])
 
Diminishing returns are real, and they are the point. The stat difference between a Mk III and an Edge Type 1 is meaningful but not transformative; the difference between Edge Type 1 and Meitou is smaller still per step, while the cost — in AI Cores, rare materials, Smithing levels and bench time — climbs steeply. The power-spike test holds the line here: a Meitou is the best weapon in the game, but the path to it is the wave's entire research-and-materials arc, not a shop purchase. If you are chasing Meitou, you are committing to the forge as a career.

The mod also balances the low end: Homemade weapons are boosted to match the existing craftable ones and crafted weapons sell for prices closer to looted equivalents. That closes a vanilla oddity where crafting your own gear felt like a tax — without ever letting crafting out-perform what the ladder's top end costs.

#callout("Warning:", [A weapon's grade is not its destiny — the smith's skill is. Two Mk III blades from the same bench can differ meaningfully in quality because of the random element on top of the Smithing skill. Do not judge the forge by a single result; judge it by the average across a full batch.])
 
=== Armour & the Protection Economy

Armour works on a different axis from weapons, and the difference matters. The wiki's Armour Smith page confirms that armour quality depends on the Armour Smith skill plus a small random factor — and, unlike weapon grades, *no research is required to unlock higher armour grades*. A fresh Armour Smith at a Heavy Armour Smithy is already allowed to attempt the best armour in the game; the skill is what decides how often it comes out at that grade.

That makes armour production a *volume* game rather than a research game. Your Armour Smith's skill rises by crafting, and the random factor means the same bench produces a spread of grades across a batch. The classic outpost strategy is to run the bench continuously, bank the good rolls, and grind the bad ones into scrap or sell them off at the armour shop's 0.25x resale value — the wiki confirms armour sells for a quarter of its value.

The four benches, each for its own material band:

- *Leather Armour Crafting Bench* — the cheap start, fuelled by animal skins and the leather tanning line.
- *Clothing Bench* — fabric armour and clothing, fed by the cotton → fabric line.
- *Chain Armour Crafting Bench* — the mid-tier, and a serious consumer of steel bars (the wiki lists Chain Armour among steel bar uses).
- *Heavy Armour Smithy* — the top end, where plate armour and the heavy grades live, and the biggest consumer of iron plates, armour plating and bench time.

Armor Crafting Redux - Core reorganises this whole floor without touching a single number: recipes are alphabetised and grouped by bench and research node, blueprint clutter disappears, and unlocks come from research instead of hunting tiny shop icons. Its value to this wave is that it makes the armour economy *operable* — when your Armour Smith trains for hours, you want to find the recipe instantly, not scroll past forty mod icons.

#callout("Tip:", [Run the armour bench as a background job, not a project. Armour Smithing rises fastest with constant work, so give a dedicated character a Work job on the Leather Armour Crafting Bench and feed them a steady stream of hides from the Wave 1 hunting loop. The grades come with volume, and the excess leather that piles up is exactly what Leather Expansion: Leathercraft turns into money.])
 
Leather Expansion: Leathercraft closes the loop on the armour economy's waste. Armour-smithing training produces leather faster than you can wear it, and vanilla has nothing to do with the surplus. The mod's "Leathercrafting Techniques" research unlocks a Leathercraft Workbench that turns that excess into sellable trade goods — wallets, book covers, horn accessories — while training Dexterity on whoever works it. It does not create value from nothing; it monetises a by-product your armour training already produced, which is precisely why it clears the power-spike test.

#callout("Warning:", [Do not over-produce armour you cannot use or sell. The armour shop buys at 0.25x value, so a warehouse of misfit-grade plate is a warehouse of wasted iron plates. Make for your squad first, keep a short runway of saleable stock, and let Leathercraft absorb the rest.])
 
=== Crossbows & Turrets

Crossbows are the ranged backbone of a Kenshi defence, and Wave 2's turret content plugs straight into the existing skill and research systems rather than inventing new ones. The wiki's Crossbows page is precise: two skills drive a crossbowman — the *Crossbows* skill, which applies to accuracy deviation and reload time, and *Precision Shooting* — plus attributes that feed them. The wiki's Mounted Crossbow page shows how turret accuracy scales the same way: accuracy deviation at 0 skill is 5 degrees, and accuracy is perfect at level 70, so the operator's skill is literally the difference between a turret that sprays and a turret that one-shots.

The production line for crossbows and their ammunition runs down the same material chain as everything else. The wiki's Steel Bars page is explicit that steel bars are used "in the production process of crossbows," and the Arrow Making Bench turns raw iron and copper into spring steel — the material your bolts and the higher crossbows need. Turrets themselves are built from the same materials, and the Turrets page confirms the structure list: Harpoon Turret, Harpoon Turret MkII, Double-Barrel and Multi-Barrel Harpoon Turrets, plus the Mounted Crossbow and its MkII.

Vanilla Crossbow Turrets adds the missing middle of that ladder: five *vanilla crossbow* variants mountable as turrets — Junkbow, Tooth Pick, Ranger, Spring Bat and Eagle's Cross — each gated behind the Mounted Crossbows research chain and each with its own personality (the Spring Bat hits hard but rarely, the Tooth Pick fires fast, the Eagle's Cross reaches far). They give your wall line real firepower long before Harpoon Turrets unlock, and because they are vanilla crossbows on a mount, they train the same Crossbows skill your field crossbowmen already use.

#callout("Tip:", [Put your best crossbow skill on the wall. Turret accuracy is perfect at level 70, so the difference between a garru-herder and a veteran crossbowman at the trigger is the difference between suppressive fire and a kill line. Wave 1's defense-in-depth gets its teeth here: Mounted Crossbows on the gate segments, gunners drawn from your best ranged fighters.])
 
Portable Crossbow Turret kit is the expedition half of the crossbow line. Its research unlocks at Tier 3/4 after Mounted Crossbow 2 and Crossbow Crafting, costs an Engineering Research and two Ancient Science Books, and its craftable kit is eight iron plates plus two spring steels — real materials, hammered over six hours by an experienced crafter. The payoff is a camping turret that deploys anywhere and, critically, *does not create an outpost when built*. That makes it the difference between being able to fight off a Beak Thing ambush in the field and being dead with a wall that was a day's walk away. It is a turret with the same crossbow economy behind it, just carried on your back.

#callout("Warning:", [Turrets are stationary commitments, not force multipliers by themselves. A Mounted Crossbow on an unguarded wall segment is a gift to the first raid that walks around the corner — the operator needs cover, a reload window and a fallback position. Build turrets where Wave 1 built walls: at chokepoints, covered, in depth.])
 
=== Hydroponics & Sustainable Food

Wave 1 ended with a working farm, but a farm is land-bound: it grows what the environment allows, on the soil you picked. Hydroponics is the late-game answer that Wave 2's food story is built around, and the wiki's Farming page sets the terms: hydroponics requires Research Bench V and an AI Core to unlock, and each indoor crop costs four Ancient Science Books to learn. The payoff is total independence — hydroponic farms ignore environment and fertility entirely, grow one size with ten plants, and the wiki notes they can *outperform* regular farms when the crop yields multiple harvests on shorter growth times.

Better Hydroponics takes that vanilla system and builds the tiers the base game never had. Each hydroponic crop gets three research tiers with real upgrades per tier: sprinklers cut water consumption 25% per tier, thermoregulators slow plant death 50% per tier, engineering speeds harvest and clearing 50% per tier, and genetic mutations cut growth time 25% while raising crop output 100% per tier. It also adds the two crops vanilla hydroponics omits — Cactus and Cotton — so a desert outpost can grow its own fabric indoors instead of buying it. Nothing here bypasses the gate: you still need the vanilla Bench V + AI Core hydroponics research before any of it opens.

#callout("Tip:", [Hydroponics is the answer to the land you *cannot* farm, not the land you already do. If your Green-zone farm is feeding you fine, do not rush the AI Core into hydroponics — put it into the weapon forge instead. The moment you want to settle a swamp, a desert or a mountain, *that* is when Better Hydroponics becomes the entire food economy.])
 
The synergy this wave is built on: RIY+ lets your researcher craft the Ancient Science Books that every hydroponic crop research consumes, and the Steam-subscriber numbers back it — Better Hydroponics is the most-adopted mod in this wave because it turns a research bottleneck into a production pipeline. A self-sufficient Wave 2 outpost can eventually grow any food anywhere, with the books made in its own lab, on land that would starve a Wave 1 farm.

#callout("Warning:", [Hydroponics is book-hungry and water-hungry. The vanilla system's costs are explicit — an AI Core to unlock, four Ancient Science Books per crop — and Better Hydroponics adds its own per-tier research on top. The wiki also warns that town hydroponics are "severely limited by the availability of water," so plan your water supply (wells, rain collectors, or rooftop bays that collect even acid rain) before you build the bays, or your crops will wither for lack of the one input nothing else provides.])
 
=== The Material Economy

Every forging, crafting and building system in this wave converges on one pipeline, and mastering it is the actual strategy of The Smith. The chain runs: *ore → bars → components → product*, and each step is a bench, a job and a storage box.

The raw end is mining, which you already trained in Wave 0 and 1. Raw iron is mined from outcrops with the Labouring skill, and the wiki's Raw Iron page traces it forward: one raw iron smelts into one iron plate at an Iron Refinery (avg. price c.135 per plate), or four raw iron beat into Armour Plating at a Plate Beating Station. Copper rides the same line — the Copper page shows it feeding spring steel at the Arrow Making Bench (combined with raw iron), copper alloy plates at the Copper Alloy Bench (combined with iron plates), and electrical components at the Electrical Workbench (one copper per component, once Electrical Crafting is researched). That last step matters most: Electrical Components (avg. c.216) are the mid-tier material your crafting and construction consume, and they only come from the Electrical Crafting research plus copper.

The refining step is where value concentrates. The wiki's Steel Bars page is explicit: steel bars (avg. c.648) are made at a Steel Refinery from iron plates — four plates per bar at the first refinery level, three at higher levels — and steel is what crossbows, high-tier melee weapons, Chain Armour, Chainmail Sheets and Skeleton Repair Kits all consume. Electrical Components sit on a parallel copper line: the wiki confirms they are produced at the Electrical Workbench out of copper once you research Electrical Crafting, are used in crafting and construction, drop off robots like Iron Spiders, and are sold by traders. The copper you once sold to The Hub's barman is the seed of the mid-game electronics line. That 135-cat plate becoming a 648-cat bar is the whole lesson of the material economy: the outpost that refines its own steel stops selling raw plates and starts selling finished value.

#callout("Tip:", [Automate the chain the way Wave 1 automated water: one miner on the outcrop, one Work job at each refining bench, auto-haul between every machine and its storage box. Wave 1's "one miner, one hauler, one processor" cell now becomes a full production line — ore to plates to steel to weapon, running while you are off fighting.])
 
Industrial Expansion [Beta] is the automation layer that makes the chain denser. It adds compact 0.5-scale indoor versions of the production machines — indoor well, refineries, furnaces, grain silos, plus an RTG power source — so your whole material economy can live inside one walled, guarded building instead of spread across an exposed yard. The catch is deliberate: power and resource requirements are the *same* as the outdoor versions, and research stays aligned with the vanilla tree (researching Wells II unlocks Indoor Wells II). It trades footprint for convenience, never for cost — the author's explicit design, and the reason it clears the gating rule.

#callout("Warning:", [Never let the finished-goods storage starve the bench. When a refinery feeds a weapon forge and both share one steel-bar box, the forge eats the bar the wall turret is waiting on. Give every machine its own input storage and its own hauler, and over-provision the refining step — the bottleneck in every base is hauling, and the fix is always another box and another pair of legs.])
 
=== Building Your Smith

Underneath the benches, the materials and the research there is a person, and the RP arc of this wave is the arc of that person becoming the forge that arms the faction. It is the most satisfying thread the game offers, and the wave's mods are all built to support it.

*The apprentice.* Your first smith is whoever you can spare — often the weakest fighter, or the recruit who cannot swing a sword but can hold a hammer. They start on Rusted Junk and leather: the cheap recipes that train Smithing and Armour Smith without costing real materials. Give them the Leathercraft Workbench as a filler job — the mod trains Dexterity while turning hides into money, so the apprentice earns their keep while they learn.

*The craftsman.* The Smithing skill passes 30 and the good benches open. This is where the weapon forge becomes the squad's supplier: Refitted and Catun blades for the fighters, armour from the mid benches, and the first crossbows for the wall. The smith is no longer a spare hand — they are the reason the squad's gear is a step above the bandits' loot.

*The master.* Smithing 50-plus, Tech Level 5, an AI Core in the research bench. Expanded Craftable Weapons' Edge Type 1 is within reach, and the all-grades bench makes every tier forgeable. The smith's signature is real now: Meitou-grade weapons for the faction's elite, forged from steel your own refinery produced.

#callout("Tip:", [Protect the smith like the forge itself. A smith with Smithing 60 is more valuable than any sword they can make — losing them means months of rebuilding skill while the raids keep coming. Keep them home, keep them fed, and if the outpost is threatened, the forge closes before the gate does.])
 
#callout("Warning:", [Do not let the forge out-run the economy that feeds it. A master smith with an empty steel-bar box is a tragedy; a master smith with a full refinery and a stockpile of AI Cores is a faction. Build the material pipeline first, then let the smith's ambition spend it. The ladder rewards the outpost that feeds every rung before it climbs the next.])
