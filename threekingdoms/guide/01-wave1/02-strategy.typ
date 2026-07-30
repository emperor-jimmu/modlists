#import "../../template/styles.typ": *

= Advanced Strategy for Wave 1

== Campaign Strategy on Hard

=== Early Game (First 20 Turns)
+ *Secure your home commandery* -- build the food chain first (farm > market > workshop)
+ *One army, one purpose* -- don't split forces early; focus on one enemy at a time
+ *Diplomacy is defense* -- use non-aggression pacts to protect flanks
+ *Spies in every court* -- embed early, reap intelligence later

=== Mid Game (Turns 20--60)
+ *Two-front planning* -- by now you have two armies; they should push opposite directions
+ *Governor assignments* -- assign characters to rich commanderies for bonuses
+ *Reform priorities* -- unlock administrative reforms before military ones
+ *Coalitions* -- join or form one to deter large aggressors

=== Late Game (Turns 60+)
+ *Kingmaking* -- once you become king, expect the "kingdom" diplomatic penalty
+ *Economic consolidation* -- ensure every territory generates profit
+ *Elite armies* -- replace militia with elite units as income allows
+ *The final push* -- three kingdoms remain; choose your moment

== Battle Tactics for Hard

- *AI uses flanking* -- always reserve cavalry for counter-flanking
- *Moral shocks* -- focus fire on enemy general; loss of general = route cascade
- *Terrain denial* -- capture high ground before engaging
- *Siege patience* -- build siege engines rather than assaulting walls directly
- *Retreat is an option* -- preserve armies, fight another day

== Mod-Aware Strategy

- New units from content mods have unique strengths -- read their descriptions
- Audio mods give cues for battlefield events (listen for unique instrument cues)
- If a mechanic mod changes public order or corruption, adjust building priorities accordingly

== Intermediate Systems (Phase 2 Training)

=== Court & Government

- *Faction Leader, Heir, and Prime Minister* give powerful faction-wide bonuses. Appoint carefully -- don't leave these slots empty.
- Assign characters to court positions based on their *traits and skills*, not just loyalty. A corrupt administrator hurts more than a disloyal one.
- Government type affects available court positions and satisfaction distribution. *Meritocracy* and *Patriarchy* have very different trade-offs.

=== Guanxi -- The Relationship System

Guanxi is the web of personal relationships between your characters. It's Three Kingdoms' most innovative system and the key to long-term campaign stability.

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Type*]),
    table.cell(fill: crimson, text(fill: white)[*How It Forms*]),
    table.cell(fill: crimson, text(fill: white)[*Effect*]),
  ),
  [Friendship], [Same army, successful battles, positive events], [+satisfaction, +battle performance when together],
  [Sworn Brotherhood], [Event chain (costs gold, requires high relationship)], [Permanent +satisfaction, unbreakable loyalty pair],
  [Rivalry], [Opposing traits, competition for positions], [-satisfaction, -battle performance when together],
  [Hatred], [Escalated rivalry or event-driven], [Severe penalties. One may betray the other.],
  [Marriage], [Diplomacy (join families) or character events], [Binds two families. Children inherit traits.],
  [Adoption], [Character event -- recruit a young hero], [Instant family member + loyalty],
)

*Managing Guanxi:*
- *Pair friends, separate rivals.* Check the character details panel for relationship icons before assigning generals to the same army. Friends give each other +3--5 satisfaction per turn. Rivals cancel that out and more.
- *Sworn brotherhood is expensive but permanent.* The event costs around 2000--4000 gold depending on character rank. It's worth it for your core generals -- they will never defect.
- *Marriage is a political tool.* Marry a talented but disloyal general into your family -- family members get massive satisfaction bonuses. Marriage also creates diplomatic alliances with the target faction.
- *Children inherit traits.* Marry two characters with "+satisfaction" or "-corruption" traits and their child may inherit those traits. Long-term dynasty planning matters.
- *Divorce is possible* but comes with severe satisfaction penalties. Only use it if the alternative is a civil war.

*Guanxi Events (with MTU Event Add-on):* With the MTU Event Add-on installed, unique characters generate additional relationship events: duels of honour, rescue missions, betrayal dilemmas, and family feuds. These add narrative depth and force you to make choices that ripple through your character web.

=== Character Development -- Skills, Traits & Ancillaries

*Skill Trees:* Every character has a skill tree with 10--15 nodes. Plan their development:

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Class*]),
    table.cell(fill: crimson, text(fill: white)[*Priority Skills*]),
    table.cell(fill: crimson, text(fill: white)[*Why*]),
  ),
  [Commander], [+satisfaction (all), army movement, replenishment], [Keeps your empire stable. Your faction-wide loyalty beacon.],
  [Vanguard], [Charge bonus, cavalry buffs, +damage], [Field general. Put them in charge of your cavalry army.],
  [Champion], [Melee evasion, duelling, +health], [General killer. Send them against enemy champions.],
  [Strategist], [Ranged damage, fire arrows, cunning], [Spy network and artillery support. Never leave home without one.],
  [Sentinel], [Melee defence, garrison, -corruption], [Best administrator. Put them in your richest province.],
)

*Traits:* Characters gain and lose traits based on their actions. A general who wins many battles gains "+morale" traits. One who loses gets "-satisfaction" traits. A character who sits idle gains "Complacent" (-satisfaction).
- *Positive traits to recruit for:* Diligent, Resolute, Inspiring, Generous, Cunning
- *Negative traits to avoid:* Corrupt, Cruel, Timid, Complacent, Arrogant
- *Trait farming:* If you have a young heir, send them with your main army to every battle -- they absorb positive combat traits. Assign them as administrator later for administrative traits.

*Ancillaries:* Every character has 3 ancillary slots (weapon, armour, accessory). Fill all 3 on every character. Even common ancillaries give small bonuses that add up across 20+ characters.
- *Weapons* -- +melee damage or +charge bonus for generals. Give your best weapon to your Vanguard or Champion.
- *Armour* -- +melee defence or +health. Give to your frontline Sentinel or Commander.
- *Accessories* -- +satisfaction, +cunning, or +commerce. Distribute based on role -- satisfaction accessories go to disloyal but talented characters.
- *Trade for ancillaries* in diplomacy. Many factions will trade a decent weapon for 500--1000 gold or a food deal.
- The *Imperial Seals* (end-game) are the best ancillaries in the game. They grant faction-wide bonuses to prestige, satisfaction, and income. Fight for them.

=== Events & Dilemmas

Three Kingdoms throws dilemmas at you every few turns. These are not flavour text -- they have real mechanical consequences.

#table(
  columns: (auto, auto, auto),
  stroke: 0.5pt + luma(200),
  table.header(
    table.cell(fill: crimson, text(fill: white)[*Dilemma Type*]),
    table.cell(fill: crimson, text(fill: white)[*Typical Choice*]),
    table.cell(fill: crimson, text(fill: white)[*Consequence*]),
  ),
  [Food vs Gold], [Give food to starving region or sell it], [Public order vs short-term cash],
  [Character Conflict], [Side with general A or general B], [The loser loses satisfaction, may defect],
  [Diplomatic Crisis], [Bow to demand or refuse], [War vs temporary stability],
  [Succession], [Choose your heir], [The unchosen heir loses satisfaction],
  [Reform Decision], [Rush a reform or invest in stability], [Tech advantage vs empire health],
)

*Dilemma strategy:*
- *Choose food and satisfaction* over money in the early game. Gold is temporary; revolts and defections are permanent.
- *Never side against your best general* unless the alternative is worse. Losing a rank 6+ Champion to defection can cost you a campaign.
- *Diplomatic dilemmas: buy time.* If a powerful faction demands something, give it to them. You can take it back when you're stronger.

=== Reforms Tree

- Prioritize reforms that match your playstyle. Do not research randomly -- every turn spent on the wrong reform is a turn of lost advantage.
- *Administrative reforms* (corruption reduction, satisfaction) scale better than military reforms for most campaigns.
- *Commerce reforms* compound over time. Invest early.
- Unlocking *purple (Governance) and green (Commerce) tree* nodes early gives a stronger economy foundation for late-game military pushes.

=== Spies & Undercover Network

- Embed *spies* early. The best time to plant a spy is before you need one. By turn 30, you should have at least one spy in your nearest rival's court.
- Secure your spy's position by having them perform *small favours* (reveal army positions) before asking them to *assassinate or sabotage*.
- *Counter-intelligence matters.* Assign a character with high cunning as an administrator in each commandery to reveal enemy spies.
- A well-placed spy can steal technologies, incite rebellions, or assassinate a faction leader -- often more valuable than an army.

=== Army Composition

- A *balanced army* (frontline + ranged + cavalry) beats pure stacks every time.
  - 4--6 spear infantry (frontline)
  - 4--6 ranged units (archers/crossbows)
  - 2--4 cavalry (flanking)
  - 2--4 shock infantry or special units
- Learn counter units: *spears beat cavalry, cavalry beats ranged, ranged beats infantry, shock infantry beats spears.*
- Keep at least one *Strategist* in your main army for their formation abilities and ranged buffs.
- As your economy grows, phase out militia units for *professional* ones -- the stat difference is significant by mid-game.

=== Training Exercises

+ Play as *Cao Cao* (best diplomatic tools) and focus on vassals + credibility.
+ Deliberately use spies to dismantle one enemy faction from the inside.
+ Build at least two specialized armies (e.g., one defensive, one aggressive cavalry).

*Success criteria:* Maintain high satisfaction across your empire. Use diplomacy + spies as effectively as armies.
