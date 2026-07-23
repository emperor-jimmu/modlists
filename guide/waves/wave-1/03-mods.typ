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

#tip-box[Wave 1 contains 17 mods across 3 categories. Light Mechanic cap is 15 (8 used). Content Addition cap is 10 (6 used). Room remains for future additions if gaps are identified during playtesting.]
