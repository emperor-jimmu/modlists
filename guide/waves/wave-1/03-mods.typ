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
