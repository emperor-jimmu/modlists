#import "../../theme.typ": *

== Wave 0 — Foundations (Vanilla + UI/QoL)

Wave 0 is the beginner's wave: the game plays vanilla, with mods that only make it easier to *see*, *operate*, and *plan*. This wave's focus is *UI/UX and graphics* — cleaner information, a tidier HUD, and a sharper, better-graded picture. Nothing here touches combat balance.

=== Rules for This Wave

- *UI, QoL & visuals only.* Mods may change the interface, the camera, inventory ergonomics, information display, post-processing/color, or performance. They may not change combat balance, monster behavior, drops, or any gameplay value.
- Anything that alters gameplay stats or mechanics belongs to Wave 1+ and must clear the power-spike gate there.

=== Frameworks (install first)

#modcard(
  "REFramework",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/26",
  deps: "None — this is the base layer",
  impact: "Modding framework with a Lua scripting API. Required by nearly every script/UI mod in this list. Also bundles FOV control, FreeCam (photo mode), and fixes for ReShade/DLL crashes.",
  notes: "Install before anything else; place in the game root (dinput8.dll).",
)

#modcard(
  "Custom In-Game Mod Menu API",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/1292",
  deps: "REFramework",
  impact: "Adds a dedicated 'Mods' section to the in-game Options menu, so compatible mods expose their settings natively instead of only through the REFramework overlay.",
  notes: "Install after REFramework and before any mod that lists it as a dependency.",
)

=== UI & UX

#modcard(
  "Adjustable UI Scale",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/207",
  version: "3.2",
  deps: "REFramework (V1.1.1+); Custom In-Game Mod Menu API optional",
  impact: "Scales the game's oversized HUD elements (quest UI, radial menu, names, and more) down so the screen reads clean instead of cluttered. Display-only — no gameplay values change.",
  notes: "Installs to reframework/autorun/UI_Scaler.lua; per-element scale is tuned in-game.",
)

#modcard(
  "Better Matchmaking",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/1044",
  deps: "REFramework; Custom In-Game Mod Menu API optional",
  impact: "Removes the 60-second lobby-search timeout, disables region locking, and drops the language filter so online matchmaking searches globally.",
  notes: "Online QoL only — no combat or balance change.",
)

#modcard(
  "Adjustable Damage Number Size",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/1465",
  deps: "REFramework",
  impact: "Resizes and restyles floating damage numbers for better combat readability. Cosmetic display only.",
  notes: "Pairs well with Adjustable UI Scale for a cleaner HUD overall.",
)

#modcard(
  "Alphabetized Skill Lists",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/2080",
  version: "1.1",
  deps: "REFramework",
  impact: "Sorts the pick-a-skill lists (smithy and equipment menus) alphabetically, making set-building noticeably faster.",
)

#modcard(
  "Improved Skill Notifications",
  url: "https://www.nexusmods.com/monsterhunterrise/mods/2467",
  version: "0.1.0-beta1",
  deps: "REFramework; Custom In-Game Mod Menu API (highly recommended)",
  impact: "Adds on-screen activation/inactivation notifications for skills that normally give no feedback (Agitator, Peak Performance, Resentment, and others).",
  notes: "Beta build — expect rough edges.",
)

=== Graphics & Visuals

#modcard(
  "ReShade",
  url: "https://reshade.me/",
  deps: "None — standalone injector installed onto MonsterHunterRise.exe",
  impact: "Post-processing injector for color grading, sharpening, tonemapping, and ambient occlusion. Tones down the base game's bright, saturated palette for a more grounded look.",
  notes: "Run in DirectX 11 (-dx11) for best compatibility. Community-recommended preset .ini files (e.g. 'Embers', 'Nyx Realism') are published on Nexus — load one from the in-game ReShade menu (Home key).",
)

#note[
  Wave 0's QoL base is the one layer that stays relevant in every later wave. If a Wave 0 mod proves essential, the owner may keep it enabled across waves — note that on the card.
]
