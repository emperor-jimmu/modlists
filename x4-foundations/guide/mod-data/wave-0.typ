// Wave 0: The Uncharted — UI/QoL only, no mechanics changes
#let wave-0-mods = (
  (
    name: "UI Extensions and HUD",
    url: "https://www.nexusmods.com/x4foundations/mods/552",
    category: "ui",
    description: "Kuertee's UI framework: adds new panels, hotkeys and helper systems that many other mods in this list build on. Installs the framework itself and does not change game mechanics. Keep \"Protected UI Mode\" enabled and match the mod version to your X4 build (v9.0).",
  ),
  (
    name: "SirNukes' Mod Support APIs",
    url: "https://www.nexusmods.com/x4foundations/mods/503",
    category: "utility",
    description: "Library mod providing scripting APIs (hotkeys, context menus, UI widgets) that other mods depend on. Does nothing on its own — install it first, then the mods that require it.",
    mechanics: "Pure API library; no gameplay changes. The optional Hotkey API component can use an external helper from the author's GitHub for global hotkeys, but the in-game features work without it.",
  ),
  (
    name: "Options Helper",
    url: "https://www.nexusmods.com/x4foundations/mods/1410",
    category: "utility",
    description: "Chem O'Dun's Mission Director library that lets mods expose in-game options menus through the Mod Support APIs. Required by Notification Filter.",
    dependencies: ("SirNukes' Mod Support APIs",),
  ),
  (
    name: "Custom Tabs",
    url: "https://www.nexusmods.com/x4foundations/mods/842",
    category: "ui",
    description: "Adds up to three extra, fully customisable tabs to the map so you can keep separate property, trade and fleet views as your empire grows.",
  ),
  (
    name: "Better Scan Colors",
    url: "https://www.nexusmods.com/x4foundations/mods/38",
    category: "ui",
    description: "Improves the colour shading shown on station modules during scan mode, so scanned and unscanned states are easier to read at a glance.",
  ),
  (
    name: "Notification Filter",
    url: "https://www.nexusmods.com/x4foundations/mods/1985",
    category: "ui",
    description: "Filters trivial messages out of the ticker and logbook (relation changes, small money transactions, storage warnings, construction pings) to cut interface clutter and ticker lag. Fully configurable.",
    dependencies: ("SirNukes' Mod Support APIs", "Options Helper"),
  ),
  (
    name: "Event Driven News",
    url: "https://www.nexusmods.com/x4foundations/mods/494",
    category: "ui",
    description: "Adds a news ticker driven by real events in your universe — wars, economy shifts, faction developments — keeping you informed and immersed.",
  ),
)
