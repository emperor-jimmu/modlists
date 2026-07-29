#import "../../../typst/styles.typ": *

= Mod List — Wave 1

Wave 1 expands the mod list to include *Graphics*, *Light mechanic*, and *Content addition* mods alongside continued *UI/QoL* improvements. No heavy overhauls — those are reserved for Wave 2.

#warning-box[All mods require the foundation framework from the Installation section: Harmony, ButterLib, UIExtenderEx, and MCM. Install these before adding any Wave 1 mods.]

// ========================================
// Graphics
// ========================================

== Graphics

// ---- Raise your Banner ----
#mod-entry(
  "Raise your Banner",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3253",
  "Graphics",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Adds more banners to the battlefield. Troops, formations, and locations display faction banners, increasing visual fidelity and immersion during large-scale battles.],
  [MCM settings for banner density and placement. Toggle which formations display banners.],
  [Graphics section — early. Load before texture and content mods.],
  [Same author as Raise your Torch — designed to work together. No known conflicts.],
)

// ---- Perfect Fire Arrows ----
#mod-entry(
  "Perfect Fire Arrows",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3303",
  "Graphics",
  [None — standalone],
  [Visual-only mod. Archers and ranged troops shoot flaming projectiles during night battles. Fire arrows provide atmospheric lighting without affecting damage or accuracy.],
  [No configuration needed. Active automatically during night battles.],
  [Graphics section. No dependencies — loads independently.],
  [Purely visual. No conflicts with any other mod.],
)

// ---- Hairstyles dlx ----
#mod-entry(
  "Hairstyles dlx",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/4762",
  "Graphics",
  [None — standalone],
  [Replaces several male and female hairstyles with higher-quality alternatives. Visible in character creation and on NPCs throughout the world. No gameplay impact.],
  [No configuration. Replaces hairstyles automatically in the character creation menu and on NPCs.],
  [Graphics section. Load after texture mods if present.],
  [May conflict with other character appearance mods that modify hairstyles. Compatible with Women in Calradia.],
)

// ---- Immersive Battlefields ----
#mod-entry(
  "Immersive Battlefields",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/4633",
  "Graphics",
  [Harmony],
  [Adds battlefield audio immersion — sergeants repeat and pass formation commands audibly, soldiers yell when a charge is ordered, and horn sounds echo across the field. Audio-only, no gameplay mechanics changed.],
  [Config file in mod folder for volume, frequency, and which sounds are enabled.],
  [Graphics section — late. Audio layer loads after visual mods.],
  [Complements Realistic Morale System. No gameplay conflicts — audio only.],
)

// ---- BloodMod ----
#mod-entry(
  "BloodMod — More Blood and Gore",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/1591",
  "Graphics",
  [None — standalone],
  [Increases blood splatter and gore effects across all battlefields. Adds decals, blood pooling, and more visceral combat visuals without changing any game mechanics. Purely visual — no damage or combat changes.],
  [No configuration needed. Active automatically.],
  [Graphics section. Loads independently — pure asset replacement.],
  [Purely visual. No conflicts with any mod. Complements Perfect Fire Arrows and Immersive Battlefields for atmospheric battles.],
)

// ---- Random Bodies ----
#mod-entry("Random Bodies", "https://www.nexusmods.com/mountandblade2bannerlord/mods/5168", "Graphics", [None — standalone], [Adds body variety to all characters — troops, NPCs, and lords no longer share identical builds. Randomizes body shape, height, and build within culturally-appropriate ranges. Makes armies look like real populations.], [No config. Active automatically. V5.8 — compatible with all recent Bannerlord versions.], [Graphics — after BloodMod. Asset-only — loads independently.], [Compatible with all mods. Pure character model variation. Same author as Variety Unlocked and More Names.],)

// ---- Realistic Practical Holsters ----
#mod-entry("Realistic Practical Holsters", "https://www.nexusmods.com/mountandblade2bannerlord/mods/5935", "Graphics", [None — standalone], [Fixes weapon holster positions for polearms, two-handed swords, and axes to be historically accurate. Weapons no longer float at odd angles. Includes historically accurate seax/dagger positioning. Multiple variants. Purely visual.], [Multiple file variants — choose spear orientation and holster style at install.], [Graphics — after Random Bodies. Visual-only.], [Compatible with most weapon mods. Lore-friendly — no dependencies.],)

// ---- Swadian Armoury ----
#mod-entry("Swadian Armoury", "https://www.nexusmods.com/mountandblade2bannerlord/mods/2349", "Graphics", [None — standalone], [High-quality custom armor pack in the Swadian (Vlandian) aesthetic. Plate armor, helmets, shields, and horse barding. Used by 92+ mods as an asset dependency. Foundational Vlandian visual mod.], [No config needed. Items appear in Vlandian shops and on high-tier troops. May need a mod to force-spawn in shops.], [Graphics — after Holsters. Asset pack.], [Used by 92+ mods. Save-game compatible. Required by CEK Enhanced Edition (Wave 2).],)

// ---- Realistic Battle Sounds ----
#mod-entry("Realistic Battle Sounds", "https://www.nexusmods.com/mountandblade2bannerlord/mods/4456", "Graphics", [Harmony, ButterLib, UIExtenderEx, MCM], [Replaces battle audio with realistic hit sounds and improved voice lines. Weapons sound like weapons. Updated for v1.3.15.], [No config needed.], [Graphics — last in Graphics. Audio overlay loads after visual mods.], [Complements Immersive Battlefields and Nemesis — different audio layers. No conflicts.],)

// ---- Better NPCS ----
#mod-entry("Better NPCS — All NPCS Redesigned", "https://www.nexusmods.com/mountandblade2bannerlord/mods/288", "Graphics", [None — standalone], [Complete visual redesign of every NPC. Lords, ladies, and notables get overhauled appearances — more distinct, culturally-appropriate features. One of the oldest and most endorsed character visual mods.], [No config. Automatic replacement.], [Graphics — after Battle Sounds. Character visuals before scene mods.], [Compatible with Random Bodies — different scope. May conflict with other NPC appearance replacers.],)

// ---- Dress The Wanderer ----
#mod-entry("Dress The Wanderer", "https://www.nexusmods.com/mountandblade2bannerlord/mods/8644", "Graphics", [None — standalone], [Customize companion and wanderer equipment directly through dialogue. Change outfits, armor, and civilian clothes. Give companions a coherent look. Purely cosmetic.], [No config. Access via companion dialogue.], [Graphics — after Better NPCS. Equipment customization layer.], [Compatible with Useful Companions — different systems. No conflicts.],)

// ---- Alive Scenes ----
#mod-entry("Alive Scenes", "https://www.nexusmods.com/mountandblade2bannerlord/mods/8138", "Graphics", [None — standalone], [Town and village scenes feel alive with ambient NPCs, animations, and activity. Markets bustle, streets have pedestrians, taverns have patrons. Pure visual atmosphere.], [No config. Automatic.], [Graphics — last. Scene enhancement after all visual mods.], [Visual only. Compatible with all mods.],)

// ---- Vaegir Armoury ----
#mod-entry("Vaegir Armoury", "https://www.nexusmods.com/mountandblade2bannerlord/mods/2698", "Graphics", [None — standalone], [High-quality custom armor pack in the Vaegir (Sturgian) aesthetic. Lamellar armor, fur-lined helmets, northern shields. Complements Swadian Armoury. Required by CEK Enhanced Edition (Wave 2).], [No config. Items appear in Sturgian shops and on high-tier troops.], [Graphics — after Alive Scenes. Asset pack.], [Complements Swadian Armoury — different cultures. Required by CEK Enhanced Edition. Save-game compatible.],)

// ---- Terra Armarium ----
#mod-entry("Terra Armarium", "https://www.nexusmods.com/mountandblade2bannerlord/mods/7165", "Graphics", [None — standalone], [Additional high-quality armor and equipment pack. Fills gaps in vanilla armor progression. New helmets, body armor, and shields across multiple cultures.], [No config. Items distributed automatically.], [Graphics — after Vaegir Armoury. Asset pack.], [Complements OSA, Swadian, and Vaegir Armoury. No conflicts.],)

// ========================================
// Content Addition
// ========================================

== Content Addition

// ---- Cultured Start Reloaded ----
#mod-entry(
  "Cultured Start Reloaded",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/10050",
  "Content Addition",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Overhauls Bannerlord's character creation with a custom start system. Choose your start type, culture, starting resources, clan tier, and equipment. Skip the tutorial or begin with alternative scenarios that fit the Exile narrative.],
  [Extensive MCM options for start type, starting gold, clan tier, equipment packages, and culture selection. Configure before starting a new campaign.],
  [Content Addition — early. Character creation mods must load before any mod that references the player character.],
  [Bypasses the vanilla main quest — supported by the modlist's Exile narrative. Requires the full framework (Harmony, ButterLib, UIExtenderEx, MCM).],
)

// ---- Women in Calradia ----
#mod-entry(
  "Women in Calradia",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/1578",
  "Content Addition",
  [Harmony],
  [Adds 17 female companions and 3 male companions to the world. An optional NPC replacer version is available for existing characters. Expands companion variety for recruiting and role assignment.],
  [Two versions available — choose the companion addition version for new characters, or the NPC replacer version to modify existing NPCs. Configure during mod installation.],
  [Content Addition — early. New characters must exist before other mods reference them.],
  [Adds new characters without modifying existing ones. Compatible with all mods. Lore-friendly companion additions — not adult or pornographic content.],
)

// ---- Bandit Variety ----
#mod-entry(
  "Bandit Variety",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3041",
  "Content Addition",
  [Harmony],
  [Adds 12 new bandit troop trees — one male and one female variant for each bandit type. Units upgrade through tier 6. Makes bandit encounters more diverse, challenging, and rewarding throughout the campaign.],
  [No configuration. The new troop trees are added automatically.],
  [Content Addition — after character/companion mods, before Light Mechanic mods that modify faction behavior.],
  [#warning-box[Balance note: tier 6 bandit units may be strong in early game. Monitor difficulty and adjust game settings if needed.] No conflicts with other mods.],
)

// ---- Titles ----
#mod-entry(
  "Titles",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9794",
  "Content Addition",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Adds historically-accurate noble titles reflecting each lord's holdings and position within their kingdom. Enhances the feudal atmosphere with proper forms of address. Mostly visual and immersion-focused with gameplay additions planned.],
  [MCM settings for title display format, localization, and title conditions.],
  [Content Addition. No dependency conflicts — loads independently within the section.],
  [Purely additive — no known conflicts. Works alongside Complex Characters and Rumor Has It for NPC depth.],
)

// ---- Player Settlements ----
#mod-entry(
  "Player Settlements",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/7298",
  "Content Addition",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Build your own towns, villages, and castles anywhere on the campaign map. Construction requires gold, influence, and minimum clan tier (all configurable). Adds a new layer of strategic settlement planning to the mid-game.],
  [MCM settings for build costs, construction time, maximum settlement count, and clan tier requirements.],
  [Content Addition — after troop and equipment mods, before Light Mechanic overrides.],
  [Verify placement coordinates do not conflict with any map-modifying mods. Compatible with all mods in this list.],
)

// ---- Retinues ----
#mod-entry(
  "Retinues — Custom Clan and Kingdom Troops",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/8847",
  "Content Addition",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Design custom clan and kingdom troop trees. Unlock gear through battle, outfit and promote retinues, and select unique doctrine perks that provide bonuses. Compatible with Bannerlord v1.2, v1.3, and v1.4. Adds troop customization without replacing vanilla trees.],
  [Extensive MCM settings for troop customization, gear unlock requirements, doctrine selection, and retinue management.],
  [Content Addition — late in the section. Custom troop trees should load after all equipment and troop mods.],
  [Explicitly compatible with v1.4.x. Does not replace vanilla troop trees — adds alongside them. Safe with Bandit Variety.],
)

// ---- Open Source Armory ----
#mod-entry(
  "Open Source Armory",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2829",
  "Content Addition",
  [Harmony],
  [Massive community-created weapon and armor asset pack. Adds hundreds of new items distributed across cultures. Required dependency for Calradia Expanded Kingdoms (Wave 2). Installed as a single pack containing Open Source Armory, Saddlery, and Weaponry.],
  [No configuration needed. Items are distributed automatically to appropriate cultures and troops.],
  [Content Addition — early. Asset packs must load before troop and equipment mods that reference them.],
  [Required by Calradia Expanded Kingdoms (Wave 2). Widely compatible — standard asset addition. No conflicts.],
)

// ---- Warlord Pack ----
#mod-entry(
  "Warlord Pack",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5655",
  "Content Addition",
  [None — standalone],
  [Brings classic Warband features to Bannerlord: feasts, manhunters and deserters, nobility ranks, books and scrolls, reactive companions, ambushes, tavern drunks, claimant quests, standard arena equipment, and classic voice lines. Every feature can be toggled individually via MCM.],
  [Extensive MCM settings — each feature can be enabled or disabled independently. Disable Manhunters if using Calradia Expanded Kingdoms (Wave 2) to avoid duplication. Disable Nobility if using Banner Kings (Wave 2) to avoid title conflicts.],
  [Content Addition — after troop mods, before Light Mechanic overrides.],
  [#tip-box[Contains a Nobility feature that adds ranks — disable if planning to use Banner Kings (Wave 2).] Manhunters overlap with CEK (Wave 2) — disable the Warlord Pack version if both are active. All features are toggleable — safe to install even if some overlap with other mods.],
)

// ---- Captivity Events ----
#mod-entry(
  "Captivity Events",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/1226",
  "Content Addition",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Expands Bannerlord's captivity system with dynamic events, captor interactions, and story-driven encounters. Being captured becomes a narrative experience rather than a loading screen. Includes ransom negotiations, escape scenarios, and world events that can trigger while imprisoned.],
  [MCM settings for event frequency and which event types are enabled. Adult-content events can be disabled if preferred.],
  [Content Addition — after settlement mods. Event systems load before mechanic overrides.],
  [#tip-box[Contains adult-themed events — configure via MCM to disable if preferred.] Compatible with all mods. Event-driven — does not modify core systems.],
)

// ---- Camp Followers ----
#mod-entry(
  "Camp Followers",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3317",
  "Content Addition",
  [None — standalone],
  [Adds camp follower options to army menus — weapons traders and camp followers that follow your army on campaign. Adds historical depth to the army experience with services available when encamped.],
  [No configuration needed. Access via the army menu.],
  [Content Addition — late. Army menu additions should load after all troop and settlement mods.],
  [No conflicts. Standalone army menu addition. Compatible with all mods.],
)

// ========================================
// Light Mechanic
// ========================================

== Light Mechanic

// ---- Better Time ----
#mod-entry(
  "Better Time",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2849",
  "Light Mechanic",
  [Harmony, Better Core (#link("https://www.nexusmods.com/mountandblade2bannerlord/mods/6367")[Nexus])],
  [Adds two extra speed options and a speed button to the campaign map time control panel. Accelerate travel and waiting without affecting combat time or battle flow. Reduces downtime during long-distance travel and siege waiting periods.],
  [MCM settings for default speed and hotkey bindings. Configure speed multipliers for each level.],
  [Light Mechanic — early. Time control should load before mods that depend on time progression.],
  [Requires Better Core if from the Better mod series. Does not affect battle time — campaign map only.],
)

// ---- Raise your Torch ----
#mod-entry(
  "Raise your Torch",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3289",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Equips torches during night battles for both player and AI troops. Transforms night engagements from frustrating blindness into tactical, atmospheric encounters where visibility becomes a strategic resource.],
  [MCM settings for torch brightness, which troop types carry torches, and torch behavior during combat.],
  [Light Mechanic. Battle mechanic — loads after content additions, before other battle mods.],
  [Same author as Raise your Banner — designed to work together. Compatible with Perfect Fire Arrows and Immersive Battlefields.],
)

// ---- Complex Characters ----
#mod-entry(
  "Complex Characters",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/7565",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Adds 467 situation-based dialogue lines for NPCs. Lords and ladies have distinct ambitions and personalities through a new ambition system that influences their behavior on the campaign map. NPCs react dynamically to your actions and reputation.],
  [MCM settings for ambition system strength, dialogue frequency, and personality influence on AI behavior.],
  [Light Mechanic. Dialogue system — loads after content additions, before battle mechanics.],
  [Complements Rumor Has It — different systems (dialogue vs. rumors) that enhance NPC depth without overlapping. Both can be used together safely.],
)

// ---- Rumor Has It ----
#mod-entry(
  "Rumor Has It",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/11190",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Immersive rumor system. NPCs in taverns and towns dynamically discuss world events, wars, marriages, and the reputations of other lords. Information spreads organically through Calradia, giving you intel about the world without needing to be everywhere at once.],
  [MCM settings for rumor frequency, spread range, and which event types generate rumors.],
  [Light Mechanic. Dialogue/diplomacy layer — loads before battle and faction mechanics.],
  [Complements Complex Characters. Both enhance NPC interaction through different, non-redundant systems. No known conflicts.],
)

// ---- Fourberie ----
#mod-entry(
  "Fourberie",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2969",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Expands criminal and rogue gameplay with a large panel of features — schemes, dirty tactics, assassination plots, disguise systems, prisoner interactions, and more. Develop a cunning character who wins through guile rather than brute force. Used by 31+ other mods.],
  [Extensive MCM settings for each feature toggle. All schemes and tactics can be individually enabled or disabled. Configure difficulty scaling for rogue actions.],
  [Light Mechanic — late. Rogue gameplay must load after dialogue, NPC, and faction systems.],
  [#tip-box[All features are individually toggleable. Disable any that feel overpowered or that overlap with Xorberax's Legacy.] No direct conflicts — Fourberie focuses on rogue/schemes while Xorberax's Legacy covers combat and economy.],
)

// ---- Realistic Morale System ----
#mod-entry(
  "Realistic Morale System",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/10059",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Battle morale overhaul. Troops react realistically to danger, casualties, leader presence, and tactical pressure. Captains and generals inspire nearby units. Flanked or panicked formations struggle to hold the line. Transforms battles into tense, dynamic engagements where morale matters as much as numbers.],
  [MCM settings for morale thresholds, leader influence strength, panic behavior, and recovery rates.],
  [Light Mechanic — late battle logic. Must load after all troop and content mods, before any combat overhaul (none in Wave 1).],
  [Complements Immersive Battlefields (audio) and Epic Sieges (siege parameters). No overlap — morale is a separate system from damage or audio. Verify compatibility with Xorberax's Legacy combat sub-mods (deadly combat features are disabled by recommendation).],
)

// ---- Epic Sieges ----
#mod-entry(
  "Epic Sieges",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/7294",
  "Light Mechanic",
  [Harmony],
  [Enhances siege battles by adjusting key parameters — ladders can be pushed down by defenders, siege towers and battering rams are more durable, gates last longer, and barricades are easier to destroy. Longer, more strategic sieges that reward player tactics over brute force.],
  [No MCM integration. Configuration via the mod's config file for parameter tuning.],
  [Light Mechanic — late. Siege parameter changes should load after all content and troop mods.],
  [Standalone tweak to siege parameters. Does not conflict with Realistic Morale System or Xorberax's Legacy. Compatible with all mods.],
)

// ---- Art of War ----
#mod-entry(
  "Art of War",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3970",
  "Light Mechanic",
  [Harmony, MCM],
  [Improves AI behavior on the campaign map during wartime. Armies detach parties to defend raided villages, siege target logic is smarter, mercenary clans are not wasted on garrison duty, and armies patrol last-attacked settlements instead of wandering aimlessly. All features toggleable via MCM.],
  [MCM settings for each feature: detachment logic, siege targeting, garrison behavior, patrol logic. Tune AI aggressiveness and detachment thresholds.],
  [Light Mechanic — mid-section. AI behavior changes should load before combat mechanics.],
  [Compatible with Realistic Morale System and Epic Sieges — different systems (campaign AI vs. battle morale vs. siege parameters). No overlap.],
)

// ---- Breakable Polearms ----
#mod-entry(
  "Breakable Polearms",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5285",
  "Light Mechanic",
  [MCM, UIExtenderEx],
  [Polearms can now break during combat. Adds tactical depth — lances and spears are not infinite-use weapons. High-quality polearms last longer. Configurable break chance and durability. Tagged as fair and balanced by the community.],
  [MCM settings for break chance, durability scaling, and which polearm types are affected.],
  [Light Mechanic — battle mechanic. Loads after troop mods, before compilation mods.],
  [Compatible with all weapon and combat mods. Does not change damage values — only adds breakability.],
)

// ---- Kingdom Politics Expanded ----
#mod-entry(
  "Kingdom Politics Expanded",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/4970",
  "Light Mechanic",
  [Harmony],
  [Complete overhaul of AI voting on kingdom policies and settlement ownership. AI lords vote based on their actual needs — loyalty, security, gold, militia — not arbitrary weights. Tracks per-clan war scores and siege contributions for fair fief distribution. Fixes broken vanilla policies: Crown Duty, Land Grants for Veterans, King's Mercenaries, Peerage, and Road Tolls.],
  [MCM settings to toggle settlement voting overhaul and policy voting behavior. Console command available to opt out of fief candidacy.],
  [Light Mechanic — mid-section. Kingdom mechanics load after faction mods, before compilation mods.],
  [Fixes broken vanilla policies — these were bugged in the base game. Save-compatible to add. Use console command `mods.uninstall_kingdom_politics_expanded` before removing. No conflicts with other mods.],
)

// ---- Nemesis ----
#mod-entry(
  "Nemesis",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5729",
  "Light Mechanic",
  [Harmony],
  [Lords are no longer faceless units in battle. They taunt, insult, and react to your actions — being hit, blocking, or striking their horse. 1800+ voice lines across 50 distinct voices, including unique accents (French Vlandians, Scottish Battanians, Ukrainian Sturgian women). Includes True Noble Opinion system — each lord has their own relationship with you, not just the clan leader's. Also works in tournaments.],
  [No configuration needed. Hold Left Alt to see nearby companions and enemy lords. Works automatically in battle and tournaments.],
  [Light Mechanic — late. Voice/dialogue system loads after NPC mods, before compilation mods.],
  [True Noble Opinion separates individual lord relationships from clan leader — compatible with Complex Characters but may interact with its ambition system. No data saved — safe to add or remove at any time.],
)

// ---- Malfoy Collection ----
#mod-entry(
  "Malfoy Collection",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5356",
  "Light Mechanic",
  [Harmony],
  [Compilation of 8 small tweak mods, each toggleable via MCM: Hidden Parents (removes auto-generated parent characters from encyclopedia), No AI Circular Tactics (disables the infamous circle-of-death AI behavior), Reveal All Heroes (unlocks all hero encyclopedia entries at campaign start), Companion Takeover (companions take command if player falls in battle), Reduced Execution Penalty, Tavern Reservation (buy drinks for soldiers), No Auto Garrison Donation, and No Big Smiles. Updated for v1.4.x (June 2026).],
  [MCM settings for each of the 8 features — enable or disable individually. Disable Reveal All Heroes if you prefer encyclopedia fog-of-war.],
  [Light Mechanic — mid-section. Collection of UI and behavior tweaks — loads before heavy mechanic mods.],
  [#tip-box[Reveal All Heroes unlocks encyclopedia entries — this is different from All Heroes Are Visible In Battle (Wave 0) which adds a battle overlay. Both can be used together.] No known conflicts. All features individually toggleable.],
)

// ---- Pregnancy Control Continued ----
#mod-entry(
  "Pregnancy Control Continued",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5478",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Revives and expands the Pregnancy Control mod with a complete seduction system using Bannerlord's persuasion mechanics. Seduce heroes through persuasion, manage dynasty and pregnancy mechanics. Integrates with the game's existing social systems.],
  [MCM settings for seduction difficulty, pregnancy rates, and feature toggles. Adult-content features can be configured.],
  [Light Mechanic — late. Character relationship systems load after NPC mods.],
  [#tip-box[Contains adult-themed content — configure via MCM.] Dynasty and pregnancy mechanics are thematically relevant for long-term campaigns. Compatible with Dramalord — different systems (pregnancy/dynasty vs. marriage/affairs).],
)

// ---- Dramalord ----
#mod-entry(
  "Dramalord",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/6682",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Overhauls Bannerlord's marriage and relationship system. Adds flirting, affairs, love-based marriage, and NPC reactions to romantic events — including jealousy and relationship consequences. Highly configurable — range from expanded romance to full relationship simulation. All NPC reactions reflect their personality traits.],
  [Extensive MCM settings for every feature — flirt success rates, affair discovery chance, NPC reaction intensity, and which mechanics are active.],
  [Light Mechanic — late. Relationship mechanics load after NPC and dialogue systems.],
  [Complements Complex Characters and Nemesis — different relationship layers (dialogue/ambition vs. battle taunts vs. romance). Compatible with Pregnancy Control Continued — Dramalord handles relationship mechanics while PCC handles pregnancy and seduction.],
)

// ---- Realistic Weather ---- #mod-entry("Realistic Weather","https://www.nexusmods.com/mountandblade2bannerlord/mods/4367","Light Mechanic",[Harmony,MCM,UIExtenderEx],[Weather affects visibility, speed, and morale on the campaign map. Rain, snow, fog, and sandstorms are terrain-dependent. All effects configurable in MCM. Updated for 1.4.5.],[MCM settings for each weather effect. Tune or disable individually.],[Light Mechanic — mid. Campaign map effects after faction mods.],[Compatible with all mods. Affects campaign map layer only.],)

// ---- Surrender Tweaks ---- #mod-entry("Surrender Tweaks","https://www.nexusmods.com/mountandblade2bannerlord/mods/2797","Light Mechanic",[Harmony,MCM,UIExtenderEx],[Overhauls surrender and capture mechanics. Bandits and outmatched parties surrender. Lords negotiate capitulation. Siege defenders can surrender. Used by 20+ mods. Tagged fair and balanced.],[MCM settings for surrender thresholds and negotiation parameters.],[Light Mechanic — late. After faction and battle mods.],[Used by 20+ mods. Complements AI Values Life and Realistic Morale. Save-game compatible.],)

// ---- Useful Companions ---- #mod-entry("Useful Companions","https://www.nexusmods.com/mountandblade2bannerlord/mods/1033","Light Mechanic",[None — standalone. Does NOT use Harmony.],[Companions earn XP out of combat. Quartermaster auto-buys food. Auto-rebuild parties. Transfer companions remotely. Governors manage prosperity. Caravan leaders improve. Uses decorated pattern for maximum compatibility.],[XML config in Documents folder. All features toggleable.],[Light Mechanic — mid. After NPC mods.],[Does NOT use Harmony — exceptionally safe. Save-game compatible — enable/disable anytime.],)

// ---- All Equipment Usable ---- #mod-entry("All Equipment Usable","https://www.nexusmods.com/mountandblade2bannerlord/mods/9393","Light Mechanic",[None — standalone],[Removes culture and gender restrictions on player equipment. Any character can equip any armor or weapon. Does NOT affect AI troops — only removes player-facing restrictions.],[No config.], [Light Mechanic — early. Equipment rules before troop mods.],[No conflicts. Player-only — AI retains cultural identity.],)

// ---- Attribute Point Fix ---- #mod-entry("Attribute Point Fix","https://www.nexusmods.com/mountandblade2bannerlord/mods/9631","Light Mechanic",[None — standalone],[Fixes attribute point calculation to ensure correct points per level. Addresses a vanilla bug where progression could be inconsistent. Essential for long-term character builds.],[No config. Fix is automatic.],[Light Mechanic — early. Character fix before skill mods.],[Bugfix only — no balance impact. No conflicts.],)

// ---- ARENA FULL XP ---- #mod-entry("ARENA FULL XP","https://www.nexusmods.com/mountandblade2bannerlord/mods/10331","Light Mechanic",[None — standalone. No Harmony.],[Arena and tournaments give full 1x XP instead of vanilla 0.06x. Simple override — no Harmony needed. Extremely safe to add/remove.],[No config. Simple game file override.],[Light Mechanic — early. XP override before skill mods.],[Considered a convenience mod. No Harmony — resilient to updates.],)

// ---- Better Smithing Continued ---- #mod-entry("Better Smithing Continued","https://www.nexusmods.com/mountandblade2bannerlord/mods/4318","Light Mechanic",[None — standalone],[Smithing overhaul: faster stamina recovery, better part unlocks, improved smelting yields, sensible crafting requirements. Community fork updated for current versions.],[MCM settings for stamina, unlocks, smelting, and crafting.],[Light Mechanic — mid. Smithing after economy mods.],[Complements Crafting Piece Sorter (Wave 0). No conflicts.],)

// ---- Donate Grain ---- #mod-entry("Donate Grain","https://www.nexusmods.com/mountandblade2bannerlord/mods/9260","Light Mechanic",[None — standalone],[Donate grain/food to settlements from the town menu. Helps starving settlements, builds relation with notables, uses excess food. Simple but impactful.],[No config. Access via town menu.],[Light Mechanic — early. Settlement interaction.],[No conflicts. Simple menu addition.],)

// ---- Agriculture Estate Updated ---- #mod-entry("Agriculture Estate Updated","https://www.nexusmods.com/mountandblade2bannerlord/mods/4535","Light Mechanic",[None — standalone],[Agricultural estate management. Own farmland, manage crop production, earn passive income. Expand economy beyond workshops and caravans.],[MCM settings for income rates and management.],[Light Mechanic — mid. Economy after settlement mods.],[Complements Player Settlements and Donate Grain. No conflicts.],)

// ---- Custom Startup Options ---- #mod-entry("Custom Startup Options","https://www.nexusmods.com/mountandblade2bannerlord/mods/9304","Light Mechanic",[ButterLib,Harmony,MCM,UIExtenderEx],[Granular new campaign customization: starting gold, clan tier, renown, influence, skills, attributes, equipment. More detailed than Cultured Start. Both can be used together.],[Extensive MCM settings for each parameter.],[Light Mechanic — very early. Must load before character creation.],[Complements Cultured Start Reloaded — different focus. No conflicts.],)

// ---- AI Values Life ---- #mod-entry("AI Values Life","https://www.nexusmods.com/mountandblade2bannerlord/mods/481","Light Mechanic",[Harmony,MCM],[NPCs value their lives realistically. Bandits and outmatched parties surrender. Lords weigh odds before hopeless battles. Prisoner behavior varies by personality and relations. One of the original AI behavior mods.],[MCM settings for surrender thresholds and death chances.],[Light Mechanic — late behavioral layer. After Surrender Tweaks.],[Complements Surrender Tweaks — AVL handles tactical surrender, ST handles strategic. Foundational mod.],)

// ---- AI Executioner ---- #mod-entry("AI Executioner","https://www.nexusmods.com/mountandblade2bannerlord/mods/3917","Light Mechanic",[None — standalone],[AI lords can execute prisoners. Adds mortal stakes to capture — lords you've wronged may not survive captivity. Your enemies remember.],[No config. Behavior is automatic based on traits and relations.],[Light Mechanic — late. After capture and relationship mods.],[May increase lord death rate. Complements AI Values Life and Surrender Tweaks.],)

// ---- Calradian's Creed ---- #mod-entry("Calradian's Creed","https://www.nexusmods.com/mountandblade2bannerlord/mods/8856","Light Mechanic",[None — standalone],[Assassination and stealth gameplay. Parkour, hidden blade, stealth kills, faction-targeted assassination contracts. Win through subtlety.],[MCM settings for difficulty and feature toggles.],[Light Mechanic — late. New gameplay system after all other mods.],[Complements Fourberie — different rogue systems (stealth vs. schemes).],)

// ---- I Swear Fealty ---- #mod-entry("I Swear Fealty","https://www.nexusmods.com/mountandblade2bannerlord/mods/10148","Light Mechanic",[None — standalone],[Expanded vassalage mechanics with ceremonies, oath options, and consequences for oath-breaking. Becoming a vassal feels like a medieval pact.],[No config. Ceremonies activate through normal vassalage dialogue.],[Light Mechanic — late. Kingdom interaction after diplomacy mods.],[Complements Kingdom Politics Expanded and Diplomacy (Wave 2). No conflicts.],)

// ---- BECOME KING - HOLMGANG ---- #mod-entry("BECOME KING — HOLMGANG","https://www.nexusmods.com/mountandblade2bannerlord/mods/9460","Light Mechanic",[None — standalone],[Challenge a ruler to single combat to claim the throne. Norse-inspired warrior's path to power. Your blade alone determines your right to rule.],[No config. Challenge via dialogue with the ruler.],[Light Mechanic — late. Kingdom mechanics after diplomacy mods.],[Considered power-fantasy. Disable if using Banner Kings (Wave 2).],)

// ---- Continuous Naval Battle ---- #mod-entry("Continuous Naval Battle","https://www.nexusmods.com/mountandblade2bannerlord/mods/10392","Light Mechanic",[None — standalone],[Ship-to-ship combat on Calradia's waters. Works with existing water travel mechanics. New tactical dimension for coastal campaigns.],[No config. Naval battles activate on water routes.],[Light Mechanic — late. Battle system after combat mods.],[May require War Sails DLC. Test before committing.],)

// ---- BE - Spouses Expanded ---- #mod-entry("Bannerlord Expanded — Spouses Expanded","https://www.nexusmods.com/mountandblade2bannerlord/mods/6952","Light Mechanic",[Harmony,MCM],[Expands spouse interactions and utility. Adjustable twin probability (vanilla is 3%). Expanded marriage mechanics. All features toggleable.],[MCM settings for each feature.],[Light Mechanic — late. Marriage mechanics after NPC relationship mods.],[Complements Dramalord and PCC — different marriage layers.],)

// ---- True Controller ---- #mod-entry("True Controller","https://www.nexusmods.com/mountandblade2bannerlord/mods/3543","Light Mechanic",[MCM],[Utility hub for True Gameplay Overhaul mods. Centralized MCM config for True Noble Opinion, True Relations, True Battle Loot, True Town Gold, True Army Costs. Required dependency for True Battle Loot.],[MCM settings serve as one-stop TGO config shop.],[Light Mechanic — early. Utility/framework before dependent mods.],[Required by True Battle Loot. Does nothing on its own — a dependency, not a gameplay mod.],)

// ---- Detailed Character Creation ---- #mod-entry("Detailed Character Creation","https://www.nexusmods.com/mountandblade2bannerlord/mods/118","Light Mechanic",[None — standalone],[One of the original essential Bannerlord mods. Full body sliders for character creation — proportions, facial features, age, weight, muscle tone. Works at creation and via barber.],[Access via character creation screen or town barber.],[Light Mechanic — very early. Must load before character mods.],[Foundational — compatible with all mods. No conflicts.],)

// ---- Supply Lines ---- #mod-entry("Supply Lines","https://www.nexusmods.com/mountandblade2bannerlord/mods/2266","Light Mechanic",[Harmony,MCM],[Strategic supply line system. Troops consume supplies over time. Villages and towns become critical resupply points. Realistic logistics depth for warfare.],[MCM settings for consumption rates and consequences.],[Light Mechanic — mid. Strategic logistics after faction mods.],[Complements AI Values Life — logistics and surrender create complete warfare ecosystem.],)

// ---- Reinforcement System ---- #mod-entry("Reinforcement System","https://www.nexusmods.com/mountandblade2bannerlord/mods/6501","Light Mechanic",[Harmony,MCM],[Battle reinforcements arrive in waves based on tactical positioning. Distant units enter over time instead of spawning at your feet. Makes field battles feel like real engagements.],[MCM settings for wave timing, spawn distances, thresholds.],[Light Mechanic — mid. Battle system after troop mods.],[Complements Realistic Morale System — morale and reinforcements together create tactical depth.],)

// ---- Party AI Controls ---- #mod-entry("Party AI Controls","https://www.nexusmods.com/mountandblade2bannerlord/mods/9360","Light Mechanic",[Harmony,MCM],[Give detailed orders to clan parties: patrol routes, defensive zones, recruitment behaviors, engagement rules. Companion parties become strategic assets. Updated for 1.3.x.],[MCM per-party settings for aggression, patrol, recruitment, engagement.],[Light Mechanic — early. Party behavior after character mods.],[Complements Useful Companions — PAC handles strategic orders, UC handles utility.],)

// ---- True Battle Loot ---- #mod-entry("True Battle Loot","https://www.nexusmods.com/mountandblade2bannerlord/mods/3365","Light Mechanic",[True Controller,MCM],[Part of True Gameplay Overhaul. Enemies drop what they were actually wearing. No looting plate armor from looters. Your soldiers claim their share. Rewards feel earned.],[MCM via True Controller for loot share, quality, drop rules.],[Light Mechanic — late. Loot system after battle mods. Requires True Controller.],[Requires True Controller. Complements AI Values Life — realistic death and loot.],)

// ---- BE - Companion Expanded ---- #mod-entry("Bannerlord Expanded — Companion Expanded","https://www.nexusmods.com/mountandblade2bannerlord/mods/6736","Light Mechanic",[Harmony,MCM],[Part of Bannerlord Expanded series. Companion depth — expanded interactions, quests, personality-driven behavior, relationship development. Features toggleable via MCM.],[MCM settings for each feature.],[Light Mechanic — mid. Companion behavior after NPC dialogue mods.],[Complements Useful Companions. Same series as Spouses and Children Expanded.],)

// ---- BE - Settlement Interactions ---- #mod-entry("Bannerlord Expanded — Settlement Interactions","https://www.nexusmods.com/mountandblade2bannerlord/mods/6887","Light Mechanic",[Harmony,MCM],[Part of Bannerlord Expanded series. New settlement interactions — expanded notable dialogue, settlement events, location-based encounters. Features toggleable.],[MCM settings for frequency and event types.],[Light Mechanic — mid. Settlement interactions after faction mods.],[Complements Alive Scenes. Compatible with Donate Grain and Agriculture Estate.],)

// ---- BE - Children Expanded ---- #mod-entry("Bannerlord Expanded — Children Expanded","https://www.nexusmods.com/mountandblade2bannerlord/mods/6735","Light Mechanic",[Harmony,MCM],[Part of Bannerlord Expanded series. Children grow and develop with depth — education options, interactions. Heirs become meaningful characters.],[MCM settings for growth rates, education, interactions.],[Light Mechanic — late. Family/dynasty after character and relationship mods.],[Complements Pregnancy Control Continued. Same series as Spouses and Companion Expanded.],)

// ---- Naval DLC Balance Fix ---- #mod-entry("Naval DLC Balance Fix","https://www.nexusmods.com/mountandblade2bannerlord/mods/9632","Light Mechanic",[None — standalone],[Fixes balance issues from War Sails DLC naval content. Adjusts ship costs, crew wages, and naval battle rewards to fit vanilla balance.],[No config. Balance adjustments automatic.],[Light Mechanic — early. Balance fix before naval mods.],[Only needed with War Sails DLC. Pure number adjustments — no conflicts. Skip without DLC.],)

// ---- Artems Lively Animations ---- #mod-entry("Artems Lively Animations","https://www.nexusmods.com/mountandblade2bannerlord/mods/5059","Graphics",[None — standalone],[Adds lively animations to characters — more natural idle poses, expressive gestures during dialogue, and smoother movement transitions. Makes NPCs feel less robotic and more alive.],[No config. Automatic.],[Graphics — after Terra Armarium. Animation layer before Light Mechanic.],[Visual only. Compatible with all mods. No gameplay impact.],)

// ---- Enlisted ---- #mod-entry("Enlisted","https://www.nexusmods.com/mountandblade2bannerlord/mods/9193","Light Mechanic",[None — standalone],[Enlist as a regular soldier in a lord's army instead of always being the commander. Work your way up from common soldier through the ranks. Experience Bannerlord from the ground up — follow orders, earn promotions, and eventually command. Completely different playstyle from the standard warlord path.],[No config for core mechanics.],[Light Mechanic — late. New gameplay system after faction and NPC mods.],[Adds a completely new way to play. No conflicts with other mods.],)

// ---- Battle Duels ---- #mod-entry("Battle Duels","https://www.nexusmods.com/mountandblade2bannerlord/mods/6436","Light Mechanic",[None — standalone],[Challenge enemy lords to single combat during battles. Resolve conflicts through personal combat — your skill with a blade can turn the tide without sacrificing troops. Adds a heroic dimension to large-scale battles.],[No config. Challenge via battle dialogue.],[Light Mechanic — late. Battle system after combat mods.],[Complements BECOME KING and Calradian's Creed — different duel contexts (battlefield vs. throne vs. stealth).],)

// ---- Better Attribute Points ---- #mod-entry("Better Attribute Points","https://www.nexusmods.com/mountandblade2bannerlord/mods/6269","Light Mechanic",[None — standalone],[Adjusts attribute point gains per level for more flexible character building. More points means less punishing build choices and more room to experiment with hybrid characters.],[MCM config for point gain rates.],[Light Mechanic — early. Character system before skill mods.],[Complements Better Attributes, Better Focus Points, and Better Skills — designed to work together as a character progression suite.],)

// ---- Better Attributes ---- #mod-entry("Better Attributes","https://www.nexusmods.com/mountandblade2bannerlord/mods/3434","Light Mechanic",[None — standalone],[Reworks how attributes affect gameplay. More impactful attribute scaling — each point in an attribute genuinely changes how your character performs. Makes attribute allocation a meaningful strategic choice rather than a formula.],[MCM config for attribute scaling.],[Light Mechanic — early. Character system before skill mods.],[Part of the Better series character suite. Complements Better Attribute Points, Better Focus Points, and Better Skills.],)

// ---- Better Focus Points ---- #mod-entry("Better Focus Points","https://www.nexusmods.com/mountandblade2bannerlord/mods/6273","Light Mechanic",[None — standalone],[Adjusts focus point gains for more flexible skill development. Specialize deeper or spread wider — your choice matters more when you have the points to commit.],[MCM config for focus point gain rates.],[Light Mechanic — early. Character system before skill mods.],[Part of Better series character suite. Complements Better Attributes and Better Skills.],)

// ---- Better Skills ---- #mod-entry("Better Skills","https://www.nexusmods.com/mountandblade2bannerlord/mods/3433","Light Mechanic",[None — standalone],[Reworks skill progression and unlocks. Skills feel more impactful at every level. Learning rates and caps are adjusted for a more satisfying progression curve.],[MCM config for skill learning rates and caps.],[Light Mechanic — early. Skill system before perk mods.],[Part of Better series character suite. Complements Better Attributes and Better Focus Points.],)

// ---- Better Bandages ---- #mod-entry("Better Bandages","https://www.nexusmods.com/mountandblade2bannerlord/mods/6388","Light Mechanic",[None — standalone],[Improves healing mechanics and bandage functionality. Wounded troops recover more realistically. Medicine skill matters more for recovery speed. Makes the surgeon role genuinely important.],[MCM config for healing rates and bandage effectiveness.],[Light Mechanic — mid. Healing after character mods, before battle mods.],[Complements Better Health. Part of Better series. No conflicts.],)

// ---- Better Executions ---- #mod-entry("Better Executions","https://www.nexusmods.com/mountandblade2bannerlord/mods/6426","Light Mechanic",[None — standalone],[Expands execution mechanics with more nuance. Different execution methods, varied relationship consequences, and more realistic reputation effects. Execution becomes a meaningful strategic choice with appropriate weight.],[MCM config for execution consequences and options.],[Light Mechanic — late. After capture and relationship mods.],[Complements AI Executioner and Reduced Execution Penalty (Malfoy Collection). Part of Better series.],)

// ---- Better Health ---- #mod-entry("Better Health","https://www.nexusmods.com/mountandblade2bannerlord/mods/6387","Light Mechanic",[None — standalone],[Reworks health and wounding mechanics. More realistic injury recovery, meaningful wounds that affect combat performance, and improved medicine integration. Getting hurt actually matters beyond a health bar.],[MCM config for wound severity, recovery times, and health scaling.],[Light Mechanic — mid. Health system after character mods.],[Complements Better Bandages. Part of Better series. No conflicts.],)

// ---- Better Horses ---- #mod-entry("Better Horses","https://www.nexusmods.com/mountandblade2bannerlord/mods/3205","Light Mechanic",[None — standalone],[Reworks horse mechanics: more realistic horse stats, breed variety matters, horses tire and need management, cavalry charges feel weighty. Mounted combat becomes a genuine tactical choice rather than always-optimal.],[MCM config for horse stats, fatigue, and charge mechanics.],[Light Mechanic — mid. Mount system before combat mods.],[Complements Better series. No conflicts with existing cavalry mods.],)

// ---- Better Marriage ---- #mod-entry("Better Marriage","https://www.nexusmods.com/mountandblade2bannerlord/mods/3202","Light Mechanic",[None — standalone],[Expands marriage mechanics — more proposal options, courtship depth, political marriage considerations, and spouse utility. Marriage becomes a strategic and personal choice with real consequences for your clan and kingdom.],[MCM config for marriage mechanics and options.],[Light Mechanic — late. After NPC relationship mods.],[Complements Dramalord and BE Spouses Expanded — different marriage layers (political mechanics vs. romance vs. spouse utility). Part of Better series.],)

// ---- Xorberax's Legacy ----
#mod-entry(
  "Xorberax's Legacy",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3462",
  "Light Mechanic",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Compilation of 9 sub-mods originally developed by Xorberax, updated and compiled into a single module with MCM integration. Each sub-mod can be individually toggled. Enabled features: Banks of Calradia (loans and interest), Cut Through Everyone (multi-hit weapons), Honest Work (village labor), Scholars of Calradia (skill lectures), Shoulder Camera (improved third-person), Training Field (troop training).],
  [#danger-box[*Critical:* Disable the following sub-mods in MCM before starting a campaign: *Deadly Combat*, *Deadly Horse Charges*, and *Friendly Fire*. These are heavy combat overhauls reserved for Wave 2.] All other sub-mods are individually toggleable via MCM.],
  [Light Mechanic — last. Compilation mods that touch multiple systems must load after all individual mods to avoid override conflicts.],
  [Bank system adds economy depth. Cut Through Everyone enhances combat feel without overhauling damage. Scholars and Training Field offer alternative skill progression. Shoulder Camera is UI-only. No overlap with Fourberie (rogue/schemes are separate from combat/economy). Disabling Deadly Combat, Deadly Horse Charges, and Friendly Fire keeps this within Wave 1 scope.],
)

#tip-box[Wave 1 contains 30 mods across 3 categories. Light Mechanic cap is 15 (15 used — at capacity). Content Addition cap is 10 (10 used — at capacity). Graphics is unlimited. No room for additional mods in capped categories unless existing mods are removed.]
