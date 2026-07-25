= UI & Quality of Life Mods

This section catalogs all UI, HUD, and quality-of-life mods. These are the foundation of Wave 0 and remain active through all later waves.

== Wave 0 (Core)

These mods are part of the Wave 0 installation and should be installed before any other mods.

=== Spotter & Audio

- #link("https://www.racedepartment.com/downloads/sidekick.21309/")[Sidekick] — Audible spotter that calls out: car proximity (left/right), gap distances, yellow/blue/checkered flags, pit lane entry/exit reminders.
  *Dependencies: Content Manager*
  *Impact: Audio. No visual overlay. No gameplay change. Reduces cognitive load by providing critical race information verbally.*
  *Configuration: Volume, language, and verbosity settings available in-app.*

- #link("https://www.racedepartment.com/downloads/crew-chief.20868/")[Crew Chief] — External application providing: spotter calls, pit strategy advice, fuel calculations, tyre temperature readings, weather reports.
  *Dependencies: Standalone app (Windows). Runs alongside Assetto Corsa.*
  *Impact: External tool. Communicates via AC shared memory. No in-game modification.*
  *Setup: Install, launch before AC, select AC as the game. Voice recognition supports common commands.*

=== Visual Overlays

- #link("https://www.racedepartment.com/downloads/car-radar.24606/")[Car Radar] — 360° radar display positioned in the corner of the screen. Shows all nearby cars with distance and relative speed indicators.
  *Dependencies: Content Manager*
  *Impact: Visual overlay. No gameplay change. Essential for close-quarters racing awareness.*
  *Configuration: Radar range, size, opacity, and position.*

- #link("https://www.racedepartment.com/downloads/hellicorsa.25947/")[Helicorsa] — 3D arrow indicator drawn in-world above nearby cars. Arrow color and size indicate proximity. Green = safe distance, Yellow = close, Red = overlapping.
  *Dependencies: Content Manager*
  *Impact: Visual overlay. No gameplay change.*
  *Configuration: Trigger distance thresholds, arrow size, and enabled modes.*

=== Convenience

- #link("https://www.racedepartment.com/downloads/content-manager-shortcuts.40447/")[CM Shortcuts] — Custom quick-launch shortcuts for Content Manager. Create desktop shortcuts for specific car/track combinations, server entries, or practice sessions.
  *Dependencies: Content Manager*
  *Impact: Workflow convenience only.*

== Wave 1 Additions

- #link("https://www.racedepartment.com/downloads/ricmotech-minimal-ui.25647/")[RST Minimal UI] — As listed in Mechanics. Data-rich HUD overlay.
  *See 07-modlist-mechanics for full details.*

- #link("https://www.racedepartment.com/downloads/shift-light-3d.22867/")[3D Shift Light] — Visual gear indicator and shift light that displays optimal shift points.
  *Dependencies: Content Manager*
  *Impact: Visual overlay. No gameplay change.*

== UI Mod Conflicts & Rules

- Do not enable two HUD-replacement overlays simultaneously
- Sidekick and Crew Chief can run together safely (Crew Chief defers to Sidekick for spotter calls when configured)
- Car Radar and Helicorsa complement each other — running both is recommended
- All Wave 0 UI mods are compatible with all later wave mods

#pagebreak()
