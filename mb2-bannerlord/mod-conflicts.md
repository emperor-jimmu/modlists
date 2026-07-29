# Known Mod Conflicts

Documents confirmed incompatibilities between mods in this list. Only lists verified conflicts, never speculative ones. Not included in PDF output.

Format: `[Mod A]` x `[Mod B]` — conflict description. Resolution (if any). Discovered: YYYY-MM-DD.

## Wave 0 conflicts

(None yet)

### Malfoy Collection — Reveal All Heroes vs All Heroes Are Visible In Battle
- These are **different features** despite similar names. All Heroes Are Visible In Battle (Wave 0) adds a battle overlay showing hero outlines when holding Alt. Malfoy's Reveal All Heroes unlocks encyclopedia entries at campaign start. Both can be used together. Discovered: 2026-07-23.

## Wave 1 conflicts

### Xorberax's Legacy — Internal Configuration
- Deadly Combat, Deadly Horse Charges, and Friendly Fire sub-mods are **disabled by recommendation**. These are heavy combat overhauls that belong in Wave 2. Disable them via MCM before starting a Wave 1 campaign. Discovered: 2026-07-23.

### Bandit Variety — Balance Concern
- Bandit Variety adds tier 6 bandit units. May be overpowered in early game. Use game difficulty settings to compensate if needed. Not a mod conflict — a balance observation. Discovered: 2026-07-23.

### Better Time — Better Core Dependency
- Better Time may require Better Core (ID 6367) from the Better mod series. If Better Time fails to load, install Better Core. Discovered: 2026-07-23.

### Warlord Pack — Internal Configuration / Cross-Wave
- Warlord Pack's **Nobility** feature adds noble ranks that overlap with the standalone Titles mod. Users should enable Nobility OR Titles, not both. If Banner Kings (Wave 2) is planned, disable Warlord Pack's Nobility — BK provides its own title hierarchy.
- Warlord Pack's **Manhunters** feature overlaps with Calradia Expanded Kingdoms (Wave 2) manhunters. Disable Warlord Pack's Manhunters via MCM if CEK will be used in Wave 2. Discovered: 2026-07-23.

### Dramalord — Pregnancy Control Continued Interaction
- Dramalord (relationship/affair mechanics) and Pregnancy Control Continued (seduction/pregnancy) cover adjacent but distinct systems. Dramalord handles marriage behavior and NPC reactions to romance. PCC handles seduction mechanics and pregnancy control. Both can coexist but configure carefully in MCM to avoid double-stacking relationship changes. Discovered: 2026-07-23.

## Wave 2 conflicts

### Banner Kings — Cross-mod Conflicts
- BK provides its own **education system** — conflicts with standalone Education mod (5157). Do not install Education alongside BK.
- BK provides its own **title hierarchy** — conflicts with standalone Titles mod (9794). Disable Titles in Wave 1 if BK will be used in Wave 2.
- BK provides its own **settlement management** — may conflict with Player Settlements (7298). Both can theoretically coexist but BK's system is more comprehensive. Test before committing to a campaign.
- BK requires a **fresh campaign start** — NOT save-game compatible. Discovered: 2026-07-23.

### Calradia Expanded Kingdoms — Dependencies and Conflicts
- **Not save-game compatible** — requires a fresh campaign.
- **Requires** Calradia Expanded (1389), Harmony (2006), and Open Source Armory (2829 — all three: Armory, Saddlery, Weaponry).
- **Incompatible** with any mod that adds, removes, or moves settlements or bandit hideouts.
- Sandbox mode strongly recommended — storymode quests may not function with new factions.
- Provides its own manhunters — disable Warlord Pack's Manhunters feature. Discovered: 2026-07-23.

### Calradia Expanded — Compatibility
- **Not save-game compatible** — requires a fresh campaign.
- Incompatible with any other map-modifying mod. Only CE + CEK should be used together for map changes.
- With 14 additional towns, late-game daily tick may stutter slightly on lower-end systems. Discovered: 2026-07-23.

### Banner Kings Integrations — Dependency Chain
- Requires ALL four parent mods to be installed and active: Banner Kings, Calradia Expanded Kingdoms, Warlord Pack. If any dependency is missing, this mod will fail to load. Must be loaded LAST in the load order — it patches the other mods. Discovered: 2026-07-23.

### Diplomacy vs AI Influence — Scope Overlap
- Diplomacy (832) handles mechanical diplomacy — alliances, truces, war exhaustion, civil wars.
- AI Influence (9711) handles narrative/dialogue diplomacy — AI-generated NPC conversations, memory, dynamic reactions.
- Different scopes and can coexist — Diplomacy is the rule system, AI Influence is the character layer on top. Both also coexist with Kingdom Politics Expanded (Wave 1) which handles internal kingdom voting. Test the full stack before starting. Discovered: 2026-07-23.

### AI Influence — Version Status
- Version 6.0.2 is marked BETA. Expect ongoing development and potential instability. Not recommended for long-term campaigns until stable. HotScenes integration (mod 10888) is explicitly excluded per project rules. Discovered: 2026-07-23.

## Cross-wave conflicts

### Xorberax's Legacy disabled sub-mods → Wave 2
- Deadly Combat, Deadly Horse Charges, and Friendly Fire are disabled in Wave 1. If a Wave 2 combat overhaul mod provides equivalent functionality, these sub-mods can be removed entirely from the Xorberax's Legacy config. Discovered: 2026-07-23.
