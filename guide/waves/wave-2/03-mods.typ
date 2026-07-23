#import "../../../typst/styles.typ": *

= Mod List — Wave 2

Wave 2 introduces *Heavy overhaul* mods — mods that fundamentally change or replace core systems. This is the most transformative and highest-risk wave. Every previous category (UI/QoL, Graphics, Light mechanic, Content addition) is also present, inherited from Waves 0 and 1.

#danger-box[Wave 2 load order is the most fragile. A single misplaced mod can cause cascading conflicts. Verify with Auto-Sort, then manually adjust to match the load order section. When adding real mods, test the full load order before starting a campaign.]

// === Heavy Overhaul ===

// ---- Calradia Expanded ----
#mod-entry(
  "Calradia Expanded",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/1389",
  "Heavy Overhaul",
  [Harmony],
  [Adds 14 towns, 8 castles, and 77 villages to the Calradia map. Relocates many vanilla settlements to more logical positions (castles defending passes, villages with sensible resource placement). Alters world terrain in many areas. Foundation mod for Calradia Expanded Kingdoms — this must be installed first. Not save-game compatible.],
  [No configuration needed. New game required.],
  [World layer — must load before any faction or troop mods. Place below Harmony in load order but above all content mods.],
  [#danger-box[NOT save-game compatible. Requires a fresh campaign.] Incompatible with ANY other mod that adds, removes, or moves settlements or bandit hideouts. Works alongside Calradia Expanded Kingdoms (its intended companion mod). Sandbox mode recommended for best results.],
)

// ---- Calradia Expanded Kingdoms ----
#mod-entry(
  "Calradia Expanded Kingdoms",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2828",
  "Heavy Overhaul",
  [Calradia Expanded a2.0.0+, Harmony 2.2.2+, Open Source Armory 1.11+ (all three: Armory + Saddlery + Weaponry — installed as a single pack in Wave 1)],
  [Complete world and faction overhaul. Adds 8 new kingdoms (Apolssaly, Lyrion, Nordlings, Vagir, Cortanian Vlandia, Royalist Vlandia/Rhodoks, Paleicians, Khergit, Ariorum), each with unique cultures, troop trees, and lore. Completely reworks ALL vanilla troop trees with logical progressions and vast visual variety. Adds ruins to explore, docks for sea travel, manhunters, and a quest system. 14+ distinct cultures with doubled trait bonuses. Not save-game compatible.],
  [No MCM configuration. Console commands available for quest triggers. POC Module available separately for banner/color randomization. Enhanced Edition adds third-party armor integration.],
  [World/Faction layer — after Calradia Expanded, before economy and kingdom mods. Must load after Open Source Armory.],
  [#danger-box[NOT save-game compatible. Sandbox mode strongly recommended — storymode quests may not work with new factions.] Incompatible with any mod that adds, removes, or moves settlements. Provides its own manhunters — disable Warlord Pack's Manhunters feature if both are active. Enhanced Edition requires additional armor mods.],
)

// ---- Banner Kings ----
#mod-entry(
  "Banner Kings",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3826",
  "Heavy Overhaul",
  [ButterLib 2.4.1+, Harmony 2.2.2+, MCM v5.0.4+, UIExtenderEx 2.3.1+],
  [Comprehensive non-combat gameplay overhaul inspired by Crusader Kings. Adds population systems with demographics and migration, feudal title hierarchies, village construction projects, complete settlement management overhaul, education and reading systems, cultural and religious mechanics, and a reworked economy. Everything from peasant demographics to noble titles is simulated.],
  [Extensive MCM settings for all systems. Significant in-game configuration — settlement management, title assignments, and population policies all require player decisions.],
  [Economy/Kingdom layer — after world and faction mods, before diplomacy mods. Heavily dependent on its framework — ensure all dependencies meet minimum versions.],
  [#danger-box[Requires a new game start — NOT save-game compatible.] Conflicts with standalone Titles and Education mods (BK provides both systems internally). May conflict with Player Settlements (BK has its own settlement management). The Banner Kings Integrations patch (mod 5837) is required to make BK work with CEK and Warlord Pack.],
)

// ---- Diplomacy ----
#mod-entry(
  "Diplomacy",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/832",
  "Heavy Overhaul",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [The definitive Bannerlord diplomacy overhaul. Adds alliances, non-aggression pacts, truces, war exhaustion, messengers, claim factions, and civil wars. Kingdoms form meaningful diplomatic relationships instead of existing in perpetual total war. Vassals and rulers negotiate, scheme, and cooperate — or fracture — based on realistic political dynamics.],
  [Extensive MCM settings for every diplomatic mechanic — enable or disable individual systems, tune war exhaustion thresholds, set messenger speeds, and configure alliance rules.],
  [Kingdom layer — after economy mods, before battle mods. Diplomacy is a high-level system that depends on faction and economy definitions below it.],
  [Compatible with Kingdom Politics Expanded (different systems — KPE handles internal voting, Diplomacy handles external relations). May interact with AI Influence (both have diplomacy features — different scopes, Diplomacy is mechanical, AI Influence is narrative). Test together before starting a full campaign.],
)

// ---- AI Influence ----
#mod-entry(
  "AI Influence (AI Diplomacy)",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9711",
  "Heavy Overhaul",
  [Harmony, ButterLib, UIExtenderEx, MCM],
  [Transforms NPCs into living characters with memory. AI-generated dialogues remember your conversation history, know about world events, and react dynamically. Includes a death history system that creates unique life stories upon character death, an AI actions system for giving companions complex tasks through dialogue, and advanced settlement combat scenarios. Every conversation is unique and context-aware — NPCs know who you are, what you've done, and how they feel about it.],
  [MCM settings for AI dialogue frequency, memory depth, and system behavior. Requires an AI backend to be configured — see mod documentation for setup.],
  [Kingdom/Diplomacy layer — after mechanical diplomacy mods. Narrative/dialogue AI is the highest-level kingdom system — loads near last.],
  [#tip-box[Version 6.0.2 BETA — expect ongoing development.] May interact with Diplomacy and Kingdom Politics Expanded — AI Influence provides narrative depth alongside their mechanical systems. Different scopes — all three can coexist. HotScenes integration (mod 10888) is excluded per project rules.],
)

// ---- Banner Kings Integrations ----
#mod-entry(
  "Banner Kings Integrations",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5837",
  "Heavy Overhaul",
  [Banner Kings, Calradia Expanded Kingdoms, Warlord Pack],
  [Integration patch that makes Banner Kings compatible with Calradia Expanded Kingdoms, Warlord Pack, and standalone Education (if installed). Adds BK population, title, and economy integration for CEK's new kingdoms and cultures. Ships routes for CEK's new coastal cities. Enables BK NPC spawning in CEK's new cultures. Required if running Banner Kings alongside CEK and Warlord Pack.],
  [No configuration needed. Loads as a patch module after all its dependency mods.],
  [Integration layer — loads after ALL its dependency mods (BK, CEK, Warlord Pack). Must be absolute last in the load order.],
  [#danger-box[Only needed if ALL constituent mods are installed: Banner Kings + Calradia Expanded Kingdoms + Warlord Pack.] If any dependency is missing, this mod will fail to load. Verify all four mods are present and active before enabling this integration patch.],
)

// ---- AI Influence - History Manager ----
#mod-entry(
  "AI Influence — History Manager",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/10550",
  "Heavy Overhaul",
  [AI Influence (9711)],
  [Companion utility for AI Influence. Manages and persists AI-generated conversation histories, NPC memories, and world event records across game sessions. Without this, conversations are ephemeral — with it, NPCs develop persistent relationships that evolve over time. Required for a meaningful AI Influence experience with long-term relationship tracking.],
  [No configuration needed. Works automatically alongside AI Influence.],
  [Integration layer — after AI Influence, before any patches that reference AI character data.],
  [Requires AI Influence (9711) to be installed and active. Does nothing without its parent mod. Excluded if AI Influence is not in the modlist.],
)

// ---- Bannerlord Economy Overhaul ----
#mod-entry(
  "Bannerlord Economy Overhaul",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9558",
  "Heavy Overhaul",
  [Harmony, ButterLib, MCM, UIExtenderEx],
  [Comprehensive economy rework. Supply and demand function properly — goods flow between settlements based on trade routes, workshops produce based on input availability, and prices reflect genuine scarcity. Caravans make economic sense. Towns can become wealthy trade hubs or impoverished backwaters based on geography and security. Transforms Bannerlord's economy from a gamey overlay into a living system.],
  [MCM settings for price elasticity, workshop profitability, caravan efficiency, and trade route dynamics.],
  [Economy layer — early in Heavy Overhaul. Economic systems process before kingdom and diplomacy mods.],
  [#warning-box[May conflict with Banner Kings economy system.] Test carefully if using both. BK has its own economic overhaul. Complements Improved Garrisons — strong economy funds better garrison management.],
)

// ---- Improved Garrisons ----
#mod-entry(
  "Improved Garrisons",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/688",
  "Heavy Overhaul",
  [Harmony, ButterLib, MCM, UIExtenderEx],
  [Complete fief management overhaul — used by 41+ other mods. Auto-recruit from villages, recruit prisoners, create recruiter parties, auto-train/upgrade garrison troops with customizable templates, and deploy guard parties that patrol, defend, and follow you into war. Guard parties have full AI — retreat, heal, sell prisoners, resupply autonomously. Standalone UI accessible anywhere on the map. Per-settlement configuration.],
  [Extensive MCM and in-game UI — per-settlement settings, training templates sync across saves, recruitment thresholds, guard party behavior, culture restrictions, elite-only recruitment.],
  [Economy/Kingdom layer — after economy mods, before diplomacy. Garrison management depends on economy and feeds into kingdom warfare.],
  [Used as a dependency by 41+ mods. Save-game compatible. Guard parties complement Party AI Controls (garrison guards vs. companion party orders). Does not conflict with BK directly but may overlap fief management features — test if using both.],
)

// ---- Ancient Civilizations ----
#mod-entry(
  "Ancient Civilizations",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5859",
  "Heavy Overhaul",
  [Harmony, ButterLib, MCM, UIExtenderEx],
  [Adds ancient civilization factions, cultures, and troop trees to Calradia. New kingdoms with classical-era aesthetics — inspired by Rome, Greece, Carthage, and other ancient powers. New troop trees, lords, settlements, and cultural mechanics expand the world beyond medieval Calradia.],
  [MCM settings for faction behavior and feature toggles.],
  [World/Faction layer — after map mods, before economy and kingdom mods. Must load after CEK if both are used.],
  [#warning-box[May conflict with Calradia Expanded Kingdoms — both add new factions/cultures.] Test carefully if using both. Different time periods (medieval vs. classical) — consider choosing one faction overhaul for campaign stability.],
)
