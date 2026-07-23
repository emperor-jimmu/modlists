// 12-launcher.typ -- Launcher Mods

#import "lib.typ": mod-entry, callout

#pagebreak()

= Mods for the Launcher

#mod-entry(
  name: "Myriad Pro Begone",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1070",
  game: "Launcher",
  version: "v1.4",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Replaces the Myriad Pro font used throughout all three games' user interfaces with Tigensu, the secondary iconic Mass Effect font from the original ME1. Fixes character differentiation issues (L/I distinction), improves text alignment, adds drop shadows to LE2 dialogue wheel text, repositions HUD elements for design parity across the trilogy, and overhauls the dialogue wheel. Uses M3's merge functionality to apply changes to core startup files.],
  notes: [Single download covers LE1, LE2, LE3, and Launcher — ME3Tweaks Mod Manager handles per-game installation. Install AFTER LE1 Community Patch (its HUD fixes will overwrite this mod otherwise). Compatible with EGM's expanded Squad Select UI (v1.4+). Native support for iOS Datapad Messages Integration (v1.3+). Two dialogue wheel color options: LE1 wheel changed to aqua to match its UI aesthetic (default), or LE3 wheel changed to orange to match LE1/2. Highly recommended to set Subtitles size to Small in the LE Launcher.],
)
