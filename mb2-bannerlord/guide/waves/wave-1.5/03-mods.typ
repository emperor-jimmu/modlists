#import "../../../typst/styles.typ": *

= Mod List — Wave 1.5

#warning-box[These mods were originally part of Wave 1 but have been split into Wave 1.5 to keep Wave 1 manageable. They load AFTER all Wave 1 mods and BEFORE Wave 2 heavy overhauls. Install Wave 1 first, then add these.]

// ========================================
// Light Mechanic — Campaign Systems
// ========================================

== Campaign & Character Systems

// ---- True Controller ----
#mod-entry("True Controller", "https://www.nexusmods.com/mountandblade2bannerlord/mods/3543", "Light Mechanic", [MCM], [Utility hub for the True Gameplay Overhaul mods. Provides centralized MCM configuration for True Noble Opinion, True Relations, True Battle Loot, and other TGO mods. Required dependency for True Battle Loot.], [MCM settings serve as one-stop TGO config shop.], [Load before all TGO dependent mods.], [Required by True Battle Loot. Does nothing on its own — pure framework.],)

// ---- Custom Startup Options ----
#mod-entry("Custom Startup Options", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9304", "Light Mechanic", [ButterLib, Harmony, MCM, UIExtenderEx], [Granular new campaign customization: starting gold, clan tier, renown, influence, skills, attributes, equipment. More detailed than Cultured Start — both can be used together.], [Extensive MCM settings for each startup parameter.], [Very early — must load before character creation mods.], [Complements Cultured Start Reloaded — different focus (scenario selection vs. parameter customization).],)

// ---- Detailed Character Creation ----
#mod-entry("Detailed Character Creation", "https://www.nexusmods.com/mountandblade2bannerlord/mods/118", "Light Mechanic", [None — standalone], [One of the original essential Bannerlord mods. Full body sliders — proportions, facial features, age, weight, muscle tone. Works at character creation and via town barber.], [Access via character creation screen or town barber.], [Very early — must load before any character-modifying mods.], [Foundational — compatible with all mods. No conflicts.],)

// ---- True Battle Loot ----
#mod-entry("True Battle Loot", "https://www.nexusmods.com/mountandblade2bannerlord/mods/3365", "Light Mechanic", [True Controller, MCM], [Part of True Gameplay Overhaul. Enemies drop what they were actually wearing. No looting plate armor from looters. Soldiers claim their share. Rewards feel earned rather than random.], [MCM via True Controller for loot share, quality, drop rules.], [After True Controller and battle mods. Requires True Controller.], [Requires True Controller to function. Complements AI Values Life — realistic death and realistic loot together.],)

// ---- Useful Companions ----
#mod-entry("Useful Companions", "https://www.nexusmods.com/mountandblade2bannerlord/mods/1033", "Light Mechanic", [None — standalone. Does NOT use Harmony.], [Companions earn XP out of combat. Quartermaster auto-buys food. Auto-rebuild parties. Transfer companions remotely. Governors manage prosperity. Caravan leaders improve. Uses decorated pattern for maximum compatibility.], [XML config in Documents folder. All features toggleable.], [After NPC mods, before combat mods. No Harmony — exceptionally safe.], [Save-game compatible — enable/disable anytime. No Harmony — uses decorated pattern for maximum mod compatibility.],)

// ---- Party AI Controls ----
#mod-entry("Party AI Controls", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9360", "Light Mechanic", [Harmony, MCM], [Give detailed orders to clan parties: patrol routes, defensive zones, recruitment behaviors, engagement rules. Companion parties become genuine strategic assets. Updated for 1.3.x.], [MCM per-party settings for aggression, patrol areas, recruitment, engagement thresholds.], [After character mods, before combat mods.], [Complements Useful Companions — PAC handles strategic orders while UC handles utility. No conflicts.],)

// ---- Art of War ----
#mod-entry("Art of War", "https://www.nexusmods.com/mountandblade2bannerlord/mods/3970", "Light Mechanic", [Harmony, MCM], [Improves AI behavior on the campaign map during wartime. Armies detach parties to defend raided villages, siege target logic is smarter, mercenary clans are not wasted on garrison duty, and armies patrol last-attacked settlements. All features toggleable via MCM.], [MCM settings for each feature: detachment logic, siege targeting, garrison behavior, patrol logic.], [After faction mods, before combat mechanics.], [Compatible with Realistic Morale System and Epic Sieges — different systems (campaign AI vs. battle morale vs. siege). No overlap.],)

// ---- Realistic Weather ----
#mod-entry("Realistic Weather", "https://www.nexusmods.com/mountandblade2bannerlord/mods/4367", "Light Mechanic", [Harmony, MCM, UIExtenderEx], [Weather affects campaign map — rain, snow, fog, sandstorms impact visibility, movement speed, and morale. Terrain-dependent weather patterns. All effects configurable. Updated for 1.4.5.], [MCM settings for each weather effect. Tune or disable individually.], [After faction mods, before battle mods.], [Compatible with all mods. Affects campaign map layer only — battle weather unchanged.],)

// ---- Supply Lines ----
#mod-entry("Supply Lines", "https://www.nexusmods.com/mountandblade2bannerlord/mods/2266", "Light Mechanic", [Harmony, MCM], [Strategic supply line system. Troops consume supplies over time during campaigns. Villages and towns become critical resupply points. Running out has escalating consequences — speed reduction, morale decay, desertion.], [MCM settings for consumption rates, resupply mechanics, consequence severity.], [After campaign AI mods. Logistics before economy mods.], [Complements AI Values Life — logistics and surrender create a complete warfare ecosystem. No conflicts.],)

// ---- Donate Grain ----
#mod-entry("Donate Grain", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9260", "Light Mechanic", [None — standalone], [Donate grain and food to settlements from the town menu. Helps starving settlements recover, builds relation with notables, provides a use for excess food. Simple but impactful settlement interaction.], [No config needed. Access via town menu.], [After settlement mods, before economy mods.], [No conflicts. Simple menu addition — does not modify core game systems.],)

// ---- Better Smithing Continued ----
#mod-entry("Better Smithing Continued", "https://www.nexusmods.com/mountandblade2bannerlord/mods/4318", "Light Mechanic", [None — standalone], [Smithing overhaul — faster stamina recovery, better part unlocking rates, improved smelting yields, sensible crafting requirements. Community fork updated for current Bannerlord versions. Makes smithing less grindy while keeping it balanced.], [MCM settings for stamina rates, unlock chances, smelting yields, and crafting requirements.], [After economy mods, before combat mods.], [Complements Crafting Piece Sorter (Wave 0) — CPS handles UI sorting while BSC handles mechanics. No conflicts.],)

// ---- Agriculture Estate Updated ----
#mod-entry("Agriculture Estate Updated", "https://www.nexusmods.com/mountandblade2bannerlord/mods/4535", "Light Mechanic", [None — standalone], [Agricultural estate management system. Own farmland, manage crop production, earn passive income from agriculture. Expands the economic layer of settlement ownership beyond workshops and caravans.], [MCM settings for income rates, estate management, production customization.], [After settlement mods, before kingdom mods.], [Complements Player Settlements and Donate Grain. No conflicts — adds a new economic system.],)

// ========================================
// Light Mechanic — Kingdom & Politics
// ========================================

== Kingdom & Politics

// ---- Kingdom Politics Expanded ----
#mod-entry("Kingdom Politics Expanded", "https://www.nexusmods.com/mountandblade2bannerlord/mods/4970", "Light Mechanic", [Harmony], [Complete overhaul of AI voting on kingdom policies and settlement ownership. AI lords vote based on actual needs — loyalty, security, gold — not arbitrary weights. Tracks per-clan war scores and siege contributions for fair fief distribution. Fixes broken vanilla policies: Crown Duty, Land Grants, King's Mercenaries, Peerage, and Road Tolls.], [MCM to toggle settlement voting and policy behavior. Console command to opt out of fief candidacy.], [After faction mods, before compilation mods.], [Fixes broken vanilla policies. Save-compatible to add. Use console command `mods.uninstall_kingdom_politics_expanded` before removing. No conflicts.],)

// ---- Fourberie ----
#mod-entry("Fourberie", "https://www.nexusmods.com/mountandblade2bannerlord/mods/2969", "Light Mechanic", [Harmony, ButterLib, UIExtenderEx, MCM], [Expands criminal and rogue gameplay with a large panel of features — schemes, dirty tactics, assassination plots, disguise systems, prisoner interactions. Develop a cunning character who wins through guile rather than brute force. Used by 31+ other mods.], [Extensive MCM settings for each feature toggle. All schemes individually toggleable.], [After dialogue and faction mods, before combat compilations.], [All features individually toggleable — disable any that feel overpowered. No direct conflicts — Fourberie focuses on rogue/schemes while other mods cover separate systems.],)

// ---- Calradian's Creed ----
#mod-entry("Calradian's Creed", "https://www.nexusmods.com/mountandblade2bannerlord/mods/8856", "Light Mechanic", [None — standalone], [Assassination and stealth gameplay inspired by Assassin's Creed. Parkour movement, hidden blade, stealth kills, and faction-targeted assassination contracts. Adds an entirely new gameplay dimension — win through subtlety rather than army size.], [MCM settings for difficulty, detection ranges, and feature toggles.], [After all other faction and NPC mods — new gameplay system loads late.], [Complements Fourberie — different rogue systems (stealth/assassination vs. schemes/crime). Both can be used together for a complete rogue experience.],)

// ---- Enlisted ----
#mod-entry("Enlisted", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9193", "Light Mechanic", [None — standalone], [Enlist as a regular soldier in a lord's army. Work your way up from common soldier through the ranks — follow orders, earn promotions, and eventually command. Completely different playstyle from the standard warlord path.], [No config for core mechanics.], [Late — new gameplay system after NPC and faction mods.], [Adds a completely new way to play. No conflicts with other mods. Change the pace of your early game entirely.],)

// ---- AI Values Life ----
#mod-entry("AI Values Life (NPC Surrender and Death)", "https://www.nexusmods.com/mountandblade2bannerlord/mods/481", "Light Mechanic", [Harmony, MCM], [One of the original and most respected AI behavior mods. NPCs value their lives realistically — bandits and outmatched parties surrender. Lords weigh odds before hopeless battles. Prisoner behavior varies by personality traits and relations. Adds tactical realism where combat outcomes are decided before the first sword is drawn.], [MCM settings for surrender thresholds, death chances, and faction-specific behavior. Highly configurable.], [Late behavioral layer — after Surrender Tweaks and before compilation mods.], [Complements Surrender Tweaks — AVL handles tactical/combat surrender while ST handles strategic/campaign surrender. Foundational — used by many other mods.],)

// ---- Surrender Tweaks ----
#mod-entry("Surrender Tweaks", "https://www.nexusmods.com/mountandblade2bannerlord/mods/2797", "Light Mechanic", [Harmony, MCM, UIExtenderEx], [Overhauls surrender and capture mechanics. Bandits and weaker parties may surrender without a fight when outmatched. Lords negotiate surrender terms. Siege defenders can negotiate capitulation. Prisoner interactions expanded. Used by 20+ other mods as a dependency.], [MCM settings for surrender thresholds, negotiation parameters, and faction-specific behavior.], [After battle and faction mods, before behavioral compilations.], [Used as a dependency by 20+ mods. Complements AI Values Life and Realistic Morale System. Save-game compatible.],)

// ---- AI Executioner ----
#mod-entry("AI Executioner", "https://www.nexusmods.com/mountandblade2bannerlord/mods/3917", "Light Mechanic", [None — standalone], [AI lords can execute prisoners, just like the player. Adds mortal stakes to capture — lords you've wronged may not survive captivity. Your enemies remember and may repay in kind. Relationships now carry life-or-death weight.], [No config. Execution behavior is automatic based on lord traits and relations.], [Late — after capture and relationship mods, before compilation mods.], [May increase lord death rate significantly. Complements AI Values Life and Surrender Tweaks — creates complete capture-surrender-execution ecosystem.],)

// ---- I Swear Fealty ----
#mod-entry("I Swear Fealty", "https://www.nexusmods.com/mountandblade2bannerlord/mods/10148", "Light Mechanic", [None — standalone], [Expands vassalage and oath-swearing mechanics with ceremonies, oath options, and meaningful consequences for oath-breaking. Becoming a vassal feels like a genuine medieval pact rather than a menu option.], [No config needed. Ceremonies activate through normal vassalage dialogue.], [Late kingdom mechanics — after diplomacy mods, before compilation mods.], [Complements Kingdom Politics Expanded and Diplomacy (Wave 2). No conflicts — adds ceremony and consequence to existing vassalage mechanics.],)

// ---- BECOME KING - HOLMGANG ----
#mod-entry("BECOME KING — HOLMGANG", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9460", "Light Mechanic", [None — standalone], [Challenge a kingdom's ruler to single combat to claim the throne. Win the duel and become king. A Norse-inspired warrior's path to power that bypasses political maneuvering and massive armies. Pure warrior fantasy.], [No config needed. Challenge via dialogue with the ruler.], [Late kingdom mechanics — after diplomacy mods.], [#tip-box[Considered a power-fantasy mod.] Disable if using Banner Kings (Wave 2) which has its own succession mechanics. Complements I Swear Fealty — different paths to power.],)

// ========================================
// Light Mechanic — Dynasty & Relationships
// ========================================

== Dynasty & Relationships

// ---- BE - Companion Expanded ----
#mod-entry("Bannerlord Expanded — Companion Expanded", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6736", "Light Mechanic", [Harmony, MCM], [Part of Bannerlord Expanded series. Companion depth — expanded interactions, quests, personality-driven behavior, relationship development. Companions become characters rather than stat blocks. All features toggleable via MCM.], [MCM settings for each feature — enable only the interactions you want.], [After NPC dialogue mods, before relationship mods.], [Complements Useful Companions (utility vs. narrative depth). Same series as Spouses and Children Expanded — designed to stack together.],)

// ---- BE - Settlement Interactions ----
#mod-entry("Bannerlord Expanded — Settlement Interactions", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6887", "Light Mechanic", [Harmony, MCM], [Part of Bannerlord Expanded series. New settlement interactions — expanded notable dialogue, settlement-specific events, location-based encounters. Towns feel alive with unique interactions. All features toggleable via MCM.], [MCM settings for interaction frequency and event types.], [After faction mods, before battle mods.], [Complements Alive Scenes (visual ambiance vs. interactive depth). Compatible with Donate Grain and Agriculture Estate — different settlement layers.],)

// ---- BE - Spouses Expanded ----
#mod-entry("Bannerlord Expanded — Spouses Expanded", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6952", "Light Mechanic", [Harmony, MCM], [Part of Bannerlord Expanded series. Expands spouse interactions and utility. Adjustable twin probability (vanilla is 3%). Expanded marriage mechanics. All features individually toggleable via MCM.], [MCM settings for each feature — twin probability, spouse behavior, interaction options.], [After NPC relationship mods, before compilation mods.], [#tip-box[Contains adult-themed content — all features toggleable via MCM.] Complements Dramalord and Pregnancy Control Continued — different marriage layers. Same series as Companion and Children Expanded.],)

// ---- BE - Children Expanded ----
#mod-entry("Bannerlord Expanded — Children Expanded", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6735", "Light Mechanic", [Harmony, MCM], [Part of Bannerlord Expanded series. Children grow and develop with depth — education options, interactions. Heirs become meaningful characters rather than waiting-to-be-useful stat sheets. Features toggleable via MCM.], [MCM settings for growth rates, education options, interaction frequency.], [After character and relationship mods, before compilation mods.], [Complements Pregnancy Control Continued — PCC handles pregnancy while BECE handles child development. Same series as Spouses and Companion Expanded.],)

// ---- Pregnancy Control Continued ----
#mod-entry("Pregnancy Control Continued", "https://www.nexusmods.com/mountandblade2bannerlord/mods/5478", "Light Mechanic", [Harmony, ButterLib, UIExtenderEx, MCM], [Revives and expands the Pregnancy Control mod with a complete seduction system using Bannerlord's persuasion mechanics. Manage dynasty and pregnancy mechanics with MCM-configured rates and options. Integrates with existing social systems.], [MCM settings for seduction difficulty, pregnancy rates, and feature toggles.], [After NPC and relationship mods.], [#tip-box[Contains adult-themed content — configure via MCM.] Complements BE — Children Expanded and Dramalord. Dynasty mechanics are thematically relevant for long-term campaigns.],)

// ---- Dramalord ----
#mod-entry("Dramalord", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6682", "Light Mechanic", [Harmony, ButterLib, UIExtenderEx, MCM], [Overhauls Bannerlord's marriage and relationship system. Adds flirting, affairs, love-based marriage, and NPC reactions to romantic events — including jealousy and relationship consequences. All NPC reactions reflect their personality traits. Highly configurable.], [Extensive MCM settings for every feature — flirt success rates, affair discovery chance, NPC reaction intensity, and which mechanics are active.], [Late — after NPC and dialogue systems, before compilation mods.], [Complements Complex Characters and Nemesis — different relationship layers. Compatible with Pregnancy Control Continued — different systems (marriage/romance vs. pregnancy/dynasty).],)

// ========================================
// Light Mechanic — Battle & Combat
// ========================================

== Battle & Combat

// ---- Reinforcement System ----
#mod-entry("Reinforcement System", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6501", "Light Mechanic", [Harmony, MCM], [Battle reinforcements arrive in waves based on tactical positioning instead of all at once. Distant units enter the battlefield over time. Transforms battle pacing — positioning and timing matter more than raw numbers.], [MCM settings for wave timing, spawn distances, and party size thresholds.], [After troop mods, before compilation mods.], [Complements Realistic Morale System — morale and reinforcements together create deeply tactical battles. No conflicts with any mod.],)

// ---- Realistic Morale System ----
#mod-entry("Realistic Morale System", "https://www.nexusmods.com/mountandblade2bannerlord/mods/10059", "Light Mechanic", [Harmony, ButterLib, UIExtenderEx, MCM], [Battle morale overhaul. Troops react realistically to danger, casualties, leader presence, and tactical pressure. Captains and generals inspire nearby units. Flanked formations struggle to hold. Transforms battles into tense, dynamic engagements where morale matters as much as numbers.], [MCM settings for morale thresholds, leader influence strength, flanking penalties, and recovery rates.], [Late battle logic — after all troop and content mods, before any combat overhaul.], [Complements Reinforcement System and Epic Sieges — morale is a separate system from damage or siege parameters. No overlap.],)

// ---- Epic Sieges ----
#mod-entry("Epic Sieges", "https://www.nexusmods.com/mountandblade2bannerlord/mods/7294", "Light Mechanic", [Harmony], [Enhances siege battles by adjusting key parameters — ladders can be pushed down by defenders, siege towers and battering rams are more durable, gates last longer. Longer, more strategic sieges that reward player tactics over brute force.], [Configuration via mod's config file for parameter tuning.], [Before compilation mods — siege parameter changes should load after all troop and content mods.], [Standalone tweak to siege parameters. Does not conflict with any other mod. Compatible with Realistic Morale System.],)

// ---- Battle Duels ----
#mod-entry("Battle Duels", "https://www.nexusmods.com/mountandblade2bannerlord/mods/6436", "Light Mechanic", [None — standalone], [Challenge enemy lords to single combat during battles. Resolve conflicts through personal combat — your skill with a blade can turn the tide without sacrificing troops. Adds a heroic dimension to large-scale battles.], [No config needed. Challenge via battle dialogue.], [Late battle system — after combat mods, before compilations.], [Complements BECOME KING and Calradian's Creed — different duel contexts (battlefield vs. throne vs. stealth). No conflicts.],)

// ---- Naval DLC Balance Fix ----
#mod-entry("Naval DLC Balance Fix", "https://www.nexusmods.com/mountandblade2bannerlord/mods/9632", "Light Mechanic", [None — standalone], [Fixes balance issues from War Sails DLC naval content. Adjusts ship costs, crew wages, and naval battle rewards to fit vanilla game balance rather than DLC-inflated numbers.], [No config needed. Balance adjustments automatic.], [Early — balance fix must load before any naval mod references.], [#tip-box[Only needed if using War Sails DLC.] Pure number adjustments — no conflicts. Skip if not using naval DLC.],)

// ---- Continuous Naval Battle ----
#mod-entry("Continuous Naval Battle", "https://www.nexusmods.com/mountandblade2bannerlord/mods/10392", "Light Mechanic", [None — standalone], [Ship-to-ship combat on Calradia's waters. Works with existing water travel mechanics. New tactical dimension for coastal campaigns. Replaces vanilla swamp-battle fallback when fighting on water.], [No config needed. Naval battles activate automatically on water routes.], [Late battle system — after all other combat mods.], [#tip-box[Check compatibility with your game version — may require War Sails DLC.] Test before committing to a long campaign. No known conflicts.],)

// ---- Xorberax's Legacy ----
#mod-entry("Xorberax's Legacy", "https://www.nexusmods.com/mountandblade2bannerlord/mods/3462", "Light Mechanic", [Harmony, ButterLib, UIExtenderEx, MCM], [Compilation of 9 sub-mods originally developed by Xorberax, updated and compiled into a single module with MCM integration. Enabled features: Banks of Calradia (loans and interest), Cut Through Everyone (multi-hit weapons), Honest Work (village labor), Scholars of Calradia (skill lectures), Shoulder Camera (improved third-person), Training Field (troop training).], [#danger-box[*Critical:* Disable *Deadly Combat*, *Deadly Horse Charges*, and *Friendly Fire* in MCM before starting. These are heavy combat overhauls reserved for Wave 2.] All other sub-mods individually toggleable via MCM.], [Last in Wave 1.5. Compilation mods that touch multiple systems must load after all individual mods.], [Bank system adds economy depth. Cut Through Everyone enhances combat feel without overhauling damage. Scholars and Training Field offer alternative skill progression. Disabling Deadly Combat, Deadly Horse Charges, and Friendly Fire keeps this within Wave 1.5 scope.],)

#tip-box[Wave 1.5 contains 34 Light Mechanic mods across three sub-categories. These were split from Wave 1 to keep Wave 1 focused on genuinely lightweight tweaks (18 Light Mechanic mods remain there). Install Wave 1 first, then add Wave 1.5, then Wave 2 heavy overhauls.]
