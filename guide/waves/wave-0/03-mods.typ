#import "../../../typst/styles.typ": *

= Mod List — Wave 0

Wave 0 uses only *UI and Quality of Life* mods. These enhance the interface without changing any game mechanics. All mods must be compatible with BL 1.4.x / WS 1.2.x.

// ---- MOD PLACEHOLDER: UI/QoL ----
// Replace this entire block with a real mod entry.
// Delete the #block below and uncomment the template.

/*
=== [Mod Name]
#link("[URL]")[Nexus Mods]

#table(
  columns: (auto, 1fr),
  [*Category:*], [UI/QoL],
  [*Dependencies:*], [[List of dependencies]],
  [*Impact:*], [[What this mod changes — must be UI-only, no mechanics]],
  [*Configuration:*], [[In-game settings or config file options]],
  [*Load order:*], [[Position in the load order]],
  [*Compatibility:*], [[Interaction with other Wave 0 mods]],
)
*/

// Wave 0 currently uses placeholder mod entries.
// Real mods will be selected and filled in later, following the mod rules
// and compatibility with BL 1.4.x / WS 1.2.x.

#v(0.8em)

// ---- MOD PLACEHOLDER: UI — Better Tooltips ----
#mod-placeholder(
  "UI/QoL",
  ("Better tooltips showing exact stat values instead of vague descriptions",
   "Trait and perk details visible before committing to a choice",
   "Detailed weapon comparison when hovering over items in inventory"),
  "Must not change any game mechanics. UI display changes only.",
)

// ---- MOD PLACEHOLDER: UI — Inventory Management ----
#mod-placeholder(
  "UI/QoL",
  ("Sort and filter inventory by type, value, weight",
   "Bulk sell/buy options for trade goods",
   "Companion equipment comparison in a single screen"),
  "Must not add items, change item stats, or alter economy.",
)

// ---- MOD PLACEHOLDER: UI — Map Enhancements ----
#mod-placeholder(
  "UI/QoL",
  ("Show troop speed modifiers on the campaign map",
   "Bandit hideout and quest location markers visible without hovering",
   "Faction borders and war status visible on the main map"),
  "Must not reveal hidden information (e.g., enemy party locations through fog of war).",
)

// ---- MOD PLACEHOLDER: UI — Dialogue & Menus ----
#mod-placeholder(
  "UI/QoL",
  ("Skip or speed up repetitive dialogue sequences",
   "Quick-load save without navigating through menus",
   "Keyboard shortcuts for common town actions (arena, tavern, market)"),
  "Must not skip important story or quest dialogue without player input.",
)

// ---- MOD PLACEHOLDER: UI — Better Fonts & Text Scaling ----
#mod-placeholder(
  "UI/QoL",
  ("Improved font rendering for high-resolution displays",
   "Adjustable UI text size for different screen sizes and resolutions",
   "Better text contrast for readability in bright environments"),
  "Must work at common resolutions (1920x1080, 2560x1440). No font substitutions that break text layout.",
)

// ---- MOD PLACEHOLDER: UI — Troop & Party Management ----
#mod-placeholder(
  "UI/QoL",
  ("Party screen shows troop stats, upgrade paths, and equipment without navigating submenus",
   "Sort troops by type, tier, or wounded status",
   "Bulk upgrade troops with a single click"),
  "Must not change upgrade costs, troop stats, or recruitment mechanics.",
)

// ---- MOD PLACEHOLDER: UI — Battle Orders ----
#mod-placeholder(
  "UI/QoL",
  ("Order of battle screen before combat — assign troops to formations",
   "Customizable formation presets saved between battles",
   "Better charge and advance commands with visual feedback"),
  "Must not change troop AI behavior. UI layer only — formations use vanilla AI commands.",
)

// ---- MOD PLACEHOLDER: UI — Save Management ----
#mod-placeholder(
  "UI/QoL",
  ("Named save files instead of auto-generated timestamps",
   "More autosave slots with configurable intervals",
   "Save file preview showing party composition and location"),
  "Must not modify save file contents or enable save-scumming shortcuts.",
)
