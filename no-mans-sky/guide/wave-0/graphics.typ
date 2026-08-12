#import "../helpers.typ": *

==== Wave 0: Graphics

No Man's Sky is a game about looking at beautiful places, so graphics matter twice: once for beauty, once for readability. Wave 0 graphics mods may change *how the game looks* — never what it does.

===== Visual Settings

Before any graphics mod, tune the vanilla settings: resolution and framerate target first, then the heavy hitters (shadow quality, terrain tessellation, post-processing). If your machine offers upscaling (DLSS/FSR/XeSS where the game exposes it), enabling it is usually a bigger win than any mod. Turn *motion blur* off if it bothers you; keep *FOV* somewhere you can scan comfortably.

#callout("Tip:", [
  Set the game up for a stable framerate *before* adding graphics mods. A mod layered on a stuttery base just moves the problem around — and the wave's rule means a graphics mod is only ever allowed to change appearance, not to fix a performance issue by removing game content.
])

===== HUD & Interface

The HUD is your cockpit: health, hazard protection, life support, waypoints, and the quick menu. Readability mods (larger text, clearer icons, less clutter) are the classic Wave 0 graphics additions — they make the game easier to *see*, which is exactly this wave's purpose.

#mod-entry(
  "Hide or Fade Notifications",
  url: "https://www.nexusmods.com/nomanssky/mods/914",
  deps: "None",
  impact: "Hides the notification panel entirely, or fades its text into the background (your choice of two files): guidance hints, extreme-weather warnings, mission remarks, and frigate captain chatter stop cluttering the view. Gameplay is untouched — you just stop being nudged.",
  notes: "by lMonk, v1.77, updated 2026-04-08 (game 6.30). Install exactly one of the two included folders; modifies the HUD notification panel file, so do not stack with another mod editing it.",
)

===== Visual Polish

Color grading, sky and lighting tweaks, texture packs — appearance-only changes. The line to hold: if a mod changes a game value to achieve its look, it is no longer graphics-only and must wait for a later wave.

#mod-entry(
  "HD Space Planet Clouds",
  url: "https://www.nexusmods.com/nomanssky/mods/1083",
  deps: "None",
  impact: "Replaces the long-distance planet clouds you see from space with a high-resolution 8K texture, removing tiling seams, holes, and speckle artifacts. Only the space view changes — ground-level volumetric clouds are untouched.",
  notes: "by Lo2k, v2.2, updated 2026-02-12 (game 6.21). Optional companion: Rotating Atmosphere (mod 1662) — see conflicts-mods.md before pairing.",
)

#mod-entry(
  "Exosolar's and Babs' Expanse",
  url: "https://www.nexusmods.com/nomanssky/mods/1200",
  deps: "None",
  impact: "Overhauls space background and star/nebula colouring with 768 combinations so solar systems stop looking alike; a Black Edition strips nebulae for a stark void. Appearance only — it never touches what space does.",
  notes: "by Exosolar and Babscoole, v6.42, updated 2026-05-29. Install one palette set; the vanilla palette is included if you want to sample first.",
)

#mod-entry(
  "Natural Nights",
  url: "https://www.nexusmods.com/nomanssky/mods/1633",
  deps: "None",
  impact: "Makes nights realistically dark: no overbright blue tint, no flashy night-time water foam, and your torch becomes useful again. Light and colour only — nothing about the day/night cycle's gameplay changes.",
  notes: "by Degraaaff, maintained by Lo2k, v3.0, updated 2025-08-30 (game 6.01). Incompatible with any other mod editing the night-sky colour file; pairs naturally with Better Torch Light below.",
)

#mod-entry(
  "Better Torch Light",
  url: "https://www.nexusmods.com/nomanssky/mods/1611",
  deps: "None",
  impact: "Changes the torch from a flat wall of light into a proper light cone for better first-person immersion — especially welcome with Natural Nights making the dark actually dark.",
  notes: "by Lo2k, v5.3, updated 2025-06-02. Edits the gameplay-globals file: cannot run alongside another mod touching it unless merged via the included AMUMSS Lua script.",
)

#mod-entry(
  "Fine LOD",
  url: "https://www.nexusmods.com/nomanssky/mods/1316",
  deps: "None",
  impact: "Loads high-detail models and textures from farther away and reduces the spawn delay of rocks and flora around you, cutting pop-in. Appearance and smoothness only; the page notes a small framerate cost.",
  notes: "by Prof Horatio Hafnaugels, v5.58, updated 2025-03-10; the page states it targets Worlds II and beyond but has not been touched since — check the compatibility checker (mod 880) after any game update. Use the Classic file with ultra planet quality for the full 3x effect, or Lite for the gentler 2x. Conflicts with mods editing the graphics-globals or environment-globals files.",
)
