#import "../../../typst/styles.typ": *

= Mechanics — Wave 2

Advanced systems for ruling a kingdom. These mechanics assume you are the ruler — the dynamics shift significantly when you are the one making decisions for an entire faction.

== Kingdom Policies — Full Reference

This table covers every kingdom policy in Bannerlord. Unlike Wave 1's strategic overview, this is the complete mechanical reference. Each policy is explained with its exact effect, the council support required to enact or abolish it, the best era of a campaign to consider it, and a clear recommendation.

#table(
  columns: (auto, auto, auto, auto, auto),
  stroke: 0.5pt + header-color.transparentize(60%),
  [*Policy*], [*Effect*], [*Support*], [*Era*], [*Recommendation*],

  // --- Loyalty & Stability ---
  [Council of Commons], [Each notable in settlements you own grants +1 influence per day. Amplifies influence generation from every fief with notables — a town with 3 notables grants +3 influence daily.], [Council vote — most vassals support], [All eras], [*Enact and never abolish.* The single best policy in the game for any character at any stage. Passive influence generation is always valuable, always compounds, and never has a downside.],

  [Senate], [Reduces influence cost of all council decisions by 20%. Army cohesion, policy proposals, fief claims, overruling votes — all cheaper.], [Council vote — requires majority], [Mid to late], [*Enact.* The 20% discount pays for itself across every influence expense you make. If your kingdom was going to spend 1,000 influence on army cohesion in the next year, Senate saves you 200. Enact when your kingdom is large enough that influence expenses are significant.],

  [Citizenship], [+0.5 loyalty in all settlements, -5% tax income. The loyalty bonus helps prevent rebellion; the tax penalty reduces income from all your holdings by a small but compounding amount.], [Council vote], [Early to mid], [*Conditional: enact if struggling with loyalty.* If your settlements have loyalty problems — newly conquered towns, multicultural kingdoms, or border regions under constant pressure — the loyalty bonus is worth the tax penalty. If all your settlements are at 70+ loyalty, the tax penalty is wasted.],

  [Imperial Towns], [+10% tariff income from towns, -1 loyalty in all towns. Tariffs scale with trade volume — more caravans means more tariff income — but the loyalty penalty applies to every town every day.], [Council vote], [Late], [*Conditional: enact only if loyalty surplus exists.* If every town in your kingdom has 60+ loyalty, the -1 penalty is absorbable and the 10% tariff bonus is pure profit. If any town is below 25 loyalty, this policy may tip it into rebellion. Do not enact with Citizenship — the two policies cancel each other's loyalty effects while costing you 5% tax income.],

  [Feudal Inheritance], [Fiefs pass to your clan when a vassal dies without heirs, but -1 influence per fief you own per day. The inheritance security is valuable — fiefs lost when vassal clans die out weaken the kingdom — but the influence penalty scales with your holdings.], [Council vote], [Mid to late], [*Oppose as a small vassal, enact as a major landholder.* The influence penalty is negligible when you own 5+ fiefs generating passive influence. When you own 1 fief, the penalty is significant. As ruler, the inheritance security protects your kingdom's territorial integrity over decades.],

  [Trial by Jury], [Reduces the relation penalty for overruling council decisions by roughly 50%. When you override the council to claim a fief or push through a policy, the relation damage with opposing clans is halved.], [Council vote], [Mid], [*Enact if you plan to rule by decree.* If your strategy involves frequently overruling the council — claiming most sieged fiefs for yourself or your favorites — this policy saves you the accumulated relation damage. If you govern by consensus and rarely override, the benefit is wasted.],

  // --- Military ---
  [Noble Retinues], [+25% party size for all clans, both yours and your vassals'. A clan that normally fields 120 troops now fields 150. Applies to your party, companion parties, and every vassal's party.], [Council vote — universally popular with vassals], [All eras], [*Enact and never abolish.* More troops means stronger armies, better siege success, more influence from battles, and safer borders. The bonus applies to everyone, making it one of the few policies with zero political opposition. Every vassal wants this.],

  [Royal Guard], [Ruler clan gains +30 party size. All other clans suffer -5% tax income. Concentrates military power in the ruler's hands at the expense of vassal economy.], [Council vote — vassals often oppose], [As ruler only], [*Never enact as a vassal. Consider as a ruler with consolidation concerns.* As a vassal, this directly taxes you to benefit someone else. As a ruler, it gives you a personal advantage in military power, which helps you overrule the council and enforce your will. The political cost is high — vassals hate this policy and opposing it builds your reputation with them.],

  [Deeds of the King], [Ruler gains +20% renown gain. All other clans lose -10% renown gain. Renown determines clan tier progression speed — the ruler climbs faster, everyone else climbs slower.], [Council vote — vassals strongly oppose], [As ruler only], [*Never enact as a vassal.* As a ruler, only enact if you need to reach a specific clan tier quickly and are willing to slow your vassals' progression. The long-term cost is vassals who reach higher tiers slower, which means smaller parties and weaker armies. Usually not worth the political damage.],

  [War Tax], [+5% tax income from all settlements, -1 loyalty in all settlements during wartime. The income boost helps fund wartime expenses, but the loyalty penalty applies when loyalty is most vulnerable — when your settlements are newly conquered or under siege.], [Council vote], [Late], [*Conditional: enact when loyalty is high and funds are needed.* The income is modest — enough to offset maybe half of your army cohesion costs during a major campaign — but the loyalty penalty can tip border towns into rebellion during a losing war. Safe only if all settlements have 50+ loyalty even with the penalty.],

  // --- Economy ---
  [Bailiffs], [+10% tax income from all settlements, -1 loyalty. A straightforward trade of loyalty for gold. The income boost is significant for large kingdoms with many high-prosperity settlements.], [Council vote], [Mid], [*Conditional: enact when you need immediate cash and can afford the loyalty dip.* The revenue from four or five high-prosperity towns can fund a new army. But the loyalty penalty compounds with other negative-loyalty policies. If you also have Imperial Towns enacted, your towns are suffering -2 loyalty daily from policies alone.],

  [Debasement of Currency], [+15% tax income from all settlements, -2 loyalty. The most aggressive loyalty-for-gold trade in the game. The income boost is substantial — 15% of a 5,000-prosperity town's tax revenue is significant — but the loyalty penalty is severe.], [Council vote — often controversial], [Late, if ever], [*Rarely worth enacting.* The loyalty penalty is large enough that towns without strong positive loyalty modifiers will slide into rebellion. Only safe in highly stable, long-established kingdoms where every town has a culture-matched governor, Fairgrounds, and 60+ loyalty baseline. For most kingdoms, this policy causes more problems than the gold solves.],

  [Forgiveness of Debts], [+2 loyalty in all settlements, -5% tax income. The mirror of Bailiffs — trade gold for loyalty. The loyalty boost is substantial and can rescue settlements from the brink of rebellion.], [Council vote], [Early to mid], [*Enact if loyalty is a persistent problem.* Useful in multicultural kingdoms, recently conquered territories, or during the consolidation phase after rapid expansion. The tax penalty is modest and the loyalty gain can be the difference between a stable kingdom and constant rebellion suppression.],

  [Road Tolls], [+5% tariff income, -0.5 loyalty. A small trade of loyalty for trade income. The loyalty penalty is minor — half a point — making this one of the safer economic policies to enact.], [Council vote], [Mid], [*Conditional: enact if you can spare the half-point of loyalty.* The tariff boost is modest on its own but compounds with Imperial Towns and high trade volume. Safe enough to be almost always worth considering if your loyalty baseline can absorb the cost.],

  [State Monopolies], [+15% workshop income, +10% tariff income, -1 loyalty. Rewards towns with active workshops and high trade volume. The income boost is substantial but only applies to settlements where these economic activities are already happening.], [Council vote], [Late], [*Enact in mature kingdoms with developed economies.* If your kingdom has multiple towns with high-prosperity workshops and active trade routes, the income boost is significant. If your kingdom is still building its first few workshops, the benefit is minimal and the loyalty penalty is wasted.],

  [Land Tax], [+5% tax income from villages, -2% settlement prosperity growth. Shifts income from long-term prosperity growth to immediate tax revenue. Village tax income is a small portion of total kingdom revenue — this policy affects a narrow slice of the economy.], [Council vote], [Mid to late], [*Generally oppose.* The village tax income boost is modest and the prosperity growth penalty on settlements slows the long-term development of every fief. Prosperity compounds — a 2% slower growth rate over a decade of game time means your towns never reach the prosperity levels that generate major income.],

  // --- Clan & Council ---
  [Sacred Majesty], [Ruler gains +10% influence generation. All other clans lose -5% influence generation. Funnels the kingdom's political currency to the ruler.], [Council vote — vassals strongly oppose], [As ruler only], [*Never enact as a vassal. As a ruler, only enact if you have strong influence needs and can afford the vassal resentment.* The influence shift is not enormous — 10% of a ruler's already-high influence generation is noticeable but not game-changing. The vassal penalty creates a permanent negative modifier on your relationship with every clan.],

  [Peerage], [+1 influence per day for every clan in the kingdom, including yours. A flat influence bonus that benefits everyone equally — the rare policy with no losers.], [Council vote — universally popular], [All eras], [*Enact immediately and never abolish.* Free influence for everyone, no penalties, no tradeoffs. This is the policy you propose when you want to build political capital — every clan that votes yes gains relation with you, and the policy itself benefits everyone equally.],

  // --- Resources & Taxation ---
  [Hunting Rights], [Villages produce +2 food per day. A flat increase to food production across your kingdom, which improves settlement food security and reduces vulnerability to siege-induced starvation.], [Council vote], [Early to mid], [*Enact and keep.* More food means settlements take longer to starve during sieges, prosperity grows faster when food is abundant, and villages are less likely to be stripped bare by passing armies. A quiet policy with consistent, compounding benefits. No downside.],

  [Grazing Rights], [Villages produce +2 horses per day and +1 herd animal. Increases the availability of mounts for cavalry recruitment and herd animals for carrying capacity.], [Council vote], [Mid], [*Conditional: enact if your kingdom's military relies on cavalry.* Khuzait and Vlandian kingdoms benefit significantly from faster cavalry replenishment. Sturgian and Battanian kingdoms benefit less. The horse production bonus shortens the time between cavalry losses in war and cavalry replacements being available for recruitment.],

  [Serfdom], [+10% food from villages, -1 loyalty in villages. Increases food production at the cost of village stability. Village loyalty feeds into town loyalty indirectly through the economy chain — unhappy villages produce less for their attached towns.], [Council vote], [Late], [*Rarely worth enacting.* The food bonus is moderate and the loyalty penalty on villages degrades the village-to-town production pipeline. A town fed by unhappy villages receives fewer goods, earns less tariff income, and grows prosperity slower. The food you gain from Serfdom is partially offset by the economic damage the loyalty penalty causes.],
)

=== Policy Selection Strategy

Choose policies that address your kingdom's most pressing problem. If your kingdom is struggling with loyalty, enact Forgiveness of Debts and Citizenship before touching economic policies that penalize loyalty. If your kingdom is broke, enact Bailiffs and Road Tolls before touching Debasement of Currency. If your kingdom is politically unstable, enact Peerage and Trial by Jury to stabilize vassal relations.

The most dangerous trap is enacting too many negative-loyalty policies simultaneously. A town suffering -1 Loyalty from Imperial Towns, -1 from Bailiffs, and -2 from Debasement of Currency is losing 4 loyalty per day from policies alone. A culture-mismatched governor and the recent-ownership penalty push the total above -7. No amount of Fairgrounds and festival funding can outpace that. The maximum safe number of negative-loyalty policies is two for a mature kingdom, one for a growing kingdom, zero for a newly founded one.

Policies also have political costs beyond their stated effects. Every time a policy vote occurs, the clans vote based on their perceived self-interest. Supporting a policy that benefits you at vassal expense (Royal Guard, Sacred Majesty, Deeds of the King) costs relation with every clan that votes against it. Supporting a universally popular policy (Peerage, Noble Retinues, Council of Commons) builds relation with the majority. Use the political dimension of policy votes to manage vassal relations, not just to optimize kingdom stats.

== Vassal Management in Detail

=== Fief Distribution Algorithm

When a kingdom captures a fief, the game determines who receives it through a weighted algorithm. Understanding this algorithm lets you predict outcomes and spend influence strategically rather than reactively.

The algorithm's primary factor is *participation score* — a composite measure of which clan contributed most to the siege. Troops committed to the siege camp, siege engines constructed, and time spent in the siege camp all contribute. A clan that commits 400 troops, builds two trebuchets, and spends the full two weeks of the siege in the camp will have a dramatically higher participation score than a clan that arrives on day twelve with 50 troops. If you want a specific fief for yourself, lead the siege personally and commit your best troops for the full duration.

The secondary factor is *clan tier*. Higher-tier clans receive priority in fief distribution, reflecting their greater political weight in the kingdom. A Clan Tier 5 vassal with zero fiefs will outbid a Clan Tier 2 vassal with the same participation score. Clan tier is a long-term investment — everything you do to increase your renown increases your claim priority in future fief votes.

The tertiary factors are *existing holdings*, *relation with the ruler*, and *culture match*. Clans with fewer fiefs receive priority over clans with many. Clans with high relation to the ruler receive priority — the ruler's personal feelings influence the weight of their vote. Clans whose culture matches the fief's culture receive priority, reflecting the game's assumption that culturally compatible rulers govern more effectively.

As ruler, you can override the algorithm by spending influence on a specific candidate. The more influence you spend, the more likely the council accepts your choice. A 50-influence bid signals a mild preference. A 150-influence bid signals that this fief will go to your chosen candidate regardless of the algorithm. Spend influence when the algorithm's choice would create a strategic problem — giving a key border castle to a Clan Tier 2 vassal with 30 troops, for example — and let the algorithm decide when the outcome does not materially affect your kingdom.

=== Preventing Defection

Detailed loyalty mechanics govern whether a vassal clan remains in your kingdom or leaves. The three thresholds are absolute: relation above +50 is the safe zone where defection is essentially impossible; relation between -20 and +50 is the neutral zone where conditions determine defection risk; relation below -20 is the danger zone where defection is imminent.

Fief count interacts with relation thresholds. A vassal at -15 relation with three fiefs will not defect — their investment outweighs their discontent. A vassal at +10 relation with zero fiefs is a defection risk — no investment to lose, only discontent to act on. Fief grants are the emergency brake on a vassal's defection timer. When the clan screen shows a vassal as "restless" or "considering leaving," granting them any fief — even a minor castle — resets the defection timer and buys you several months.

Shared enemies provide the passive relation maintenance. Figh alongside your vassals. When the kingdom is at war, be at the front with the army that includes your discontent vassals. Each battle fought together against the same enemy generates a small relation boost that accumulates over a campaign. A vassal who sees you at every major battle will not defect, even if their fief count is low. A vassal who has not seen their king on a battlefield in years will defect even with adequate fiefs.

Marriage ties are the permanent solution. Marry a family member into a vassal's clan, and that clan gains a permanent +10 to +20 relation buff with your clan that does not decay. This buff applies to every member of their clan — the clan leader, their party leaders, their governors. A marriage tie is expensive in political capital and requires available family members, but it transforms a temporary fix into a permanent solution. The vassal whose son married your daughter will never defect unless conditions become catastrophic.

Check the clan screen regularly — at minimum every two in-game weeks during peacetime and every few days during wartime. The clan screen shows each vassal's current relation, fief count, and any status effects that indicate defection risk. A vassal whose status changes from "content" to "considering their options" has approximately a month before they act. You have time to fix the problem if you notice it early. You have no time if you notice it when the notification says "Clan dey Meroc has left the kingdom."

=== Removing Problem Vassals

Sometimes a vassal is more trouble than they are worth — a clan that consistently votes against your policies, contributes minimal troops to campaigns, and hoards fiefs without developing them. Removing a vassal is possible but expensive.

*Vote to exile* is the direct method. Propose expulsion of the clan through the kingdom council. Costs substantial influence and requires majority council support, which means you need enough relation with other vassals that they will vote with you against the target clan. The exiled clan takes their fiefs with them — those fiefs become independent or join the exiled clan's new kingdom. This is the cleanest method of removal but also the most politically expensive. Only use it when the vassal's fiefs are strategically insignificant (a single minor castle) or when you have enough influence and council support to absorb the cost.

*Provoke rebellion* is the indirect method. Identify a fief owned by the problem vassal that has low loyalty. Withdraw the garrison — the security penalty drops loyalty to zero. Stop festival funding. Let the town rebel. The rebels capture the town, removing it from the vassal's ownership, and you reconquer it from the rebel faction. The reconquered fief enters the normal distribution cycle and can be assigned to a different vassal. This method is slow — weeks of loyalty decay followed by a rebellion followed by a siege — but costs no influence and damages no relations. It is the surgical removal tool for powerful vassals with strategically valuable fiefs.

*Let enemies capture them* is the passive method. March your armies away from the problem vassal's territory. When an enemy army invades and captures the vassal's fiefs, those fiefs are now enemy holdings — and when you reconquer them, they are assigned through the normal fief distribution algorithm to any vassal you choose. The vassal may be captured during the invasion. Decline to ransom them. A vassal in an enemy dungeon cannot vote on the council, cannot oppose your policies, and earns zero influence. This method is passive and slow, but it costs nothing and carries zero political risk — you did not betray the vassal, the enemy captured them.

#danger-box[Exiled vassals join enemy kingdoms and bring three things with them: grievances against you (lowering your reputation with their new kingdom and making future diplomacy harder), border knowledge (they know exactly which castles are under-garrisoned and where your armies are positioned), and contacts (they have existing relations with your other vassals and may encourage additional defections). Exiling a vassal whose sister is married to your most loyal vassal may trigger a chain reaction of defections. Consider the clan web before wielding the axe.]

== Economy at Scale

=== Taxation Optimization

Taxation at kingdom scale is the composite result of settlement prosperity, tax rate multipliers from policies, and tariff income from trade. Understanding how these pieces interact lets you maximize kingdom revenue without crippling growth.

Prosperity is the base multiplier for all tax income. A town with 5,000 prosperity generates roughly five times the tax revenue of a town with 1,000 prosperity. Every investment you make that increases prosperity — buildings, governor assignment, food security, cultural stability — pays dividends in tax income that compound over years. A Fairgrounds that costs 3,000 denars to build and increases loyalty by +1 will, through faster construction and higher prosperity, generate far more than 3,000 denars in additional tax revenue over its lifetime.

Tax rate is the policy multiplier applied to prosperity-based income. Each percentage point of tax rate increase from policies — Bailiffs (+10%), Debasement of Currency (+15%), War Tax (+5%) — multiplies the base tax revenue of every settlement in your kingdom. This sounds appealing until you factor in the loyalty penalties these same policies impose. A -2 loyalty penalty from Debasement of Currency reduces construction speed by roughly 10% and slows prosperity growth. The 15% tax bonus is partially consumed by the prosperity it prevents from ever being earned. At kingdom scale, the math favors loyalty over tax rate — a prosperous, loyal town generates sustainable, growing income. A taxed, unhappy town generates static, diminishing income.

Tariff income is the third revenue stream. Tariffs are collected when caravans and villagers trade at your towns' markets. Higher trade volume means higher tariff income. Policies that boost tariffs (Imperial Towns +10%, Road Tolls +5%) multiply this stream. Tariff income is independent of prosperity in the short term — a town with low prosperity can still have high trade volume if it sits on a major trade route between rich kingdoms. The trade routes are the real asset. A town on the route between Vlandian silver mines and Aserai silk markets generates tariff income regardless of its own prosperity, because the caravans passing through pay tariffs at every stop.

The optimal tax strategy for a mature kingdom is: maximum loyalty policies (Forgiveness of Debts, Citizenship, Hunting Rights), moderate tax rate (Bailiffs only, skip Debasement of Currency), and maximize trade volume (Road Tolls, State Monopolies, protect trade routes from bandits). This produces growing, sustainable income rather than maximum immediate income that strangles future growth.

=== Workshop Empire Management

Workshop management at kingdom scale requires allocating the limited workshop cap across your holdings for maximum passive income.

The base cap is one workshop per clan, plus one additional workshop for each clan tier above Tier 2, to a maximum of five workshops at Clan Tier 6. This cap applies per clan, not per kingdom — your vassals also own workshops, and their workshop income funds their parties and garrison wages. You do not control vassal workshops directly, but policies like State Monopolies (+15% workshop income) benefit every workshop in the kingdom, including your vassals'.

Optimal workshop placement follows a simple rule: place workshops in towns you own whenever possible, because owning the town eliminates the rent cost. A workshop in a town you do not own pays a percentage of its profits to the town's owner. A workshop in your own town pays zero rent — 100% of profits flow to your treasury. This makes workshop placement a strategic decision alongside fief distribution. When you are determining which towns to keep for yourself versus grant to vassals, factor in which towns have the best workshop opportunities.

Synergy effects compound workshop income. A Smithy in a town you own that is fed by two iron-producing villages produces cheap iron, which the Smithy converts into tools, which your caravan trades to other towns, which generates tariff income when the caravan passes through your toll-station towns. The village-to-workshop-to-caravan-to-tariff chain turns a single 13,000-denar workshop investment into four simultaneous income streams. Identifying and exploiting these synergy chains is the difference between a workshop that earns 200 denars per day and a workshop that earns 500 denars per day while simultaneously boosting your caravans and tariffs.

#tip-box[A smithy in a town with iron villages plus a caravan trading weapons creates a compound income loop. The smithy profits from cheap raw iron. The caravan buys the smithy's weapons at wholesale prices and sells them at retail to towns without smithies. The tariff income from the caravan passing through your other towns adds a third revenue stream. One strategic workshop choice generates income across three separate systems.]

=== War Profiteering

War is expensive, but war is also profitable if you approach it as an economic activity rather than just a military one. The three revenue streams of war are captured gear, ransomed lords, and tribute payments.

*Post-battle loot* scales with enemy troop quality. Defeating a 500-man army of Tier 4 and Tier 5 troops produces dramatically more valuable loot than defeating 500 Tier 1 recruits. The gear you capture — armor, weapons, horses — sells for thousands of denars per major battle. A campaign against a well-equipped faction like Vlandia (heavy cavalry with expensive armor and horses) produces significantly more loot than a campaign against a poorly equipped faction. Choose your wars partly based on the quality of the loot you will recover — a war against Vlandia costs more in troop losses but pays more in captured equipment, and the net may be positive on both territory and gold.

*Ransoming lords* provides lump-sum income for each captured enemy noble. Higher-tier clan leaders ransom for more gold — a faction leader or high-tier clan patriarch may ransom for 10,000 to 30,000 denars. The ransom value decreases if the same lord has been ransomed repeatedly — the game tracks ransom fatigue and reduces the payout each time. For maximum per-lord income, capture lords in major battles, ransom them immediately, and pray they do not get captured again for a while. For maximum political damage, keep captured lords in your dungeons instead — a lord in your dungeon cannot lead armies, and their clan loses influence every day they are imprisoned. The gold versus political-damage choice is a strategic decision, not just a financial one.

*Tribute payments* are the most profitable outcome of a successful war. Defeated kingdoms pay daily tribute to the victor for the duration of the peace treaty, with the amount scaling based on the power disparity at the time of the peace deal. Crush a kingdom's armies, capture half their fiefs, and the peace treaty may demand 1,000 to 3,000 denars per day in tribute for several months. This is kingdom-scale passive income — gold that arrives daily without any further action on your part.

The tribute exploitation loop works as follows. Defeat a faction decisively. Demand maximum tribute in the peace treaty — the AI will accept tribute demands that reflect their current military weakness. Let the defeated faction recover for the peace treaty duration — they rebuild armies, restock garrisons, and remember nothing. When the treaty expires, declare war again while they are still weaker than you but have recovered enough to have assets worth taking. Defeat them again. Demand more tribute. Repeat until the faction is economically exhausted and can be conquered entirely. Each cycle takes a year or more, but each cycle produces territory, loot, ransoms, and tribute payments that fund the next war.

== Rebellion Suppression

=== Loyalty Mechanics

Settlement loyalty is a number from 0 to 100, and it is the single most important stat for any fief you control. Every mechanic that affects a settlement — construction speed, prosperity growth, tax generation, rebellion risk — is downstream of loyalty. A settlement at 100 loyalty builds projects in half the time of a settlement at 50. A settlement at 15 loyalty is on the verge of open revolt.

The loyalty formula has six components. *Culture match* grants +1 per matching source — owner culture, governor culture — to a maximum of +2 from culture match alone. This is the most reliable positive modifier and the first thing you should fix in any settlement with loyalty problems. *Security* provides a bonus scaling from the garrison's troop count relative to the settlement's population — a full garrison of 200 troops in a 5,000-population town grants roughly +1 to +2 loyalty. Security is expensive in garrison wages but reliable — troops do not get unhappy. *Governor skills* — Charm directly boosts loyalty by a small amount per skill point (roughly +1 per 50 Charm). *Policies* apply kingdom-wide loyalty modifiers. *Recent ownership* is a temporary -3 penalty that decays over approximately 30 days after the settlement changes hands. *Starvation* applies a sharp penalty when the settlement has zero food — roughly -1 loyalty per day with no upper bound, guaranteed to trigger rebellion within three to four weeks if unresolved.

The starvation penalty is the fastest route to rebellion. A town under siege that runs out of food loses loyalty at catastrophic speed. Even after the siege is lifted, the town's food stores are empty and will take days to replenish from incoming village caravans, during which the loyalty penalty continues to apply. After a siege, immediately fund festivals and transfer food from your party to the town — the loyalty rescue is more urgent than the tax revenue you lose during the festival period.

Militia presence protects against rebellion but does not affect the loyalty stat. Militia troops are civilians who take up arms when the settlement is attacked — they defend the settlement during sieges but do not provide the security loyalty bonus that garrison troops provide. A town with a large militia and no garrison will rebel based on its loyalty score alone, and the militia will fight against you during the rebellion.

=== Suppressing Rebellion

When a settlement's loyalty drops into the danger zone — approximately 15 to 25 — you have a limited window to prevent rebellion. The suppression strategy has four elements.

*Garrison threshold*: the garrison must be large enough that the security loyalty bonus keeps the settlement above the rebellion threshold. The formula is roughly: garrison troop count divided by settlement population, multiplied by a constant. For a 5,000-population town, a garrison of 150 to 200 troops provides a security bonus of +1 to +2 loyalty. Increase the garrison if loyalty continues to fall.

*Governor assignment* is the most impactful single action. A governor with high Charm (150+) and matching culture provides +2 to +3 net loyalty — enough to stabilize most settlements on its own. If your current governor is not culture-matched, fire them and assign one who is, even if the culture-matched governor has lower overall skills. The loyalty bonus from culture match is worth more than the prosperity bonus from a high-Steward governor in a crisis.

*Festival funding* converts denars into temporary loyalty boosts. Fund the Festival project from the settlement management screen — it costs gold per day and increases loyalty while active. The cost is steep (hundreds of denars per day depending on settlement size and prosperity), but it can buy you the thirty days needed for the recent-ownership penalty to decay or for the Fairgrounds building project to complete. Festival funding is an emergency measure, not a permanent solution — the gold cost is unsustainable long-term.

*Building priority* in a loyalty crisis shifts. The building queue should be: Fairgrounds first (+1 loyalty, accelerates everything that follows), Granary second (prevents the starvation loyalty penalty during the next siege), and nothing else until loyalty is above 40. Building income-generating structures in a settlement that is about to rebel is worse than wasted — it is actively harmful, because you are investing resources in a settlement you are about to lose.

=== Exploiting Enemy Rebellion

Rebellions in enemy kingdoms are strategic opportunities. When an enemy town rebels against its owner, it becomes an independent minor faction with no allies, no parent kingdom, and no diplomatic relationships. You can attack and capture it without declaring war on its parent kingdom.

*Supporting enemy rebels* is possible through funding. Some mods add mechanics for this; in vanilla, rebellions occur naturally when enemy loyalty management fails. Monitor the diplomacy screen for notifications of rebellions in enemy kingdoms. A town that rebels in a faction you are at war with is a gift — capture it without fighting the parent kingdom's armies, without the parent kingdom's allies joining the war, and without spending influence on a war declaration.

*Capturing secessionist towns* follows the standard siege mechanics but with the critical advantage that no allies will come to the rebel faction's defense. The rebel army is typically the size of the former garrison plus militia — a challenging but manageable target for a mid-sized kingdom army. Once captured, the settlement follows the standard recent-ownership penalty of -3 loyalty for thirty days, so have a culture-matched governor and festival funding ready.

The parent kingdom may attempt to reconquer the town later. If you are at war with them, this is a standard military engagement. If you are at peace with them, they may declare war specifically to reclaim the town — the AI values lost territory highly in war declaration calculations. However, if you maintain a strong garrison and the loyalty penalty decays, the town becomes your property in the eyes of the game's ownership mechanics, and the parent kingdom's claim weakens over time. A town you have held for six months with 60+ loyalty and a culture-matched governor is your town — the parent kingdom has accepted this.

== Cultural Integration

=== Culture Conversion

Settlement culture changes over time through passive and active mechanics. In vanilla Bannerlord, culture conversion is slow — approximately 1% to 2% of the settlement's population converts per in-game year if the governor's culture matches the owner's culture. A settlement with a matching-owner-culture governor will slowly shift toward the owning kingdom's culture over decades. This is too slow to be strategically relevant for most campaigns, but it provides a long-term loyalty benefit in very long games.

Policy acceleration is available through certain policies and modded mechanics. Some overhaul mods in Wave 2 may add active culture conversion options — check individual mod documentation for conversion rates, costs, and prerequisites. Active conversion is typically expensive in gold or influence and applies over months rather than decades.

The practical takeaway is that culture conversion is a multi-generational process in vanilla. Do not rely on conversion to solve short-term loyalty problems. The recent-ownership penalty will have decayed to zero long before any meaningful culture shift has occurred. Build your loyalty strategy around culture-matched governors and strong garrisons, not around waiting for the settlement to culturally assimilate.

=== Multicultural Kingdoms

Managing loyalty penalties across a multicultural kingdom is the primary challenge of mid-to-late game kingdom management. Every fief whose culture does not match its governor suffers -1 loyalty per day. Every fief whose culture does not match its owner suffers an additional -1.

The solution is distributing culture-matching vassals or governors to every fief. Recruit vassals from every conquered culture — Imperial lords to govern Imperial towns, Battanian clans to hold Battanian territory, Sturgian families to manage Sturgian borders. This requires making your kingdom diplomatically attractive to lords from all factions, which means high general reputation, lucrative fief offers, and victorious wars that prove your kingdom's staying power.

A kingdom that is militarily weak but culturally diverse will lose vassals to cultural tension. A kingdom that is militarily dominant will attract vassals from every faction regardless of culture — lords join winners. The path to a stable multicultural kingdom is through military success, not cultural sensitivity. Win enough wars, and the Sturgian lords will decide that being Sturgian matters less than being on the winning side.

=== Cultural Benefits

Settlement culture provides passive bonuses that compound over campaigns but will not determine the outcome of wars by themselves.

*Native recruitment*: troops recruited in territory that matches their native culture are available at higher tiers. An Imperial village in Imperial-culture territory may allow recruiting Imperial Legionaries directly, while an Imperial village in Battanian-culture territory may only offer recruits up to Tier 3. This accelerates army rebuilding in culturally homogenous regions and slows it in multicultural border zones.

*Morale effects*: troops fighting for a kingdom whose culture matches their own gain a small morale bonus. The effect is modest — roughly +2 to +5 morale — and primarily noticeable in long battles where morale becomes the decisive factor. A mixed-culture army will not noticeably underperform versus a monoculture army of equal tier and composition. Cultural morale bonuses are flavor, not a strategic consideration for army composition.

*Prosperity growth*: towns and villages whose owner's culture matches their own culture gain prosperity slightly faster — roughly 5% to 10% faster growth. Over a decade, this produces noticeably larger towns, but the effect is gradual and secondary to the prosperity effects of food security, loyalty, and building upgrades. A culturally mismatched town with Fairgrounds, a Granary, and a skilled governor will outgrow a culturally matched town with no infrastructure.
