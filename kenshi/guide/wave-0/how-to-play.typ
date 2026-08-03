#let callout(title, body) = block(
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

== The Wanderer: How to Play

You wake in The Hub — a ruined crossroads town in the Border Zone, an outlaw settlement that the Holy Nation, the Shek Kingdom and everyone else abandoned long ago. You have a name, a set of clothes, and no memory of how you got here. What happens next is entirely up to you. This chapter teaches the fundamentals every wanderer needs: how to control the camera and your character, how to read the interface, what your stats and health actually mean, and — because Kenshi will knock you down sooner or later — what happens when you lose. It closes with the survival loop that will carry you through your first week.

Everything here describes vanilla Kenshi 1.0.68. Wave 0 installs no content mods; the six mods in the Modlist section only make the game easier to see and smoother to run.

=== Controls & Keybindings

Kenshi is an RTS-style game on the surface and a survival RPG underneath: you steer a camera, click to command, and your characters act on their own between orders. The defaults below are what Kenshi 1.0.68 ships with, and every one of them can be remapped under *Options → Controls*.

#callout("Tip:", [Pause is your best friend. Kenshi keeps running while you think — reading stats, sorting loot and planning a retreat all happen while the game is paused. Make pressing the spacebar a habit from minute one.])

#table(
  columns: (auto, 1fr, auto),
  inset: 4pt,
  align: (left, left, left),
  [*Category*], [*Action*], [*Input*],
  [Camera], [Move the camera], [WASD / Arrow keys / mouse to screen edge],
  [Camera], [Rotate the camera], [Hold middle mouse + drag, or Q / E],
  [Camera], [Free look], [Hold Left Ctrl + move mouse],
  [Camera], [Zoom in / out], [Mouse wheel],
  [Selection], [Select a character], [Left-click the character or their portrait],
  [Selection], [Add to the selection], [Shift + left-click],
  [Selection], [Box-select many], [Left-drag a box over them],
  [Selection], [Select the whole squad], [#sym.tilde key (the grave accent key, above Tab)],
  [Commands], [Move / walk to a spot], [Right-click the ground],
  [Commands], [Open the action menu], [Hold right-click on a person or building],
  [Commands], [Default action], [Right-click the target — attack enemies, talk to allies],
  [Game], [Pause / unpause], [Spacebar],
  [Game], [Normal / 2x / 5x speed], [F2 / F3 / F4],
  [Menus], [Character stats], [C],
  [Menus], [Inventory], [I],
  [Menus], [World map], [M],
  [Menus], [Technology / research], [T],
  [Menus], [Crafting queue], [Y],
  [Squad], [Cycle between squads], [Tab],
  [Squad], [Jump to character 1-0], [Number row; press the key twice to focus the camera],
  [Misc], [Quick save / quick load], [F5 / F9],
  [Misc], [Highlight loot / allow stealing], [Left Alt],
  [Misc], [Hide the UI / screenshot], [F7 / F8],
)

The mouse does most of the work. *Right-click on the ground* tells your selected characters to move there; *right-click directly on a person* performs the default action — attack if they are hostile, talk if they are friendly. *Hold right-click* on anything to open the contextual action menu (Trade, First Aid, Attack, and so on). If you ever feel lost behind the interface, press *F7* to hide it and *F8* to capture the moment.

#callout("Warning:", [The camera rotates around a fixed point and the zoom range is limited in vanilla. Don't fight it — drag with the middle mouse button and use the mouse wheel, and if the camera ever feels stuck, double-press the number of the selected character to snap focus back onto them.])

=== The Interface Tour

The whole HUD is built around a few panels, and once you know what each one tells you, the game opens up.

- *Squad panel (bottom of the screen):* one portrait per character, each with their health bars beneath it. Click a portrait to select that character; *right-click* it to centre the camera on them. This is where your whole crew lives, and it is the first thing you look at when a fight starts.
- *Selected character panel (bottom-left):* the detailed sheet for whoever is selected. It shows their body part health — Head, Chest, Stomach, and the four limbs — plus blood, hunger, the KO point, their current action, and how encumbered they are. Expanding it with the chevron shows the full stat list.
- *Speed and pause controls (bottom-right):* the F2/F3/F4 speed buttons and the pause toggle. Everything in Kenshi obeys game speed, including wounds and hunger, so dropping to pause or 1x during a bad fight is a legitimate tactic.
- *World map (M):* shows the continent, your position, and — if you installed *Nice Map* — zone names, roads and borders. Cities appear as they are discovered; the map does not reveal them for free.
- *Character stats (C):* the left column is attributes (Strength, Toughness, Dexterity…), the right column is skills (Melee Attack, Labouring, Field Medic…). Skills are capped at 100, but the game never stops training them.
- *Inventory (I):* your equipment slots, backpack, and everything you carry. Items have weight; the heavier you are, the slower you walk.
- *The selection ring:* a coloured circle under your selected character in the world. Hostile characters show a red ring when targeted; friendly characters show green. Colours on the selection ring and in the squad panel tell you faction standing at a glance.

#callout("Tip:", [Use the map to check where your character is standing before you wander off. The Hub sits near the centre of the Border Zone — west is Squin and the Shek Kingdom, east leads deeper into Holy Nation territory, and the deadlands around the old cities are no place for a beginner.])

=== The World Around The Hub

The Border Zone is an arid no-man's-land wedged between two powers — the Holy Nation to the east and the Shek Kingdom to the west — and abandoned by both. The Hub itself is a ruined outlaw town: built by the Holy Nation, razed by the Shek, and left for whoever dares to squat in the ruins. That history shapes everything you meet out here.

*Who you will actually encounter in your first week:*

- *Starving bandits* — starving civilians turned to banditry, the weakest regular threat in the zone. They come in packs of weak, half-starved fighters, and they are your training dummies. They will beat you up, loot you, and leave you — the classic first-fight loss.
- *Dust bandits* — better armed, better trained, and their fortified bases dot the region. They hit harder and chase further. Do not pick this fight until you have a companion or a wall.
- *Black Dragon Ninjas* — a tougher bandit faction with a base somewhere in the zone. They are the reason the deeper reaches are not for beginners.
- *Tech Hunters* — wanderers hunting the ruins of the ancients. They are neutral and will not bother you; some of them trade, and their camps are safe enough to rest near.
- *Holy Nation Outlaws* — the zone's human outcasts, which is what the population of The Hub mostly is. The Hub's bar is run by Trade Ninjas, and a Shinobi Thieves watchtower stands at one end of town — useful places to know.

The region is sparse on patrols, which is why the bandits flourish here and why you must be your own guard. But the same lawlessness that breeds bandits breeds opportunity: the zone has high-quality copper and iron veins near its towns and merchants, which is exactly why the mining economy works so well here.

#callout("Warning:", [Faction standing is worth reading. The red ring around a targeted hostile and the colours in the squad panel tell you who will attack on sight. In the Border Zone the map is not the danger — the people on it are. Learn to read the rings before you leave the gates.])

=== Your Character: Stats, Health, Hunger

Kenshi has no character levels and no XP for kills. Every stat grows only through use — run to raise Athletics, swing a blade to raise Melee Attack, get hit to raise Toughness. Your character sheet (*C*) is a report card of everything you have done so far.

*Which four stats matter most early:*

- *Strength* — determines your carry weight, your damage with blunt weapons and martial arts, and how fast you swing heavy weapons. You train it by carrying heavy loads and fighting. A strong character can haul a mining haul and outpace the bandits chasing them.
- *Toughness* — your damage resistance and your ability to shrug off knock-outs. It trains by taking hits and, crucially, by *getting back up* after being beaten down instead of playing dead. Early on, Toughness is the difference between a scrape and a body.
- *Dexterity* — governs how fast you attack with a weapon. It trains with cut-damage weapons, so cheap sabres and katanas are its natural teachers.
- *Melee Attack* — your chance to win the attack turn against an opponent and to land hits past their *Melee Defense*. For a lone wanderer it is the stat that decides whether you kill the starving bandit or he kills you.

#callout("Tip:", [Strength is the easiest stat to train safely: load up a backpack with copper or iron ore, wear it in your inventory rather than on your back, and walk. Carrying weight above 50% of your strength slows you down but trains Strength hard — just don't do it while enemies are chasing you.])

*Health.* Every body part has its own health pool, and damage is localised. A wound to the leg slows you; a wound to the arm weakens your grip. The three *vitals* — Head, Chest and Stomach — decide life and death: drop below 0 and you fall unconscious; drop below -100% of their maximum and you die outright. The blood bar sits above the body parts: little arrows over the blood mean you are bleeding out, and the more arrows, the faster. Bandages stop bleeding and mend cut damage; a bed or camp bed multiplies healing eight or four times over.

*Hunger.* Food fills the hunger bar, and characters eat automatically when it drops below 250 — the lowest-nutrition food they carry first, up to 50 nutrition per bite. Let hunger fall below 200 and malnutrition starts dragging your stats down; below about 100 you begin fainting, and sustained starvation kills. Food carried in any squad member's backpack is shared, so one person can carry bread for everyone. Skeletons do not eat at all.

#callout("Warning:", [Check the blood line after every fight. A character who survives the combat with 1 health can still bleed out on the walk home. Bandage first, loot second — corpses are not going anywhere.])

=== Encumbrance and Carrying

Everything you carry weighs something, and Kenshi tracks it as *encumbrance* — your carried weight measured against your Strength. The heavier you are relative to your Strength, the more the world charges you for it:

- *Movement speed:* drops 1% for every 1% of encumbrance, maxing out at a crawl when you are at 100% encumbrance.
- *Combat speed:* drops too, though more gently (about 0.235% per 1% encumbrance, up to a quarter lost at 100%).
- *Dodge and Martial Arts:* both fall as you get heavier — dodge by 1% per 1% encumbrance (capped at a -60% dodge around 60% encumbrance) and martial arts by 0.8% per 1%.
- *Hunger:* burns faster the more you haul — hunger rate rises 0.007 per 1% of encumbrance, so an overloaded character empties the food pack faster.

The inventory screen shows your current weight and your encumbrance percentage, and how much of it comes from what you are carrying. Two practical rules come out of it: *stay under roughly half your carry capacity when travelling*, and remember that what hangs on your back — and in a backpack — counts just like what you hold in your hands. That is why the mining tip works: a full backpack of copper trains your Strength while it slows you, and when you drop it at the trader you become fast again.

#callout("Tip:", [Encumbrance is the flip side of Strength training. Load up heavy, walk, and you will see Strength climb — then drop the load and enjoy the speed again. This loop of "load, walk, unload, run" is the standard early way to raise Strength without ever swinging a sword.])

=== Combat Basics

Kenshi fights in attack turns rather than real-time button mashing. When two characters meet, the one with the better *Melee Attack* relative to the opponent's *Melee Defense* takes more turns: each point of attack advantage shifts the odds of being the attacker by roughly 2.5%, and a large advantage means you attack twice for every one of theirs. Attack also beats defense for landing hits — your attack skill lowers their chance to block, and a big skill gap turns a fight into a one-sided beating.

Every attack is either *blocked*, *dodged*, or *landed*:

- A *block* stops the damage entirely but uses up the defender's turn — this is how defense works: the more defense you have, the more often you trade their attack for nothing.
- A *dodge* also avoids the hit, and some weapons swing wide enough that they are harder to avoid.
- A *landed* hit deals *cut* damage (which bleeds and can sever limbs) and *blunt* damage (which breaks bones and knocks people out). Armour resists these differently, which is why a beat-up samurai in plate is a wall and a naked recruit is a pincushion.

*Stagger.* Powerful or heavy hits can stagger an opponent, interrupting their next attack and stealing their turn. This is why a big, slow two-handed weapon is deadly against light, fast enemies — when it lands, it lands hard enough to stop them answering.

*What happens when you lose.* It depends on who beats you and where:

- *Knock-out:* when a vital part drops below 0 you fall unconscious. Bandits will typically loot you and leave you in the dirt; slavers will carry you off.
- *Recovery coma:* if your injuries go deep enough, you enter a coma until your vitals rise above 0 again. A companion (or a passing stranger, if you are lucky) can patch you up with First Aid; a bed finishes the job. Unbandaged cuts keep bleeding while you lie there.
- *Death:* if Head, Chest or Stomach goes below -100% of its maximum, you die — the character is gone from the world for good.
- *Slavery:* fall near the slavers of the United Cities or the Reavers, and you may wake up in a cage, sold into bondage. You can work your way free, escape, or wait to be rescued; escaped slaves sometimes choose to join you.

#callout("Warning:", [In the first week, do not fight fair fights. Starving bandits come in groups, dust bandits hit harder, and dogs eat the dead. Use the town gates, use the bar's patrons, use numbers — and use your legs. Retreating is winning.])

=== Weapons and Armour

A wanderer is only as good as their gear, so learn to read it before you buy it. Every character has two weapon slots: *Weapon I* (the primary) and *Weapon II* (a secondary that most weapons can't fit — only compact blades like sabres and katanas go there). Characters use the primary weapon in most fights, and the secondary when the primary is not usable, such as when an arm is injured. Equipping a weapon also stacks its stat bonuses and penalties only while it is the active weapon.

*Weapon damage is split two ways — cut and blunt — and every weapon does some mix of both:*

- *Cut damage* is the blade's work: it bleeds and can sever limbs. Katanas and sabres are almost pure cut, which is why they train *Dexterity* well — Dexterity gains track how much of a weapon's damage is cut.
- *Blunt damage* is the hammer's work: it breaks bones and knocks people out. Clubs, jittes and heavy weapons lean blunt, and they hit hard against armour.

*Weapon quality* matters more than the name on the hilt. Weapons come in grades from Rusted Junk up through better manufacturing, and quality raises damage, bonuses, and sometimes penalties. A Rusted Junk sword is the classic "penny for every rusty piece of crap sword" item — but it has a hidden use: because it subtracts a little from your attack and defense, it makes fights *harder*, which trains your combat stats faster. Low-grade weapons also carry proportionally more cut damage, so a Rusted Junk sabre is the standard training weapon.

*Armour comes in three weight classes, each trading protection for mobility:*

- *Light armour* — the wanderer's default. Cheap, light, almost no skill penalties, but offers little protection. Fine for early mining runs and safe fights.
- *Medium armour* — more coverage than light and less resistance than heavy, without heavy's severe penalties. The sensible upgrade when you can afford it.
- *Heavy armour* — the most protection in the game, and it drags your stats down with it: Dexterity and other combat stats take penalties, and the extra weight and sluggishness make every fight harder. That difficulty has an upside — the harder the fight, the faster your stats train — which is why heavies are the tanks of Kenshi.

#callout("Tip:", [Don't buy the best weapon you can afford at The Hub; buy the *trainer*. A cheap Rusted Junk sabre trains Dexterity fast and makes you grind Melee Attack and Defense harder. Save the expensive edge weapons for when your stats are already high enough to deserve them.])

=== First Aid and Medicine

Every wound in Kenshi is a job to be done, and the two kinds of damage demand two kinds of care:

- *Cut damage* — the bleeders. Cut damage *never heals by itself*; it must be bandaged with a *First Aid Kit*, and even then the last sliver of cut damage on a limb will not recover without another bandaging. This is why you always carry a medkit: a character who survives a fight at 1 health can still die of an unbandaged cut while limping home.
- *Blunt (stun) damage* — the aches. Stun damage is the blunt shock to a body part, it regenerates on its own, and no bandage is needed. It is what makes heavy hits knock people out while the underlying cuts still bleed.

The *Field Medic* skill governs all of this: how fast you bandage and how many kit charges each bandaging uses. A better-skilled medic bandages faster and stretches a kit further, which is why a dedicated healer in the squad pays for themselves. First Aid Kits are everywhere — NPCs carry them, shops stock them, and bandit corpses drop them — so scavenging is a reliable way to keep the squad's medical chest full.

#callout("Warning:", [A character uses the kit in their inventory before one in a backpack, and the lowest-charge kit first. When you loot a medkit off a corpse, put it in the healer's inventory — a medic who has to dig through a backpack mid-fight is a medic who is about to get interrupted.])

=== Making Your First Cats

The currency of Kenshi is *cats*, and your first objective as a wanderer is to get some. The fastest and safest way in The Hub is mining copper.

#callout("Tip:", [There are copper and iron nodes within walking distance of The Hub's gates — the Kenshi wiki confirms "several copper and iron nodes within walking distance from the gates make it possible to run a fairly safe mining operation inside of the Hub." You do not need to travel to find ore. Follow the green-glowing outcrops of rock just outside the walls.])

To mine, select your character, hold *right-click* on a copper outcrop and choose *Mine*. Your character will chip away, using the *Labouring* skill and filling their inventory with copper ore. Each unit of copper weighs 4 kg and sells for roughly *180 cats* at a shop, and since carrying it trains your Strength at the same time, a mining session is effectively paid training.

When your inventory is full, walk back into The Hub and sell: hold *right-click* on a shopkeeper — the bar's barman buys copper — and choose *Trade*. Drag your copper over to the sell column and take the cats. A single good haul of copper is several hundred cats; a couple of full runs gets you your first thousand.

#callout("Tip:", [Hold *Shift + right-click* on a copper node to set mining it as a repeating job. Your character will mine, and if you later buy a small shack and build ore storage, you can automate hauling — but for the first day, a backpack and a walk to the trader is all you need.])

#callout("Warning:", [Bandits roam the Border Zone, and dust bandits know exactly where the Hub's miners work. Stay within sight of the walls, mine during the day, and the moment you see a red ring on a hostile, drop the pick and run for the gates — town guards and bar patrons do the fighting for you.])

=== Jobs: Making Your Characters Work for You

Kenshi's real time-saver is *jobs*: ordered lists of commands you set once and your characters carry out on their own. You give a job by holding *Shift + right-click* on something and choosing a task — mine copper, haul ore, medic, and so on — and the job appears in the character's *Jobs* window. With Jobs enabled, the character works down the list from top to bottom: if the first job can't be done right now (no copper in reach, nothing to haul), they move to the next one, and when the first becomes possible again they come back to it.

Job types worth knowing from day one:

- *Work* — anything at a machine or farm; at Wave 0 this is mining, and later it is every workshop in your outpost.
- *Auto-haul* — carry produced items to a storage building. This is how a mining operation sustains itself: one character mines, another carries the copper to an ore storage box, and the pile builds while you are elsewhere.
- *First Aid / Medic* — treat wounded squadmates. Medic jobs stay active even when Jobs is toggled off, so a medic always patches up the squad after a fight.
- *Collection* — find dead bodies and take them to a corpse furnace, or loot the bodies of fallen animals.

#callout("Tip:", [Jobs are how one wanderer becomes a one-person town. Set mining, auto-haul to storage, and medic as jobs, and your character keeps the operation running while you walk to the trader to sell. The Hub's ruined shack can hold an ore box — start your empire in a building you did not pay for.])

=== Trading and Shopping in The Hub

Kenshi is a trader's game as much as a fighter's, and knowing the shops is half the trick. The Hub is a small ruined town, and its shops are few but functional:

- *The Bar* — owned by the Trade Ninjas, this is the heart of The Hub. The barman buys your copper and ore, sells food, and the bar itself is where hirelings gather. It is your first and most important trading partner.
- *The Thieves Guild* — the town's second shop, worth knowing for the less legitimate side of trade.
- *Small Shacks* — the ruined residential buildings. Not shops, but many are *for sale*, and a collapsed shack costs a fraction of what the same space would run in a richer town.

Two pricing truths shape every trade you make:

- *Shops sell at a markup and buy at a discount.* Copper sells to you for its listed price, but a shop pays far less for what you sell than it charges for what you buy — the game applies a resale cut on looted and mined goods. Do not expect to sell a sword back at what it "cost".
- *Prices vary.* The wiki notes that food prices in particular "may actually differ in your game" because of price randomization. So a good deal in one shop may be a bad deal in another — and the same haul of copper is worth more in a town that needs it.

#callout("Tip:", [Buy food where it is cheap and sell ore where it is wanted. The bar's barman buys copper all day, and the traders' shops restock — a routine of "mine by the gates, sell at the bar, buy food before nightfall" is the whole early economy of The Hub.])

=== Your First Recruit

You do not have to survive alone. Bars across Kenshi are full of people looking for work, and *The Hub's bar is one of the best places to start* — it always hosts at least one hireling.

To recruit, approach a character marked "looking for work", *right-click* them and choose *Talk*, then pick the recruitment dialogue. If you have enough cats, they join your squad permanently — they are yours to command, equip, and train like any character you created.

*The cost.* Hiring is not free. A generic "sword for hire" recruit costs roughly *3,000 cats* at base, and the better their skills, the more they demand — expect anywhere from 3,000 to 9,000 cats for a decent early recruit. Unique characters with names and backstories cost more still, and a few are free, but for your first companion a standard hireling is the dependable choice.

#callout("Tip:", [A second pair of hands changes the game. Put one character on the copper node while the other stands watch, or send one to scavenge bandit corpses while the other guards. The Hub's bar is cheap to reach, the hirelings are weak but willing, and two weak wanderers beat one strong one every time.])

#callout("Tip:", [On the Wanderer start, you may find *Hobbs* at The Hub's bar, who might ask you to come have a drink with him — a friendly face before the wasteland shows you its own. Not every character worth talking to is a hireling; some are stories waiting to be heard.])

#callout("Warning:", [New recruits start almost as weak as you did. Do not send a fresh hireling into a dust bandit camp expecting a hero — gear them from your spare loot, keep them fed from the shared backpack, and let them train alongside you where the fights are safe.])

=== Camping and the Outdoors

Sooner or later you will sleep outside the walls — a scavenging trip runs long, a night catches you on the road, or the ruins you want to search have no inn. Kenshi gives you the tools for it:

- *Camping equipment* — tents and sleeping bags. A tent gives you a place to camp in the wilderness, and sleeping in a bed or camp bed multiplies healing over standing around. A campfire lets you cook food, which turns cheap raw ingredients into more nutritious meals.
- *Where you camp matters.* The Border Zone is lawless — a tent pitched in the open at night is an invitation to starving bandits and worse. Camp somewhere defensible, keep a watchful character up, and be ready to pack and run.
- *Food on the road.* A squad's food is shared from any member's backpack, so one person can carry bread for everyone. Before you leave The Hub, make sure the pack has more meals than the trip should take — the desert is merciless to the unprepared, and there is no convenience store halfway to Squin.

#callout("Tip:", [You do not have to fight the night. If a route is dangerous after dark, camp until morning instead — a night spent in a tent in a safe spot is cheaper than a funeral. Camping is a survival skill, not a luxury, and Wave 0 is the wave to practise it on short, safe trips.])

=== The Survival Loop

From here on, Kenshi is a loop, and mastering it is the whole game. Each cycle makes you a little stronger, a little richer, and a little harder to kill:

1. *Eat.* Keep food in the squad's backpack — bread, dried meat or cooked vegetables from the Hub's traders. Hunger refills itself as long as food exists; the moment it does not, every other part of the loop starts failing.
2. *Heal.* After any fight, bandage the cuts, check for bleeding, and sleep. Beds heal eight times faster than standing around, so rent one at a bar or use the free beds in the ruined shack in The Hub when you can.
3. *Fight.* Pick fights you can win — starving bandits first, dust bandits once you have a companion. Fight near town where the walls and the bar are a step away.
4. *Level.* Every stat trains through use, and losing is not failing: getting knocked down and getting back up is how Toughness grows. Let the loop feed itself.
5. *Repeat.* The first week you scrape by on copper and scraps; by the end of the first month you will be the reason the dust bandits avoid the road.

#callout("Tip:", [The Hub has a ruined but standing building with two free beds you can use to heal — the wiki notes it "can help speed up the healing rate of your characters." Enter with caution, though: not everyone inside is friendly.])

#callout("Warning:", [Never leave the gates without food, bandages, and a plan. In Kenshi the difference between an adventure and an obituary is usually a backpack with one loaf of bread and one medical kit.])

=== Your First Week: A Sample Routine

The mechanics above become muscle memory through repetition, so here is a concrete first week — the same shape your actual first week will take, with room to improvise:

*Day 1 — the first copper.* Mine by The Hub's gates until your backpack is full, sell at the bar, and repeat until you have a few hundred cats. Buy a medkit and food before nightfall; sleep in The Hub's ruined shack or rent a bed.

*Day 2 — the first companion.* With a few hundred cats saved, check The Hub's bar for a hireling "looking for work". A standard recruit costs roughly 3,000 cats at base, so you may need a third day of mining first — but as soon as one joins, split the labour: one mines, one stands watch.

*Days 3–5 — the first honest fights.* Now that you have a partner, let starving bandits come to you near the gates. Fight near town, bandage after, and let the losses be training: Toughness climbs every time you get back up. Keep selling copper to fund better gear and more food.

*Days 5–7 — the first outpost job.* By now you can set up a mining job loop (mine → auto-haul to storage → medic) so the operation runs while you trade. When the dust bandits start being a nuisance, you have a choice — keep grinding in The Hub, or set out for Squin to the west and see what the wider world asks of you.

#callout("Tip:", [Write nothing down; Kenshi remembers it for you. The game tracks every stat gain, every recruit, every injury. If your plan for the week collapses, the correct response is not reloading — it is limping home, healing up, and learning why the plan collapsed. That is the game.])

=== Common Beginner Mistakes

- *Wandering at night.* Darkness hides enemies, and the desert is full of things that hunt in it. Camp, or keep to the streets of a town, after sunset. Your character will walk through the dark cheerfully — you have to choose not to.
- *Triggering aggro.* Getting too close to hostile squads, animals, or the wrong side of a faction fight. Learn the red rings, respect aggro ranges, and use right-click retreat the moment something hostile turns toward you.
- *Carrying no food.* Leaving with an empty backpack means fainting on the road, starving in a ditch, and losing everything. Food is not optional cargo; it is the one thing you never leave without.
- *Fighting fair fights.* Kenshi punishes honour. Use town guards, use the bar, use numbers, use the terrain — and use retreat. Winning an ugly fight is still winning.
- *Ignoring bleeding.* Surviving a fight at 1 health then bleeding out on the way home is the classic beginner death. Bandage cuts before you loot; corpses will wait.
- *Overloading yourself.* Carrying far more than your strength allows slows you to a crawl and can get you caught by anything. Stay under half your carry weight when travelling, and accept that the copper will still be there tomorrow.
- *Mining far from the gates.* The nodes in the distance are the same copper as the nodes by the wall, but the distant ones come with a dust bandit tax. Mine where the town can save you.

None of these are fatal lessons. Kenshi expects you to make them, survive them, and come back stronger — that is the point of the loop. By the time the loop stops scaring you, you will be ready to leave The Hub behind, and that is where Wave 1: The Outlander begins.
