// 40-addons.typ — G.A.M.M.A Protocol: community addons for GAMMA.
#import "theme.typ": *

= Community Addons

_Extending GAMMA beyond its ~400 integrated mods — which addons the community actually runs, and how to add them without breaking the pack._

== The golden rules

GAMMA is a tightly curated stack: every included mod is there because it is balanced and stable with the others. Adding mods is very doable — thousands of players do — but it must be done GAMMA's way.

#warn[
  - *Use the bundled Mod Organizer 2.* Never drop files into the Anomaly or GAMMA folders by hand — the pack's load order is how mods stay compatible.
  - *Check compatibility first.* Search the GAMMA Discord for the addon's name before installing; if a compatibility patch exists, it is usually linked there.
  - *Prefer DLTX-based addons.* DLTX addons patch data without overwriting files — they are dramatically safer inside GAMMA than mods that replace core files.
  - *Back up your MO2 profile* before big changes (the profile lives in the GAMMA folder; a simple copy of the folder is enough).
  - *Expect the launcher to reset manual changes* when you run *Install / Update GAMMA* — re-check your addons after updating.
  - *Fewer, well-chosen addons beat a full load order.* Every extra mod is a new conflict surface.
]

== How to install any addon

1. *Download* the addon archive (`.7z` or `.zip`) from its source.
2. Open *Mod Organizer 2* (desktop shortcut created by the GAMMA installer).
3. Drag the archive into MO2's *Downloads* tab, or click the *"Install a new mod from an archive"* button (the disc icon) and select the file.
4. Follow any install prompts; give the mod a clear name.
5. *Tick the checkbox* in the left pane to enable it, and place it in the load order where the addon's instructions (or the Discord) say — usually above the GAMMA group it modifies.
6. Launch the game *through MO2* (Run) and test in a quick session.
7. To revert, untick the mod — or restore your profile backup for bigger rollbacks.

#tip[
  Keep the addon's readme and the Discord thread open while testing. "It loads" is not the same as "it works" — test the feature the addon changes.
]

== Audio

#addon(
  name: "Dark Signal Weapon Sounds",
  tag: "AUDIO",
  what: "High-quality weapon foley and fire sounds that replace the default gun audio with punchier, more realistic recordings.",
  source: "ModDB — search \"Dark Signal\"; the GAMMA Discord compatibility patch is usually pinned in the addons channel.",
  install: "Standard MO2 install (Download → enable → test). Apply the GAMMA patch if one is provided, then launch through MO2.",
  risk: "Low with the patch; without it some weapons may fall back to missing or wrong sounds.",
)

#addon(
  name: "Dark Signal Amplified Footsteps",
  tag: "AUDIO",
  what: "Louder, more varied footstep audio by the same author — movement becomes more audible and immersive (for you and, remember, for enemies).",
  source: "ModDB — search \"Dark Signal\".",
  install: "Standard MO2 install; stacks with the weapon sounds mod.",
  risk: "Low; audio-only.",
)

#addon(
  name: "Audio Expansion",
  tag: "AUDIO",
  what: "Adds broader ambient sound variety to the Zone — weather, distant activity and environmental layers.",
  source: "ModDB (Anomaly 1.5.3 section); check Discord for the GAMMA-tested version.",
  install: "Standard MO2 install.",
  risk: "Low–moderate; verify no overlap with GAMMA's own ambient overhaul.",
)

#addon(
  name: "JSRS — Sound Mod",
  tag: "AUDIO · CAUTION",
  what: "The classic realistic sound overhaul, popular in other STALKER modpacks.",
  source: "Various community mirrors.",
  install: "Not recommended on current GAMMA versions.",
  risk: "High. GAMMA ships a heavily tuned soundscape (including Oleh's Miscellaneous Sound Improvements); JSRS overwrites audio files and is known to cause silent weapons and crashes on modern GAMMA builds. If you want different gun sounds, prefer Dark Signal or the pack's own alternatives.",
)

== Weapons & weapon visuals

#addon(
  name: "Kmack's Weapon Projects",
  tag: "WEAPONS",
  what: "Updated weapon skins and animations for many guns already in the pack — fresh looks without new weapons or balance changes.",
  source: "ModDB — search \"Kmack\"; GAMMA compatibility notes on the Discord.",
  install: "Standard MO2 install; enable and check each covered weapon in-game.",
  risk: "Low–moderate; watch for overlap with GAMMA's integrated model replacements.",
)

#addon(
  name: "BoomSticks and SharpSticks (BaS)",
  tag: "WEAPONS",
  what: "Premium weapon models and animations — a long-standing community staple.",
  source: "ModDB (Anomaly section).",
  install: "Check first whether the version you want is already integrated or supported by GAMMA; if adding it, use the compatibility patch from the Discord.",
  risk: "Moderate — duplicates or conflicts with integrated weapon assets are common without a patch.",
)

== Graphics & environment

#addon(
  name: "Rotten Life 3.0",
  tag: "VISUALS",
  what: "A texture overhaul pushing the Zone further into decay and overgrowth — dirtier buildings, rustier metal, more atmosphere.",
  source: "ModDB — search \"Rotten Life\".",
  install: "Standard MO2 install, above the texture groups it replaces.",
  risk: "Low; textures only. Larger VRAM usage on 4K textures.",
)

#addon(
  name: "C-con Grass & Trees",
  tag: "VISUALS",
  what: "Denser, better-looking vegetation — grass and tree overhauls that make the wilderness feel alive.",
  source: "ModDB — search \"C-con\".",
  install: "Standard MO2 install.",
  risk: "Low–moderate; dense grass costs frames — the +FPS/performance variants exist for a reason.",
)

#addon(
  name: "Glossy Puddles",
  tag: "VISUALS",
  what: "Realistic reflections on wet surfaces after rain — a small change with a big mood payoff.",
  source: "ModDB — search \"Glossy Puddles\".",
  install: "Standard MO2 install.",
  risk: "Low; minor performance cost.",
)

== ReShade presets

GAMMA's rendering base (Hippos Atmospherics + Screen Space Shaders) is already strong; ReShade presets add a final cinematic grade. Presets are the most popular "addon" category in the community.

=== Installing ReShade itself

1. Run the *ReShade installer* and choose the Anomaly executable (it lives in the Anomaly folder's `bin` directory).
2. Select the *DirectX 10/11* API when asked.
3. In-game, open the ReShade menu with the *Home* key and load a preset.

=== Installing a preset

1. Download a preset `.ini` from its source.
2. Drop it into the Anomaly game folder (next to the executable) — or wherever the preset's readme says.
3. In-game: *Home* → preset dropdown → select it.

#warn[
  Keep *"Delete Reshade"* unticked in the GAMMA launcher settings, or the launcher removes your ReShade installation on update.
]

#addon(
  name: "ZeN Summer / ZeN Winter presets",
  tag: "RESHADE",
  what: "Frequently updated, cinematic color grades for summer and winter zones — polished look without heavy performance cost; +FPS variants exist.",
  source: "GAMMA Discord addons channel / community guides.",
  install: "Drop the `.ini` into the Anomaly folder, load via Home menu.",
  risk: "Low; pure post-processing. Pick the +FPS variant on weaker rigs.",
)

#addon(
  name: "Emergent Zone",
  tag: "RESHADE",
  what: "A LUT-based color grade praised for its natural, grounded palette.",
  source: "GAMMA Discord / ModDB.",
  install: "Same as any preset.",
  risk: "Low.",
)

#info[
  The *GAMMA Reshade Database* — a community-maintained spreadsheet usually linked in the GAMMA Discord or community guides — is the best way to browse dozens of tested presets and pick one matching your taste and hardware.
]

== Finding more addons

- *GAMMA Discord* — the addons channels are the primary hub: community addons, patches, and compatibility threads. Search before you install.
- *ModDB — Anomaly addons section* — filter by Anomaly 1.5.3 compatibility; check the Discord for GAMMA-specific patches.
- *Community guides and YouTube* — useful for inspiration; always verify a mod against the Discord before trusting a video's load order.

#tip[
  The best "addon" on most GAMMA installs is not a mod at all: it is a tuned *MCM profile* and a *ReShade preset* you like. Get those right before stacking more files.
]
