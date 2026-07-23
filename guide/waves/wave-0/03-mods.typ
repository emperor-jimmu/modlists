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
