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
