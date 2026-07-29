#import "../../../typst/styles.typ": *

= Strategy — Wave 1

Wave 1 is where you stop reacting and start planning. This section covers mid-game strategy: economics, politics, warfare at scale, and the social game that determines who rises and who falls in Calradia.

== Mid-Game Economics

By now, trading between towns should feel familiar. Wave 1 introduces the next tier of economic play: passive income. You do not want to be the person hauling grain between villages. You want the grain to make you money while you are fighting a war on the other side of the map.

=== Workshops

Workshops convert raw materials into finished goods. You buy a workshop in a town, assign a production type, and it generates daily income. The profit margin depends on three variables: the local price of raw inputs (the cheaper the better), the local demand for the finished product (higher prosperity towns buy more luxury goods), and the presence of competing workshops in the same town.

The single most important factor is village-bound production. Every town has two to four attached villages that supply specific raw materials. A town fed by grain villages will have cheap grain, making a Brewery highly profitable. A town fed by iron villages will have cheap crude iron, feeding a Smithy. Check the village production by hovering over each village on the campaign map before you buy a workshop — the wrong raw materials mean the workshop starves or operates at a loss.

Prosperity matters too. High-prosperity towns consume luxury goods faster: Velvet Weavery in Sanala or Ortysia can earn 400--600 denars per day, while the same workshop in a struggling frontier town barely breaks even. However, high-prosperity workshops are more expensive to buy and riskier — if the town is besieged, prosperity crashes and so does your income.

The most reliable workshop types, in descending order:

#table(
  columns: (auto, 1fr, auto),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Workshop*], [*Ideal Location*], [*Avoid*],
  [Brewery], [Towns with 2+ grain villages (Jaculan, Pravend)], [Towns that already have a Brewery],
  [Smithy], [Towns with iron villages (Epicrotea, Diathma)], [High-prosperity towns with no cheap iron],
  [Velvet Weavery], [High-prosperity towns with silk villages (Ortysia, Amprela)], [Frontier towns with low prosperity (below 3000)],
  [Tannery], [Towns with hide-producing villages, cheap input], [Desert regions where hides are scarce],
  [Wine Press], [Towns with grape villages (Lageta, Charas)], [Northern towns — grapes do not grow in Sturgia],
)

#warning-box[Avoid Pottery workshops in towns that already have a Pottery shop. Workshop income is reduced by local competition — two Potteries in the same town split the market and both underperform. Before buying, check the town's current workshop list by talking to one of the shop workers.]

Workshops cost 13,000--15,000 denars to purchase. Expect daily income of 100--500 denars depending on location and type. A well-placed Brewery pays for itself in roughly 30--45 days. A poorly chosen workshop might earn 30 denars a day and take over a year to break even. Think before you buy.

=== Caravans

Caravans are mobile trade operations led by a companion. You pay a setup fee of 15,000 denars, your companion takes 30 troops from your party, and the caravan travels the map independently, buying low and selling high.

A caravan's profitability depends almost entirely on the companion leading it. The formula is not complex: companions with high Trade skill spot better deals, companions with high Scouting skill avoid enemy parties and dangerous terrain, and companions with high Tactics skill survive if they do get caught. The ideal caravan leader has 100+ Trade and 80+ Scouting. A companion with 25 Trade and 20 Scouting will produce a slow, vulnerable caravan that earns half as much and dies twice as fast.

Caravan income is variable. A well-led caravan in peacetime earns 200--1,200 denars per day. In wartime, caravans become targets. Enemy lords with cavalry-heavy parties will hunt your caravans down. Losing a caravan costs the 15,000 denar investment plus the companion's equipment and troops — a devastating setback in the early game. If your faction is at war with two kingdoms, consider parking your caravans by disbanding and re-creating them when peace returns. The daily cost of an idle caravan is zero. The cost of a dead caravan is everything.

#warning-box[Low-Scouting companions get ambushed. It is that simple. If you send a companion with 30 Scouting into a zone patrolled by 100-man cavalry parties, the caravan lasts about a week. Train a companion in Scouting before sending them out, or accept that cheaper companions produce shorter-lived caravans. The 15,000 denar setup fee plus troop costs means each destroyed caravan sets you back roughly 20,000 denars.]

You can also assign better troops to the caravan. When you create the caravan, the troops are drawn from your party. If you have 30 elite cavalry sitting in your garrison, transfer them to your party before creating the caravan. Better troops means the caravan survives border skirmishes with bandits and can sometimes even escape larger enemy parties.

=== Land Ownership -- Fiefs

At Clan Tier 2 or higher, you can be granted fiefs — castles and towns — when you join a kingdom as a vassal. Fiefs are the ultimate long-term investment. They produce income, serve as a base of operations, and mark your transition from wandering mercenary to landed noble.

Fief income has three components. Tax revenue scales directly with prosperity: a 5,000-prosperity town produces roughly 500 denars per day in taxes, while a 1,500-prosperity castle might produce 150. Tariff income depends on how much buying and selling happens in the town's market — more caravans stopping means more tariffs. Garrison expenses subtract from these gains: you pay daily wages for every soldier stationed in the fief, and a full garrison (200--300 troops) can cost over 1,000 denars per day.

The net result is that a newly captured fief is a money pit. Prosperity is low because the town was just looted. Loyalty is low because the populace resents their new ruler. Construction is stalled because the town is starving. It will lose money for weeks or even months before becoming profitable. Budget for this — keep 50,000--100,000 denars in reserve before accepting a fief. If you take a town without savings, garrison wages will bankrupt you within a week.

Building projects upgrade your fief's infrastructure: walls provide siege defense, Fairgrounds boost loyalty and construction speed, Workshops inside the town generate additional income, and Granaries prevent starvation during winter or siege. Each project takes 30--60 in-game days and costs several thousand denars. Prioritize Fairgrounds first for the loyalty boost (faster construction on everything that follows), then Granary for food security, then income-generating buildings.

#tip-box[You can sell your workshops and caravans if you need emergency gold. Workshops sell for roughly their purchase price minus the last month's profits. Caravans can be disbanded from the Clan screen, recovering nothing — you lose the full investment. Consider workshops the safer passive income vehicle.]

== Kingdom Politics

=== Influence

Influence is the political currency of Calradia. You earn it, spend it, and hoard it. Unlike gold, which primarily solves individual problems, influence solves collective problems — it lets you shape the decisions of your entire kingdom.

The primary sources of influence:

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Source*], [*Amount*], [*Notes*],
  [Winning battles], [3--8 per battle], [Scales with enemy lord rank and force size. Defeating a king grants the most.],
  [Successful sieges], [10--20], [Taking a castle or town grants a significant burst. Leading the siege grants more.],
  [High Charm], [Passive daily], [Charm skill generates influence passively. At 200+ Charm, you generate 2--3 per day without fighting.],
  [Forum building], [Passive daily], [A Forum in your fief generates 1--2 influence per day per fief.],
  [Council of Commons], [Modifier], [This policy boosts influence generation for all clans by 10--20%.],
  [Donating prisoners], [Variable], [Donating captured lords or troops to allied dungeons grants influence based on prisoner value.],
  [Tournaments], [0.5--2], [Winning tournaments in friendly towns grants a small influence bonus.],
)

Spending influence is where strategy matters. Army cohesion costs 1--3 influence per day, and larger armies cost more — leading a 1,000-man army to siege a distant town might cost 80--100 influence over the campaign. Proposing policies costs 20--50 influence. Overruling the council on a decision (claiming a fief over their objection) costs 50--100 influence. Claiming a fief after a siege costs influence based on how badly you want it — the more you spend, the more likely the council votes in your favor.

The cardinal rule: never spend influence you do not have. If your influence hits zero, you cannot form armies, propose policies, or claim fiefs. In wartime, an influence-dry vassal is a spectator, not a participant.

=== Policies

Each kingdom has active policies that provide bonuses and penalties to every clan. Policies are voted on by the council, and you can support or oppose them depending on your position within the kingdom.

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Policy*], [*Effect*], [*Strategic Advice*],
  [Council of Commons], [+1 influence per notable in settlements you own], [*Support.* Passive influence generation is always valuable. This is one of the best policies in the game for any vassal.],
  [Senate], [-20% influence cost for all council decisions], [*Support.* Makes everything cheaper — army cohesion, claiming fiefs, proposing policies. Especially valuable if you lead armies frequently.],
  [Feudal Inheritance], [Fiefs pass to your clan on death, but -1 influence per fief you own], [*Oppose as a small vassal.* The influence penalty hurts when you have few fiefs. Support only when you own 3+ fiefs and the penalty is outweighed by inheritance security.],
  [Noble Retinues], [+25% party size for all clans], [*Support.* More troops means stronger armies, better sieges, and more influence from battles. Always good.],
  [Citizenship], [+0.5 loyalty in settlements, -5% tax income], [*Support if governing fiefs.* Loyalty boosts construction speed. The tax penalty is minor compared to the benefit of faster building completion.],
  [Imperial Towns], [+10% tariff income, -1 loyalty in towns], [*Situational.* Useful if your fiefs have high loyalty surplus. If loyalty is already low, this can push towns into rebellion.],
  [Royal Guard], [Ruler clan gains +30 party size, other clans -5% tax income], [*Oppose as a vassal.* This directly benefits the ruler at your expense. The party size boost goes to someone who already has the largest army.],
  [Sacred Majesty], [+10% influence for ruler, -5% for everyone else], [*Oppose as a vassal.* Same logic as Royal Guard — it funnels power to the ruler and weakens everyone else.],
  [Bailiffs], [+10% tax income, -1 loyalty], [*Situational.* Money now at the cost of future growth. Support only if you need immediate gold and can afford the loyalty dip.],
  [Deeds of the King], [Ruler gains +20% renown, other clans -10%], [*Oppose.* Renown determines clan tier progression. Why would you slow your own climb to speed up the ruler's?],
)

=== Councils & Voting

When a decision needs to be made — declaring war, making peace, assigning a fief — the kingdom council votes. Each clan's vote is weighted by its current influence: a clan with 300 influence casts a heavier vote than a clan with 50.

Voting with the majority builds relations with everyone who also voted that way. If the ruler proposes war and six of eight clans vote yes, you earn +2 to +5 relation with each yes-voter by joining them. Voting against the majority costs relation with the winners and marks you as difficult — useful if you need to oppose a bad war, but do not make a habit of it.

Abstaining costs nothing and offends no one. If you do not care about the outcome or do not want to risk political capital, abstain. This is the correct move perhaps half the time — save your political fights for the votes that actually affect your holdings or your war plans.

Proposing your own initiatives costs influence (20--50) but lets you set the agenda. Propose policies that benefit you while your influence pool is high and your relations with other clans are strong. If you propose a policy and it loses 8-1, you have burned influence and made no friends. Read the room before proposing.

=== Marriage & Alliances

Marriage in Bannerlord is both a mechanic and a roleplaying tool. To marry a noble, you must first build relation with their clan above 20, then pass a series of persuasion checks with the family patriarch or matriarch. Once married, your spouse joins your clan as a companion-level character with their own skills, equipment, and combat abilities.

The strategic value of marriage lies in the relation boost. Marrying a daughter of Clan dey Meroc instantly raises your relation with every member of Clan dey Meroc by 10--20 points. In political terms, this is priceless. Clan dey Meroc now votes with you on the council, supports your claim to fiefs, and sends reinforcement parties when you call an army. One marriage can transform the internal politics of your kingdom.

Spouse skills matter too. A spouse with high Steward can manage your party's logistics. High Medicine means fewer deaths after battle. High Leadership means better morale and larger parties. Find a spouse whose skills complement your build — if you are a combat-focused character, marry a Steward or a Surgeon. If you are an economist, marry a tactician who can lead armies while you handle the books.

Children become playable clan members after enough in-game time passes (roughly 18 in-game years from birth). This is a long-term investment but central to Bannerlord's dynasty system. Your children inherit experience multipliers from their parents — two high-level parents produce children who level faster.

#tip-box[Marry for politics, not for stats. The relation boost with the spouse's entire clan is more valuable than one extra skill point. A spouse with 120 Steward from a clan that controls three towns is worth more than a spouse with 180 Steward from a clan with no land and no votes.]

== Army Composition & Tactics

In Wave 0, you won battles by having better troops. In Wave 1, you win battles by having better \emph{formations.}

=== The Rock-Paper-Scissors of Troop Types

Every troop type has a counter. Understanding this matrix is the difference between winning with 50 casualties and winning with 200.

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Troop Type*], [*Strong Against*], [*Weak Against*],
  [Shield Infantry], [Archers, enemy infantry in prolonged melee], [Heavy cavalry charges, horse archer harassment against a static shield wall],
  [Shock Infantry / Two-Handers], [Shield infantry — two-handed axes break shields and cleave through blocks], [Archers and crossbowmen — no shield means every arrow finds flesh; cavalry lances — no shield to brace against],
  [Archers], [Unshielded infantry advancing over open ground, horse archers in ranged duels], [Shield infantry in shield wall formation advancing steadily, cavalry flanking archer lines],
  [Crossbowmen], [Heavy armor — crossbow bolts penetrate plate; shielded infantry at medium range], [Fast-moving targets like light cavalry; being overrun before they can reload between volleys],
  [Heavy Cavalry], [Archers from behind, isolated infantry scattered during a charge, routing enemies], [Braceable spears in dense formations — horses stop dead on pike walls; dense forest that breaks formations],
  [Horse Archers], [Slow infantry in open terrain, static formations that cannot reposition fast enough], [Dense forests that block maneuver; disciplined shield walls backed by crossbowmen who can punch through at range],
)

No army of a single type survives contact with its counter. A pure-armer composition is a roleplay choice, not a tactical one. The minimum viable army for Wave 1 contains shield infantry to anchor a line, archers or crossbowmen to project ranged damage, and cavalry to exploit flanks and chase routers.

=== Formation Basics

Before battle, you can assign troops to formations through the pre-battle deployment screen. This is not optional — charging your entire army in one blob is how you lose high-tier troops to preventable deaths.

Assign Formation 1 (Infantry) to a shield wall on elevated ground. The high ground provides a damage bonus for ranged troops behind the infantry and makes enemy cavalry charges slower. Assign Formation 2 (Archers) behind the infantry line, also elevated if possible. Archers should have clear sightlines to the enemy's approach. Assign Formation 3 (Cavalry) to one flank, ideally hidden behind terrain — a hill, a forest, or a ridgeline. Cavalry spotted too early loses the element of surprise. Assign Formation 4 (Horse Archers) to the opposite flank for harassment and skirmishing.

During battle, the F1 commands govern behavior: F1+F1 holds position (infantry anchors), F1+F2 follows you (for repositioning cavalry), F1+F3 charges (only use when the enemy is already breaking), F1+F4 advances (infantry pushes forward while maintaining formation). F2 sets the formation's facing direction — always face toward the enemy's main advance or toward the most dangerous threat. F3 sets formation shape: Shield Wall for infantry under arrow fire, Skein for cavalry charges, Line for archers to maximize firing arcs, Circle for anti-cavalry defense. F4 toggles fire-at-will for ranged troops — turn it off when you want archers to hold volleys until the enemy is in optimal range. F6 delegates command to the AI, which is serviceable for flank formations while you micro the main line.

=== The Hammer and Anvil

The most fundamental battlefield tactic in Calradia, executed in three steps.

\emph{Step 1: The Anvil.} Deploy your shield infantry as a solid line facing the enemy advance. Give the Hold command (F1+F1). Their job is not to kill — it is to absorb the enemy charge and lock them in place. Deploy archers behind the infantry, elevated, with fire-at-will enabled. The archers deal damage while the infantry holds.

\emph{Step 2: The Hammer.} While your infantry engages, lead your cavalry in a wide arc around the enemy's flank. Stay at maximum bow range until you are past their formation. Do not cut the arc early — if the enemy sees cavalry approaching their flank, they will pivot to face it, and now you are charging into prepared spears instead of exposed backs.

\emph{Step 3: The Strike.} When the enemy line is fully engaged with your infantry — you will see the formations merge into a chaotic melee — charge your cavalry into their rear. Rear attacks bypass shields entirely. They cause massive morale damage because the AI detects "attacked from behind" as a death sentence. A single cavalry charge into the rear of a committed enemy line can break 200 men in seconds. Immediately after the charge connects, issue Charge (F1+F3) to your infantry to capitalize on the rout.

#tip-box[Timing the hammer strike is the hardest part of this tactic. Charge too early, and the enemy rear ranks wheel around to face your cavalry with intact formations and braced spears. Charge too late, and your infantry breaks before you engage. Watch for the moment the enemy infantry transitions from advancing to swinging — that is when they are committed and cannot reposition.]

=== Siege Tactics

Sieges are the defining battles of Wave 1. Taking or defending a castle or town is where wars are won, lost, and where you earn the fame that gets you noticed by kings. A successful siege defense against superior numbers can earn more renown than five field battles combined.

\emph{Attacking.} Build your siege camp outside the walls. Construct at minimum a ram and one siege tower — the ram for the outer gate, the tower for the walls. Trebuchets provide a decisive advantage: build four trebuchets, move each to reserve the moment it is completed so enemy catapults cannot destroy it, then deploy all four simultaneously to overwhelm wall defenses. Once the walls are bombarded, lead the assault personally. Your first priority climbing the walls is enemy archers — they will shred your troops as they come up the ladders. Your second priority is the gatehouse controls to open the main gate for reinforcements.

\emph{Defending.} Destroy enemy siege engines with your own catapults before they reach the walls — a single catapult crewed by a high-Engineering character can destroy a ram and a siege tower before they close the distance. Station archers on the walls with fire-at-will and infantry at the gatehouse and along the walls. If the enemy breaches the outer wall or gate, fall back to inner choke points — staircases, narrow courtyards, and keep entrances where numbers count for less. Your first priority in defense is destroying the enemy ram. A ram that reaches the gate will break it within two minutes. A ram destroyed halfway across the field buys you the entire siege duration.

#warning-box[Sieges take time. Building a full siege camp with trebuchets and towers takes 6--10 in-game days. During that time, an enemy relief army may arrive to break the siege. Check your diplomacy screen for nearby enemy armies before committing to a siege. If a 600-man army is two days away and your siege has three days to go, retreat. You will lose the field battle.]

== Companion Development

Companions in Wave 1 are not just helpers — they are officers who can lead their own parties, govern fiefs, and fill roles that let you delegate the work you no longer have time to do yourself.

=== Role Specialization

Each companion should specialize in exactly one role. Spreading skills across multiple roles produces mediocre performance in all of them. The five roles and their governing skills:

#table(
  columns: (auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Role*], [*Key Skills*], [*Function*],
  [Scout], [Scouting, Tactics], [Detects enemy armies before they detect you. Higher Scouting = larger detection radius on the campaign map. A good scout sees threats two days before they arrive.],
  [Surgeon], [Medicine], [Reduces deaths after battle. At 120 Medicine, roughly half of your wounded troops survive instead of dying. This compounds over a campaign — the surgeon you invest in at Clan Tier 2 saves thousands of troops by Clan Tier 5.],
  [Quartermaster], [Steward], [Increases party size by 10--30 troops and improves food efficiency. A high-Steward quartermaster stretches the same food supply to feed 50 more soldiers.],
  [Engineer], [Engineering], [Speeds up siege construction by 30--60%. A 200-Engineering engineer builds a trebuchet in a day instead of three. In a war of sieges, speed is the deadliest weapon.],
  [Governor], [Steward, Medicine, Engineering, Charm], [Governs a fief in your absence. Steward speeds construction, Medicine boosts prosperity growth, Engineering improves wall strength, Charm raises loyalty. The governor's skills apply as modifiers to the fief's stats.],
)

=== Companion Parties

At Clan Tier 2, you can create a companion-led party that operates independently. The party recruits troops from towns and villages, fights battles, raids bandit hideouts, and generates income through trade and combat loot. You pay a daily wage for the party (roughly 2--10 denars per troop, depending on tier), but a well-managed companion party typically earns more than it costs through battle loot and trading.

A companion party can be called into your army at no influence cost, which makes them your personal reinforcements. When you march to war, summon all companion parties first, then spend influence to call allied lords. Your own parties are free.

The companion's Steward skill determines the maximum party size — a 100-Steward companion leads roughly 60 troops. Leadership increases morale, which prevents desertion after losses. Tactics, Scouting, and combat skills determine how well the party survives encounters. Do not send a companion with 20 in all skills to lead a party — they will get wiped by a bandit group. Invest in companion skills before giving them a command, or accept that you are buying a temporary asset.

#tip-box[Companion parties are your first taste of delegation in Bannerlord. A well-managed party is a net positive — it earns money, gains renown, and provides free reinforcements. A poorly managed party is a money pit that bleeds denars, loses troops, and calls for rescue across the map. Do not create a party for a companion you have not invested in.]

== Faction Selection

In Wave 0, you stayed mostly in Vlandia and Battania. In Wave 1, the entire map is open. Your choice of faction determines the culture of your troops, the political environment you operate in, and the enemies you fight. Each of the six major factions has distinct strengths, weaknesses, and narrative hooks.

#table(
  columns: (auto, auto, auto, 1fr),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Faction*], [*Strengths*], [*Weaknesses*], [*Narrative Fit*],
  [Vlandia], [Best shock cavalry in the game, strong crossbowmen at all tiers, defensible western border with only one land approach, excellent sieges due to crossbow firepower], [Slow shield infantry that struggles against fast-attacking two-hander troops, poor horse archers, heavy reliance on cavalry for damage means forest battles are difficult], [Your homeland. Your uncle rules here. Joining Vlandia as a vassal puts you in direct proximity to the man who stole your birthright — and the lords you would need to turn against him.],
  [Battania], [Deadliest archers in the game — Fian Champions are the strongest ranged unit period, forest mobility bonus lets you outmaneuver any army in woodland terrain, strong individual champions for tournament play], [Weak cavalry forces with no heavy cavalry option, surrounded on all sides by aggressive factions, poor siege performance without cavalry to break enemy formations on walls], [The people who sheltered you when you had nothing. Returning as a proven captain lets you repay that debt — or reclaim it. Battanian lords respect results over bloodlines, making them natural allies for an exile.],
  [Empire], [Most balanced roster — good at everything, master of none, central position on the map means access to all trade routes, civil war split into three factions gives you choice of which emperor to back], [No standout troop type — Battanian archers, Vlandian cavalry, and Sturgian infantry all outclass their Imperial counterparts in their specialty, surrounded by four aggressive kingdoms on every border], [The Empire is Calradia's center of gravity. Meddling in imperial politics puts you at the table where the fate of the continent is decided. Playing kingmaker between the three claimants is a valid path.],
  [Sturgia], [Best shield infantry — Druzhinnik Champions hold a line like no other troop, strong in sieges both attacking and defending due to infantry quality, rugged snow terrain slows enemy cavalry], [Slowest army on the campaign map — heavy infantry and long supply lines, poor archers at all tiers, vulnerable to horse archer harassment that infantry cannot catch], [Sturgia respects strength above all. You earn your place through combat, not politics. For an exile who built their reputation on battlefields, Sturgian lords recognize a kindred spirit — someone who rose through blood and steel.],
  [Khuzait], [Best horse archers — Khuzait Khan's Guards dominate open-field battles, fastest campaign map movement speed, excellent raiding capability to harass enemy supply lines], [Weak infantry across every tier, poor in sieges where cavalry cannot maneuver, low armor on most troops means archer-heavy enemies inflict disproportionate casualties], [The Khuzait are outsiders to the Calradian establishment, much like you. They value mobility, self-reliance, and results over tradition. An alliance with the Khuzait gives you the fastest path to military dominance and the loosest cultural expectations.],
  [Aserai], [Strong versatile cavalry with both melee and ranged options, excellent trade routes with desert protection, defensible homeland with chokepoints and minimal borders, strong economy for long-term development], [Weak early-game infantry that improves only at higher tiers, geographically isolated — takes time to march anywhere, desert terrain drains speed if you lack Riding skill], [The Aserai homeland is a safe base to build power before marching north. If your long-term plan is to return to Vlandia with an army behind you, building your fortune in the desert gives you distance, safety, and the economic foundation to fund a campaign across the continent.],
)
