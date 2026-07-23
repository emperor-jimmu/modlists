#import "../../../typst/styles.typ": *

= Mechanics — Wave 1.5

This section explains the specific mechanics introduced by Wave 1.5 mods and how to use them. Configure each mod through MCM before relying on it — most have extensive options.

== Campaign Layer Systems

=== Party AI Controls and Useful Companions

*Party AI Controls* opens by pressing the party management button on the campaign map, or through MCM per-party settings. Each companion-led party gets a configurable behavior profile:

+ *Patrol mode.* Set a patrol center and radius. The party circles the area, engaging hostiles within its power threshold.
+ *Defensive mode.* The party stays near a designated settlement or village, prioritizing its defense.
+ *Recruitment rules.* Specify which cultures to recruit from, whether to prioritize elites, and how many troops to maintain.
+ *Engagement thresholds.* Set minimum/maximum enemy power the party will engage. A scout party should not fight armies.

*Useful Companions* works in the background. Companions in roles (quartermaster, surgeon, scout, engineer, governor) earn XP passively. The quartermaster auto-buys food when supplies drop below a threshold. Governors can reduce town prosperity to prevent starvation. Configure all behavior through the XML config file in your Documents folder.

#tip-box[These two mods work together — Party AI Controls handles strategic orders for companion-led parties, while Useful Companions handles background utility for companions in roles.]

=== AI Behavior Systems

*Art of War* settings are in MCM under the Art of War menu. Four main toggles:

+ *Detach parties to defend villages.* When enabled, armies send detachments to fight raiders near friendly villages. Set the maximum detachment range and minimum troops remaining in the army.
+ *Siege target logic.* Armies prioritize strategic siege targets rather than random settlements. Can be toggled.
+ *Garrison captured settlements.* Armies leave garrison troops in newly captured settlements. Adjustable — set how many troops get left.
+ *Patrol logic.* Armies patrol last-attacked settlements instead of aimless wandering.

*AI Values Life* and *Surrender Tweaks* create layered surrender behavior:

+ *Tactical surrender* (AVL): Individual parties surrender during encounters. Bandits, outmatched lords, and everyone in between. Thresholds set via MCM — power ratio, troop casualties, personality modifiers.
+ *Strategic surrender* (ST): Lords negotiate surrender terms before battle. Siege defenders can capitulate. Prisoner interactions expanded. Also MCM-configurable.
+ *Execution* (AI Executioner): AI lords can execute prisoners based on traits and relations. Ruthless lords kill more. Honorable lords spare. No configuration — behavior derived from in-game traits.

=== Supply Lines

Access the supply status from the party screen — a new supply meter appears below food. Supply consumption is continuous:

+ *Consumption rate.* Set via MCM. Higher rates make logistics critical; lower rates keep it a background concern.
+ *Resupply.* Enter a friendly village or town to resupply. Larger settlements resupply faster. Villages provide limited resupply.
+ *Consequences.* Low supply triggers escalating penalties: party speed reduction, morale decay, troop desertion at critical levels.

#tip-box[Tune supply consumption in MCM before starting a campaign. Default settings are moderate — test for an hour and adjust. Too aggressive and logistics dominate gameplay; too lenient and the system becomes irrelevant.]

== Kingdom and Politics Systems

=== Kingdom Politics Expanded

Once installed, this mod replaces the vanilla voting system automatically. No activation needed — the AI immediately begins voting based on actual needs:

+ *Policy voting.* Lords vote for policies that address their settlement needs — loyalty, security, militia, gold. Ruler relationship matters for ruler-affecting policies. Kingdom-wide crises (mass rebellion risk) push lords toward loyalty policies.
+ *Settlement voting.* Fief distribution tracks per-clan war scores (battles fought, villages raided) and siege scores (settlements besieged). Unlanded clans get castle priority. Clans with substantially less wealth get bonuses; wealthy clans get penalties. No special treatment for the player or the king.
+ *Opt-out.* The console command `kpe.toggle_settlement_claimant_voting` reverts settlement voting to vanilla while keeping policy voting. Use if you prefer vanilla fief distribution.

Removing the mod requires an in-game uninstall command: `mods.uninstall_kingdom_politics_expanded` must be run from the console before saving and removing.

=== Rogue and Alternative Gameplay

*Fourberie* adds a panel of rogue features, all toggleable via MCM. Access schemes from dialogue menus and the campaign map:

+ *Schemes.* Long-term plots against targets — frame a lord, sabotage a siege, poison supplies.
+ *Dirty tactics.* Battlefield tricks — fake retreats, ambush setups, bribing enemy troops.
+ *Assassination.* Eliminate targets without open warfare. Expensive, risky, deniable.
+ *Disguise system.* Enter hostile settlements undetected. Gather intel, complete missions, escape.

*Calradian's Creed* controls via MCM for difficulty and detection ranges. Stealth mechanics:

+ *Parkour.* Climb buildings, traverse rooftops, escape through vertical terrain.
+ *Hidden blade.* Instant-kill from stealth. High risk if detected — entire garrison mobilizes.
+ *Assassination contracts.* Faction-targeted missions. Eliminate a lord, a merchant, a rival spy.
+ *Detection.* Guards and civilians can spot you. Detection range, suspicion buildup, and alarm response are all MCM-configurable.

*Enlisted* changes the entire early game. Instead of the standard independent party start, you enlist in a lord's army:

+ *Enlistment.* Speak to a lord and choose to enlist. You join their party as a soldier.
+ *Rank progression.* Fight in battles, follow orders, earn promotions. Start as a recruit, rise through the ranks.
+ *Equipment.* Your equipment matches your rank. Higher ranks get better gear from the army's stores.
+ *Leave service.* You can leave at any time, keeping your skills, experience, and some equipment. Or wait for your contract to end naturally.

*Battle Duels* activates during battles — a dialogue option appears when near an enemy lord. Challenge accepted:

+ *Duel rules.* One on one. No interference from troops. Fight to yield or death, depending on settings.
+ *Consequences.* Winning a duel against the enemy commander can break their army's morale. Losing means your army fights without you.

== Economy Systems

=== Better Smithing Continued

MCM settings control all parameters:

+ *Stamina recovery.* Default is faster than vanilla. Adjust to taste — very fast makes smithing a primary income source.
+ *Part unlock rate.* Higher rates mean faster progression through the smithing tree. Set lower for a more satisfying long-term unlock experience.
+ *Smelting yields.* More materials recovered from smelting means less grinding for resources.
+ *Crafting requirements.* Reduce required materials for more accessible smithing.

=== True Battle Loot

Requires *True Controller* to be installed. Configuration through True Controller's MCM menu:

+ *Loot realism.* Enemies drop what they actually wore. Quality scales with the enemy — lords drop better gear than looters.
+ *Soldier share.* Your troops claim a percentage of the loot. Higher share means less for you but better troop morale. Adjustable.
+ *Drop rates.* Fine-tune how much loot appears per battle. Lower rates for scarcity, higher for abundance.

=== Agriculture Estate Updated

Access estates from the settlement menu in towns you own or where you have high relations:

+ *Purchase land.* Spend gold to acquire farmland. Multiple plots available per settlement.
+ *Manage crops.* Choose what to grow — food crops, cash crops, or mixed. Each has different income, risk, and growth time.
+ *Passive income.* Estates generate income over time. Crop failures happen during bad weather or war.
+ *Scale.* Multiple estates across multiple settlements create a diversified agricultural portfolio.

=== Donate Grain

Access from any town menu. Simple mechanics:

+ *Donate.* Select food items from your inventory to donate. The town's food stocks increase.
+ *Relation gain.* Local notables appreciate food donations — relationship increases proportionally to donation value.
+ *Starvation prevention.* Donating food to a starving town can prevent prosperity loss and rebellion risk.

=== Custom Startup Options and Detailed Character Creation

*Custom Startup Options* configures through MCM before starting a new campaign:

+ *Starting resources.* Set gold, influence, renown, clan tier independent of the scenario.
+ *Skills and attributes.* Pre-set your character's skills and attributes. Bypasses the vanilla character creation limitations.
+ *Equipment.* Choose starting equipment quality and type.

*Detailed Character Creation* activates during character creation and at any town barber:

+ *Body sliders.* Full control over proportions, muscle tone, weight, height.
+ *Facial features.* Fine-tune every aspect of the face.
+ *Age.* Set age at character creation — older characters start with more skills but lower physical potential.

#tip-box[Use Custom Startup Options to set broad parameters, then Detailed Character Creation for appearance. Both work alongside Cultured Start Reloaded — CSR handles scenario selection, CSO handles parameters, DCC handles appearance.]

== Battle and Combat Systems

=== Reinforcement System

MCM settings control reinforcement behavior:

+ *Wave timing.* How long between reinforcement waves. Shorter = faster battles with more troops on field.
+ *Spawn distance.* How far away reinforcements appear. Further = more realistic but longer travel time to the fight.
+ *Party size threshold.* Parties below this size don't generate reinforcement waves — they all deploy at once.

#tip-box[Longer wave timing creates battles with distinct phases — initial skirmish, main engagement, reinforcement arrival, breaking point. This pairs exceptionally well with Realistic Morale System.]

=== Realistic Morale System

MCM settings for morale behavior:

+ *Morale thresholds.* At what morale levels troops start to waver, rout, or fight harder.
+ *Leader influence.* How much nearby captains and generals affect troop morale. Higher = leader positioning is critical.
+ *Flanking penalty.* Morale loss when flanked or surrounded. Higher = tactical positioning matters more.
+ *Recovery rate.* How fast morale recovers when the situation improves.

=== Epic Sieges

Configuration through the mod's config file (not MCM):

+ *Ladder push.* Defenders can push ladders down. Toggle on/off.
+ *Gate durability.* Multiply vanilla gate HP. Higher = longer sieges.
+ *Siege tower durability.* Multiply vanilla tower HP.
+ *Barricade durability.* Barricades easier or harder to destroy.

=== Combat Enhancement Systems

*Breakable Polearms* settings via MCM:

+ *Break chance.* Percentage chance per hit. Higher = more breaks.
+ *Durability scaling.* Quality-based durability — noble weapons last much longer than peasant ones.
+ *Affected types.* Choose which polearm types can break — lances only, all spears, or all polearms.

*Better Horses* settings via MCM:

+ *Breed stats.* Adjust stat differences between horse breeds.
+ *Fatigue.* Enable/disable horse fatigue and set fatigue rate.
+ *Charge mechanics.* Adjust cavalry charge impact and mass.

*Better Health* and *Better Bandages* work together:

+ *Wound severity.* Injuries reduce combat stats proportionally. Configurable severity curve.
+ *Recovery time.* Surgeon skill determines recovery speed. Better surgeons = faster healing.
+ *Bandage effectiveness.* Medicine skill matters. Bandages applied by a master surgeon work faster than those from a novice.

=== Better Character Series

The Better series (Attribute Points, Attributes, Focus Points, Skills, Bandages, Executions, Health, Horses, Marriage) all configure through MCM with consistent interfaces:

+ *Point adjustments.* Each mod adjusts the relevant gain rate or scaling factor.
+ *Scaling curves.* Attributes and skills scale more meaningfully — each point matters.
+ *Mechanical depth.* Executions have nuanced consequences. Marriage has strategic depth. Health has tactical impact.

#tip-box[Start with default Better series settings for your first campaign. Each mod changes one specific system — playing with defaults lets you understand what each one does before tuning.]

== Environment and Atmosphere

=== Realistic Weather

MCM controls for weather effects:

+ *Visibility reduction.* Fog and rain reduce campaign map sight range. Higher = more tactical value in weather.
+ *Speed penalties.* Snow and mud slow party movement. Terrain-dependent — mountains have more snow.
+ *Morale impacts.* Bad weather affects troop morale. Marching through a blizzard is demoralizing.

=== Naval Systems

*Naval DLC Balance Fix* requires no configuration — it adjusts ship costs, crew wages, and naval battle rewards automatically. Only useful with the War Sails DLC.

*Continuous Naval Battle* activates when fighting on water routes. Ship-to-ship combat replaces the vanilla swamp-battle fallback. MCM settings for battle parameters.
