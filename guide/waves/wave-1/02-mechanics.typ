#import "../../../typst/styles.typ": *

= Mechanics — Wave 1

This section covers individual game systems in depth. Each mechanic is explained with its underlying rules, optimal strategies, and how Wave 1 mods may affect it.

== Smithing Deep Dive

Smithing is the most profitable skill in Bannerlord when done correctly. It is also the most misunderstood. Many players ignore smithing entirely, dismissing it as a side activity — those players are leaving millions of denars on the table.

=== How Smithing Works

You forge weapons from raw materials at any town's smithy. Stamina, displayed as a smithing pool of roughly 100 units, governs how much you can smith before needing to rest. Stamina recovers by waiting in town — roughly 5--6 units per hour, meaning full recovery takes about a day of idle time. This is the game's built-in brake on smithing, but it can be bypassed by using companions as additional smiths, each with their own stamina pool.

Smithing XP is earned by forging. The higher the difficulty rating of the weapon you forge, the more XP you gain. Smelting weapons also grants a small amount of XP, but forging is the primary source. Weapon parts unlock randomly when you smelt weapons of the same type: smelting a two-handed sword has a chance to unlock a new two-handed sword part. The more valuable the weapon you smelt, the higher the chance of unlocking a new part.

Refining converts materials up the quality ladder: crude iron becomes wrought iron, wrought iron becomes iron, iron becomes steel, steel becomes fine steel, and fine steel becomes Thamaskene steel. Refining provides no XP — it is material conversion only, useful for turning surplus low-quality materials into high-quality materials for better crafting.

=== The Profit Loop

The smithing economy in Bannerlord functions on a simple principle: raw material cost is disconnected from finished weapon value. A Pugio dagger costs approximately 200 denars and smelts into materials worth 1,500--2,000 denars when crafted into a two-handed sword. This is not an exploit — it is the intended design of an economic system that values craftsmanship over raw materials.

The profit loop has four steps:

+ \emph{Step 1: Acquire cheap weapons.} Pugios (sold by Imperial towns, roughly 200 denars each) are the most efficient conversion in the game. Tribesman Throwing Daggers and Wooden Hammers are also cost-effective. Buy every Pugio you see in every town you visit — you will never find enough of them.

+ \emph{Step 2: Smelt for materials.} Pugios smelt into fine steel, steel, iron, and wrought iron. A single Pugio typically yields 1 fine steel, 1 steel, 1 iron, and 1 wrought iron. The combined material value is roughly 10x the purchase cost of the dagger.

+ \emph{Step 3: Craft two-handed swords.} Two-handed swords have the highest sale value per material cost of any weapon type. Use the highest-tier parts you have unlocked — specifically, look for Tier 5 blades, Tier 5 guards, and Tier 5 grips. Each tier jump roughly doubles the weapon's sale price.

+ \emph{Step 4: Sell.} A crafted two-handed sword with Tier 5 parts sells for 10,000--60,000 denars depending on blade length, damage, and handle style. The profit margin is typically 10x to 50x the material cost. Repeat until towns run out of money.

#tip-box[Pugios are the most efficient material-to-value conversion in the game. A 200-denar Pugio, smelted and re-crafted into a two-handed sword, produces roughly 10,000--30,000 denars. No other economic activity in Bannerlord approaches this return on investment. If your build includes any smithing at all, prioritize Pugio acquisition on every town visit.]

=== Part Unlocking Strategy

In the early game, smelt every looted weapon instead of selling it. The denars you would earn from selling a looted sword are trivial compared to the value of unlocking new parts. Focus exclusively on two-handed swords — they are the most profitable weapon type and have the most parts to unlock. Forge the highest-difficulty two-handed sword your stamina allows, as often as your stamina allows. Difficulty rating determines XP gain, and XP gain determines how fast you unlock new parts.

Use companions as additional smiths. Each companion has their own stamina pool and their own smithing skill progression. Assign one companion to smelting (they do not need high smithing skill to smelt efficiently) and another to refining (material conversion). Your main character does the forging — this concentrates XP on one character and maximizes unlock rates.

Do not refine for XP. Refining provides zero experience — it is strictly material conversion. Forge weapons for XP, smelt unwanted weapons for parts and materials, refine only when you need higher-quality materials and have surplus low-quality materials to convert.

=== Crafting for Personal Use

Not every crafted weapon is for sale. Some you will use personally. The right crafted weapon can carry you through an entire campaign.

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Weapon Type*], [*Best Use Case*],
  [Two-Handed Sword], [Versatile generalist — good balance of damage, attack speed, and reach. Effective in field battles, tournaments, and siege breaches. The default choice for most builds.],
  [Two-Handed Axe], [Shield-breaking specialist — each swing damages multiple enemies in a cleave arc. Devastates shield walls and tight infantry formations. Slow swing speed — vulnerable to fast one-handed attackers.],
  [Polearm / Glaive], [Mounted combat king — long reach lets you strike infantry from horseback without entering their weapon range. Devastating charge damage. Awkward in tight spaces and sieges.],
  [One-Handed Sword], [Siege and civic combat — used with a shield for survival in arrow-heavy environments. Lower damage than two-handers but superior survivability. The practical choice for siege assaults.],
  [Javelins], [Highest-tier javelins one-shot any unit in the game, including armored cavalry and lords. Limited ammo (typically 3--5) makes them a specialist weapon. Craft and carry for priority targets — enemy commanders, elite cavalry, and siege defenders manning wall catapults.],
)

#warning-box[Smithing orders from nobles appear at towns with smithies. Check the order details before accepting — some nobles request weapons that require parts or materials you do not have. Failing an order costs relation with the noble and their clan. If the order calls for a Tier 5 part you have not unlocked, decline it. The relation loss from declining is zero.]

== Trade Routes

Wave 0 covered basic buy-low-sell-high. Wave 1 is about market manipulation — understanding why prices move and exploiting those movements across entire trade loops.

=== Supply & Demand Mechanics

Every town maintains a pool of each trade good. The pool is affected by five forces. Village production: attached villages produce raw goods (grain, iron, clay, hardwood) and deliver them to the town. Caravan activity: visiting caravans bring goods from other regions, which lowers prices for imports and raises demand for exports. Workshop production: workshops consume raw materials (a Brewery consumes grain, a Smithy consumes iron) and produce finished goods, which lowers prices for finished products and raises prices for raw inputs. Prosperity: higher prosperity increases consumption of all goods — a 6,000-prosperity town consumes food and luxuries much faster than a 2,000-prosperity town. Recent events: a siege starves a town, rockets food prices to 3--5x normal, and crashes prosperity — creating a buy opportunity if you have food to sell and a sell opportunity once the siege lifts and prices normalize.

Understanding these forces lets you predict price movements instead of reacting to them. If you know a town has been under siege for three days, you know food prices there are astronomical. If you know a war just ended between two kingdoms, you know trade routes between them are about to reopen and prices will converge.

=== Profitable Deep Routes

The most profitable trade is not between adjacent towns — it is across the map, where regional price differences are largest.

\emph{The Silver Route} — a six-stop cycle from Vlandia to Aserai lands and back through Sturgia:

1. Buy silver and jewelry in Vlandian towns (Pravend, Ocs Hall). Silver is common in Vlandia but rare in the desert.
2. Travel south through the mountain pass and sell in Aserai towns (Sanala, Quyaz). Desert nobles pay premium prices for silver jewelry — double to triple the Vlandian purchase price.
3. Buy desert horses, dates, and beer in Aserai towns. Dates and beer are cheap in the south and scarce in the north.
4. Travel north to Sturgian towns (Revyl, Varcheg). Sturgia has no horse production — desert horses sell for 2--3x the purchase price. Food goods like dates are also scarce in the snow.
5. Buy furs and hardwood in Sturgia. The snow forests produce cheap raw materials that southern nations lack.
6. Return to Vlandia and sell the furs and hardwood. Complete the cycle.

A full Silver Route cycle takes 10--15 in-game days and produces 15,000--30,000 denars profit depending on trade skill and market conditions.

\emph{The Iron Circle} — a five-stop cycle focusing on smithing materials:

1. Buy iron ore from villages around Epicrotea and Diathma. These are the richest iron deposits in Calradia.
2. Sell iron ore to towns with smithies and active workshops — Zeonica, Onira, and Danustica all have high iron demand.
3. Buy tools and finished weapons from these smithy towns. A town that processes iron sells tools cheap.
4. Sell tools to villages. Every village buys tools for production upgrades. The demand is consistent and the margin is reliable.
5. Accumulate mules along the loop — mules increase your carrying capacity, and more capacity means more profit per trip. By the fourth cycle, a full mule train carries enough goods for 5,000+ denars profit per stop.

=== Trade Skill Perks

Trade perks improve your profit margins, unlock new capabilities, and at the highest levels fundamentally change what you can do in the economy.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Perk*], [*Skill*], [*Effect*],
  [Appraiser], [25 Trade], [Shows real market prices instead of color-coded indicators. Removes guesswork — you see exact profit-per-unit before buying. The single best early-game Trade perk.],
  [Caravan Master], [75 Trade], [+30% profit from caravans you own. Mandatory for any character who runs caravans. Without this perk, caravans are a break-even proposition. With it, they are a reliable income stream.],
  [Market Dealer], [125 Trade], [Reduces the trade penalty applied when buying low-supply goods. Normally, buying goods that a town has few of increases the price per unit — this perk halves that penalty.],
  [Granary], [225 Trade], [Purchased grain automatically converts to party food stores. Eliminates the need to separately manage food supplies — buy grain in bulk and your party eats automatically. Essential for large armies on long campaigns.],
  [Everything Has a Price], [300 Trade], [Allows you to buy and sell fiefs. The ultimate trade perk. With enough gold, you can purchase entire castles and towns from other lords, bypassing years of political maneuvering and siege warfare. Requires enormous capital — expect to pay 200,000--500,000 denars per fief.],
)

== Influence Management

=== Generating Influence

Influence is earned more efficiently than it is in Wave 0, because the activities that generate influence — large battles, sieges, and fief ownership — are exactly the activities Wave 1 is built around.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Source*], [*Amount*], [*Strategy*],
  [Winning battles], [3--8 per battle], [Seek out enemy parties equal to or smaller than your force. Even-odds battles generate influence efficiently and safely. Do not chase unwinnable fights — the influence gain is not worth the troop losses.],
  [Successful sieges], [10--20 per siege], [The most efficient influence source in the game. One siege buys enough influence to fund an army for a week. Prioritize sieges when your influence pool is low.],
  [High Charm], [Passive daily], [Invest focus points in Charm early. Each point generates influence passively every day — 200 Charm generates roughly 2--3 influence per day, which adds up to 700--1,000 influence per in-game year without fighting a single battle.],
  [Forum building], [Passive daily], [The Forum is the best building in any fief. It generates 1--2 influence per day and stacks across multiple fiefs. Two fiefs with Forums generate as much influence as a minor battle every day.],
  [Council of Commons policy], [Modifier], [Amplifies all influence generation. If this policy is active in your kingdom, the bonus applies to every influence source. Support this policy every time it comes to a vote.],
  [Donating prisoners], [Variable], [After capturing nobles, donate them to an allied town's dungeon for influence. High-value prisoners (enemy faction leaders, high-tier clan members) grant 5--15 influence each. Do not ransom captured lords if you have a dungeon and need influence.],
)

=== Spending Influence

Army cohesion is the primary influence drain. Leading a 1,000-man army costs 2--3 influence per day. A two-week siege campaign costs 28--42 influence just in cohesion. Add in the influence cost to summon lords (1--3 per clan, depending on their size and willingness), and a major military campaign can consume 80--120 influence. Pool 100 or more influence before committing to an extended campaign.

Voting costs 20--50 influence to propose policies. Overruling the council on a fief assignment costs 50--100 influence. The more you spend when claiming a fief, the more likely the council votes in your favor — think of it as a bid, not a flat cost. Spending 100 influence on a fief claim signals to the AI that you want it badly, and council members who already like you will support the claim.

#tip-box[Pool 100+ influence before joining a siege campaign. The cohesion cost alone will drain 30--50 influence over two weeks. If you start a campaign with 30 influence and the kingdom votes to continue the war, you become a spectator — unable to lead your army while other lords take the fiefs you bled for.]

=== Influence Economy

Think of influence as a resource like gold, with earning, saving, and spending phases. Earn influence during peacetime through tournaments, bandit hunting, passive Charm generation, and Forum buildings. Hoard influence when you do not need to spend it — influence does not decay, so there is no cost to stockpiling. Spend aggressively during wartime — wars are when influence buys outcomes. Claim fiefs while they are available; the peace treaty will make them unavailable for months.

Protect your influence income. Oppose policies that reduce influence generation, especially Sacred Majesty and Royal Guard, which funnel influence to the ruler at vassal expense. If a policy reduces your influence generation by 20%, that is a permanent tax on every battle, siege, and building you own.

#danger-box[A kingdom out of influence cannot form armies. If the entire council runs dry, the kingdom cannot declare war, defend itself, or organize sieges. Never let your personal influence pool hit zero, and watch the kingdom's overall influence health — a faction with no influence is a faction about to lose territory.]

== Fief Development

When you own a fief, you are responsible for its development. A neglected fief starves, rebels, and eventually becomes someone else's problem. A well-managed fief becomes the economic engine that funds your wars.

=== Buildings Priority

Not all buildings are equal. Build order matters more than build variety — the first two projects determine whether your fief thrives or stagnates.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Priority*], [*Building*], [*Why*],
  [1], [Fairgrounds], [Always first. Fairgrounds increase loyalty by +1. Loyalty accelerates all future construction — each point of loyalty above 50 reduces construction time by roughly 5%%. A Fairgrounds pays for its own build time within three subsequent projects.],
  [2], [Granary], [Food storage prevents starvation during siege and winter. Starvation kills prosperity and loyalty — two stats that take months to recover. A Granary is cheap insurance against events you cannot control.],
  [3], [Workshop], [Generates income. More prosperity means more income — the Workshop and prosperity form a virtuous cycle where each makes the other better. Build this third, after the foundation of loyalty and food security is established.],
  [4], [Militia Grounds], [Generates free militia troops without wages. Militia do not cost denars per day like garrison troops — they are pure defense. Build this when you need protection but cannot afford a large garrison wage bill.],
  [5], [Walls], [Upgrades siege defense rating. Build only if your fief is on a hostile border and you expect attacks. Walls take 60--90 days — you cannot afford this build time unless loyalty and food are already secured.],
  [6], [Siege Workshop], [Faster siege engine construction when attacking from this fief. Useful only if the fief serves as a forward base for offensive campaigns. A niche building — prioritize the other five first.],
)

#tip-box[Do not build everything at once. Most building projects take 30--60 days each at normal loyalty. Full development of a fief (all 6 buildings at Tier 3) takes roughly 1--2 in-game years. Loyalty first, food second, income third. Everything else is a luxury you earn when the basics are stable.]

=== Garrison Management

You pay daily wages for every soldier stationed in your fief's garrison, separate from your party's wage bill. Auto-recruitment automatically hires troops over time from visiting villagers and recruits. This sounds convenient — it is also a trap.

Quality matters more than quantity. Fifty Tier 3 troops hold a settlement more effectively than 100 Tier 1 recruits, and they cost roughly the same. Disable auto-recruitment and manually stock your garrisons with mid-tier troops recruited from your own culture. Seventy Tier 3 Imperial Infantrymen behind a Tier 2 wall will repel most siege assaults.

Set a wage limit of 500--1,000 denars per day per fief. In the Clan screen, under the Parties tab, you can set a maximum daily wage for each garrison. When the garrison's total wage bill exceeds this limit, auto-recruitment stops. Set this limit to match your passive income — if your workshops and caravans earn 1,500 denars per day, set your total garrison wage limit to 800--1,200, leaving room for party wages and personal expenses.

#warning-box[Garrison wages will bankrupt you if left unchecked. A 200-troop garrison of mixed tiers costs 800--1,400 denars per day. Two fiefs with unchecked garrisons drain 2,500 denars daily — 75,000 denars per in-game month. Check the Parties tab under Clan management weekly and adjust wage limits. If your garrison exceeds your limit, dismiss the lowest-tier troops first.]

=== Governor Assignment

Assign a companion as governor through the Clan screen, under the Fiefs tab. The governor applies their skills as modifiers to the fief's stats.

Steward increases construction speed — a 150-Steward governor roughly doubles construction speed compared to no governor, making a 60-day project complete in roughly 30 days. Medicine increases prosperity growth rate, which accelerates tax and tariff income. Engineering improves wall strength and siege defenses. Charm increases loyalty, which accelerates everything else.

The single most impactful governor decision is culture match. If the fief's culture matches the governor's culture, the settlement gains +1 loyalty. A Battanian governor in a Battanian fief will always outperform a Sturgian governor with higher skills because the culture loyalty bonus compounds across every building project. When possible, assign governors whose culture matches the fief. The loyalty bonus is worth more than an extra 20 skill points in Steward.

#tip-box[The Governor role is the most demanding companion assignment. The companion is removed from your party permanently — they live in the fief, governed by their own AI. Do not assign your Surgeon, Scout, or Quartermaster companions as governors. Hire a dedicated governor companion from a tavern specifically for this purpose.]

== Clan Tier Progression

Reaching higher clan tiers unlocks more capabilities. Each tier is a gate that controls what you can do in the world.

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Tier*], [*Renown*], [*Party Size*], [*Unlocks*],
  [Tier 1], [50], [40], [Mercenary contracts — you can be hired by factions as a mercenary.],
  [Tier 2], [150], [60], [Companion party x1, vassalage (can join a kingdom), workshops and caravans become available.],
  [Tier 3], [350], [80], [Companion party x2, can vote on kingdom policies. The minimum tier for meaningful political participation.],
  [Tier 4], [900], [110], [Companion party x3, you are now a major player — lords seek your opinion and fear your army.],
  [Tier 5], [2,100], [140], [Companion party x4, kingdom founding (can declare your own kingdom). The threshold for independent power.],
  [Tier 6], [5,000], [180], [Maximum tier. Full party size, maximum political weight. You are one of the most powerful individuals in Calradia.],
)

=== Fastest Renown Sources

Renown is earned through deeds, and some deeds earn it faster than others. Even-odds battles produce the maximum renown per fight — the game's formula rewards battles where the player contributes significantly against a roughly equivalent force. Outnumbered victories earn more renown but carry higher risk of troop losses. If you want safe, consistent renown, pick fights equal to your own strength.

Tournaments are the most reliable safe renown source. A tournament victory earns 3--5 renown per win, takes 3--5 minutes, and carries zero risk. Participating in every tournament you pass during peacetime adds up to hundreds of renown over a campaign. Quest completions provide modest renown (1--3 per quest) but are useful in the early game when tournament frequency is limited by stamina and travel time.

Army participation earns renown based on your contribution. If you lead the siege that takes a castle, you earn the lion's share. If you join an existing army and contribute 15 troops to a 1,500-man battle, your renown gain is proportionally small. To maximize renown from army campaigns, lead the army yourself — the army leader earns the most renown from every battle and siege the army completes.
