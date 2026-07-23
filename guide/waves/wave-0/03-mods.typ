#import "../../../typst/styles.typ": *

= Mod List — Wave 0

Wave 0 uses only *UI and Quality of Life* mods. These enhance the interface without changing any game mechanics. All mods must be compatible with BL 1.4.x / WS 1.2.x.

#v(0.8em)

// ---- Banner Fix ----
#mod-entry(
  "Banner Fix",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/4600",
  "UI/QoL",
  [None — standalone],
  [Fixes unnatural banner display issues. Corrects banner rendering on shields, in troop formations, and in menus. Pure visual fix — no gameplay impact.],
  [No configuration needed. Plug and play.],
  [Top of Wave 0. No dependencies — loads independently. Place before other UI mods if present.],
  [Compatible with Raise your Banner (Wave 1). No known conflicts.],
)

// ---- All Heroes Are Visible In Battle ----
#mod-entry(
  "All Heroes Are Visible In Battle",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9587",
  "UI/QoL",
  [None — standalone],
  [Hold Left Alt in battle to see colored outlines of friendly and enemy lords and companions. Helps identify priority targets and locate your party leaders in large engagements. Purely a visual overlay — no game mechanics, stats, or combat rules are changed.],
  [Default keybind is Left Alt. Rebinding requires editing the mod's configuration file in its module folder.],
  [After Banner Fix. No dependencies — loads independently.],
  [No known conflicts. Works alongside any mod since it only adds a visual overlay.],
)

// ---- Aggregated Income ----
#mod-entry(
  "Aggregated Income",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3304",
  "UI/QoL",
  [Harmony],
  [Aggregates multiple income sources on settlement tooltips — denars, influence, militia, food stocks, loyalty, security, prosperity, and tax. Replaces vague "Expected Change" tooltips with detailed breakdowns for better settlement management.],
  [No configuration needed. Plug and play.],
  [After All Heroes Are Visible In Battle. No dependencies — loads independently.],
  [No known conflicts. Uses Harmony for compatibility.],
)

// ---- Alert on High Selling Price ----
#mod-entry(
  "Alert on High Selling Price",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2645",
  "UI/QoL",
  [Harmony, MCM],
  [Alerts the player when approaching a city carrying trade goods that sell at high prices. A red coin icon appears next to the settlement nameplate. Helps optimize trade routes without opening every town's trade menu.],
  [MCM settings for alert threshold and notification behavior.],
  [After Aggregated Income. Both are UI-only trade helpers.],
  [Compatible with Aggregated Income — different UI elements. No known conflicts.],
)

// ---- Banner Editor ----
#mod-entry(
  "Banner Editor",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/4944",
  "UI/QoL",
  [None — standalone],
  [In-game banner customization tool. Create and edit clan banners with a visual editor instead of relying on external tools or copy-paste codes. Full creative control over colors, shapes, and emblems.],
  [No configuration needed. Access via the clan menu.],
  [After Alert on High Selling Price. Standalone — loads independently.],
  [Compatible with Banner Fix (Wave 0) and Raise your Banner (Wave 1). Different functions — Banner Editor creates the design, other mods display it.],
)

// ---- Troop Sorting ----
#mod-entry(
  "Troop Sorting",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3596",
  "UI/QoL",
  [None — standalone],
  [Sortable party, inventory, and roster views. Sort troops by name, tier, type, level, culture, wounded status, and more. Saves sort preferences between sessions. Configurable via XML — define your own custom sort orders and defaults for different views. Makes managing large parties and garrisons dramatically easier.],
  [Configuration via XML file in Documents folder. Define custom sort orders and default sorts for different views.],
  [After Banner Editor. UI-only — loads independently.],
  [No known conflicts. Pure UI sorting — does not modify any game data. Explicitly updated for v1.4.7.],
)

// ---- Workshops Completed ----
#mod-entry(
  "Workshops Completed",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/5295",
  "UI/QoL",
  [Harmony, UIExtenderEx],
  [Workshop UI improvements. Shows detailed workshop information in the clan and settlement screens — production rates, input costs, projected profits, and workshop level summaries. Originally a workshop overhaul, but since Taleworlds revamped workshops in 1.2+ this is now a pure UI enhancement. Same author as Kingdom Politics Expanded.],
  [No configuration needed. Information displays automatically in workshop screens.],
  [After Troop Sorting. UI-only — loads independently within Wave 0.],
  [No known conflicts. UI layer only — displays existing game data without modifying mechanics. Compatible with Kingdom Politics Expanded (Wave 1, same author).],
)

// ---- BetterPartyTooltip ----
#mod-entry(
  "BetterPartyTooltip",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/7643",
  "UI/QoL",
  [None — standalone],
  [Enhanced party tooltips showing detailed breakdowns: troops without horses, extra horses, prisoner counts, food days remaining, and party speed factors. Adds "Manage Inventory" context menu on party icons and an auto-recruit prisoners feature. All display options individually configurable. Updated for v1.3.13.],
  [Configuration file for each tooltip display option. Toggle individual info lines on/off.],
  [After Workshops Completed. UI-only — loads independently.],
  [No known conflicts. Pure UI information display — no game mechanics changed.],
)

// ---- Better Save and Load ----
#mod-entry(
  "Better Save and Load",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3128",
  "UI/QoL",
  [None — standalone],
  [Improved save/load interface with better organization, clear timestamps, and easier manual save management. Makes navigating dozens of campaign saves less painful.],
  [No configuration needed. Automatically improves the save/load screen.],
  [After BetterPartyTooltip. UI-only — loads independently.],
  [No conflicts. Pure UI improvement over the vanilla save/load screen.],
)

// ---- Fast Inventory UI ----
#mod-entry(
  "Fast Inventory UI",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9582",
  "UI/QoL",
  [None — standalone],
  [Speeds up inventory screen interactions. Faster drag-and-drop, quicker loot transfers, smoother scrolling through large inventories. Particularly noticeable when managing post-battle loot with hundreds of items.],
  [No configuration needed. Performance improvement is automatic.],
  [After Better Save and Load. UI performance mod — loads independently.],
  [No conflicts. Pure UI performance — no game data modified.],
)

// ---- Crafting Piece Sorter ----
#mod-entry(
  "Crafting Piece Sorter",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/6961",
  "UI/QoL",
  [None — standalone],
  [Sorts smithing/crafting pieces in the smithy interface. When you have dozens of unlocked weapon parts, finding the right blade or guard becomes tedious — this mod organizes them logically.],
  [No configuration needed. Sorting is automatic.],
  [After Fast Inventory UI. UI-only — loads independently.],
  [No conflicts. Complements Better Smithing Continued (Wave 1) — CPS handles UI sorting while BSC handles smithing mechanics.],
)

// ---- Equipment UI Helper ----
#mod-entry(
  "Equipment UI Helper",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9968",
  "UI/QoL",
  [None — standalone],
  [Adds detailed information to equipment tooltips and the inventory UI. Compare items more easily with expanded stat displays. See armor values, weight comparisons, and equipment suitability at a glance.],
  [No configuration needed. Enhanced tooltips are automatic.],
  [After Crafting Piece Sorter. UI-only — loads independently.],
  [No conflicts. Pure information display — no game mechanics modified.],
)

// ---- Missing Hair Fix ----
#mod-entry(
  "Missing Hair Fix",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/6307",
  "UI/QoL",
  [None — standalone],
  [Fixes the bug where certain helmets and headgear cause characters to appear bald. Restores proper hair rendering under helmets and hoods. Simple but noticeable visual fix for a long-standing vanilla issue.],
  [No configuration needed. Fix is automatic.],
  [After Equipment UI Helper. Visual fix — loads independently.],
  [No conflicts. Pure visual bugfix. Compatible with all character appearance and helmet mods.],
)

// ---- Butter Icon Fix ----
#mod-entry(
  "Butter Icon Fix",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2245",
  "UI/QoL",
  [None — standalone],
  [Fixes butter and food icon display issues in inventory and trade screens. Small cosmetic UI fix that cleans up item icon rendering.],
  [No configuration needed. Fix is automatic.],
  [After Missing Hair Fix. UI fix — loads independently.],
  [No conflicts. Pure icon rendering fix.],
)

// ---- AI Defend Yourself ----
#mod-entry(
  "AI Defend Yourself",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/897",
  "UI/QoL",
  [None — standalone],
  [Companions and troops in your party actively defend themselves when attacked on the campaign map. Fixes the frustrating vanilla behavior where party members stand idle while being slaughtered by bandits or enemy lords. Pure behavior fix — no stat changes.],
  [No configuration needed. Active automatically.],
  [After Butter Icon Fix. Behavior fix — loads independently.],
  [No conflicts. Simple behavior correction — does not modify any game systems.],
)

// ---- Show Skill Limit ----
#mod-entry(
  "Show Skill Limit",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/9209",
  "UI/QoL",
  [None — standalone],
  [Shows the skill hard cap (learning limit) next to each skill in the character screen. No more guessing how far you can level a skill — the limit is displayed clearly based on your attributes and focus points. Makes character build planning intuitive.],
  [No configuration needed. Skill limits display automatically.],
  [After AI Defend Yourself. UI-only — loads independently.],
  [No conflicts. Pure UI display of existing game data.],
)

// ---- Noble Village Icons ----
#mod-entry(
  "Noble Village Icons",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/7957",
  "UI/QoL",
  [None — standalone],
  [Adds distinct icons to noble villages on the campaign map, making them visually distinguishable from regular villages. Noble villages produce noble troops — finding them quickly matters for recruitment. Updated for 1.3.x.],
  [No configuration needed. Icons added automatically.],
  [After Show Skill Limit. UI-only — loads independently.],
  [No conflicts. Pure visual icon addition to the campaign map.],
)

// ---- Custom Crosshair ----
#mod-entry(
  "Custom Crosshair",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/2274",
  "UI/QoL",
  [None — standalone],
  [Replace the default crosshair with a customizable one. Change color, size, style, and opacity. Particularly useful for archers who want a clearer aiming reference. Multiple preset styles available.],
  [No configuration needed — presets included. Custom styling via mod files.],
  [After Noble Village Icons. UI-only — loads independently.],
  [No conflicts. Pure UI element replacement. Does not affect damage or accuracy.],
)

// ---- Better HUD ----
#mod-entry(
  "Better HUD",
  "https://www.nexusmods.com/mountandblade2bannerlord/mods/3234",
  "UI/QoL",
  [None — standalone],
  [Improves the vanilla HUD with better text readouts on UI elements. Clearer battle notifications, cleaner health and ammo displays, more readable party status information. Features ported from the author's other mods by user request as a standalone package.],
  [No configuration needed. HUD improvements are automatic.],
  [After Custom Crosshair. UI-only — loads independently.],
  [No conflicts. Pure HUD text improvement. Complements BetterPartyTooltip — different UI layers.],
)
