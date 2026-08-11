// 40-addons.typ — G.A.M.M.A Protocol: community addons for GAMMA.
#import "theme.typ": *

= Community Addons

_Extending GAMMA beyond its ~400 integrated mods — a short, moderated list of addons with real download sources, and how to add them without breaking the pack._

== Moderation policy — what belongs in this list

This guide applies strict moderation to addons, the same way the pack itself is curated:

- *Cosmetic and quality-of-life only.* Audio, visuals and presets — nothing that changes balance, gear or economy.
- *No overpower.* Nothing that hands out free money, stats, weapons or god-mode effects.
- *No redundant.* If GAMMA already includes it (check MO2), it is not listed.
- *No conflicting.* Any addon known to clash with the pack is excluded outright — not "installed with caution".
- *No adult or graphic themes.* The Zone is grim enough on its own.
- *Every entry below has a verifiable download source* — a ModDB page or the official GAMMA Discord. Anything that only exists as a dead or unstable link is not listed.

== The golden rules

#warn[
  - *Use the bundled Mod Organizer 2.* Never drop files into the Anomaly or GAMMA folders by hand — the pack's load order is how mods stay compatible.
  - *Check compatibility first.* Search the GAMMA Discord for the addon's name before installing; if a compatibility patch exists, it is usually linked there.
  - *Prefer DLTX-based addons.* DLTX addons patch data without overwriting files — they are dramatically safer inside GAMMA than mods that replace core files.
  - *Back up your MO2 profile* before big changes (the profile lives in the GAMMA folder; a simple copy of the folder is enough).
  - *Expect the launcher to reset manual changes* when you run *Install / Update GAMMA* — re-check your addons after updating.
  - *Fewer, well-chosen addons beat a full load order.* Every extra mod is a new conflict surface.
]

== How to install any addon

1. *Download* the addon archive (`.7z` or `.zip`) from the source listed on its card.
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
  name: "Audio Expansion",
  tag: "AUDIO",
  what: "Expands the Zone's ambient and environmental soundscape — weather, distant activity and atmospheric layers that make the world feel alive.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[ModDB — Anomaly addons (search "Audio Expansion")] or the GAMMA Discord addons channel],
  install: "Standard MO2 install; often paired with RETUNE Ambience Sounds (same search). Verify no overlap with GAMMA's own ambient tuning.",
  risk: "Low–moderate; audio-only, but check the Discord for the version tested against current GAMMA.",
)

#addon(
  name: "RETUNE Ambience Sounds",
  tag: "AUDIO",
  what: "Refines the background environmental audio — more natural wind, weather and distance layers. Frequently paired with Audio Expansion.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons/retune-ambience-sounds")[ModDB — moddb.com/mods/stalker-anomaly/addons/retune-ambience-sounds]],
  install: "Standard MO2 install. Some users find wind volume strong — tune audio settings or the mod's config if so.",
  risk: "Low; audio-only. Check the Discord for the version tested against current GAMMA.",
)

#info[
  Weapon-sound addons are deliberately absent from this list. GAMMA ships a heavily tuned soundscape (including Oleh's Miscellaneous Sound Improvements), and the classic weapon-audio packs — JSRS and Dark Signal among them — are either discontinued or known to clash with it, producing silent weapons or crashes. Per the moderation policy they are excluded, not recommended.
]

== Weapons & weapon visuals

#addon(
  name: "Kmack's weapon projects (individual mods)",
  tag: "WEAPONS",
  what: "High-quality weapon models, re-skins and animations (e.g. CAR-15, Walther PPQ, G3 and MP5 reworks) by a well-known community modder.",
  source: [#link("https://discord.com/invite/stalker-gamma")[GAMMA Discord] — the \#mods-postings channel, where the author posts current files],
  install: "Standard MO2 install per weapon. Before adding one, search MO2 and the Discord: much of Kmack's work is already integrated into GAMMA — skip anything already present.",
  risk: "Low when the weapon is not already in the pack; redundant otherwise.",
)

#info[
  *BoomSticks and SharpSticks (BaS)* — the classic premium weapon pack — is not listed: GAMMA already integrates or supports it, so installing it separately is redundant and risks duplicating weapon assets. Check MO2 before adding any weapon mod.
]

== UI & quality of life

#addon(
  name: "DynaHUD",
  tag: "UI",
  what: "A HUD manager that shows elements (health, stamina, radiation) only when they matter — cleaner screen, more immersion.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[ModDB — Anomaly addons (search "DynaHUD")]],
  install: "Standard MO2 install. GAMMA has community compatibility patches for DynaHUD — use the one linked in the Discord rather than the bare version.",
  risk: "Moderate without the patch; low with it. GAMMA ships its own HUD tweaks, so verify the patch exists for your version first.",
)

#addon(
  name: "Scopes as Binoculars",
  tag: "UI / QoL",
  what: "Lets you use an equipped weapon scope as binoculars — saves inventory space and makes scouting feel natural.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[ModDB — Anomaly addons (search "Scopes as Binoculars")]],
  install: "Standard MO2 install.",
  risk: "Low; behaviour-only, no balance changes.",
)

#info[
  *Quick Action Wheel* is not listed: it is already included in GAMMA by default (right-click an item in your inventory to add it to the wheel; manage it in MCM). Downloading it again would be redundant.
]

== Graphics & environment

#addon(
  name: "CCon Grass n Trees",
  tag: "VISUALS",
  what: "Denser, more realistic grass and tree models; praised for keeping vegetation low enough that loot and mutants stay visible.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[ModDB — Anomaly addons (search "CCon Grass n Trees")]],
  install: "Standard MO2 install; pick the season variant you prefer. Check the Discord for a GAMMA-tested version or patch.",
  risk: "Low–moderate; the +FPS/performance variants exist for weaker rigs.",
)

#addon(
  name: "Glossy Puddles",
  tag: "VISUALS",
  what: "Adds screen-space reflections to wet surfaces — puddles and ground genuinely glisten after rain.",
  source: [#link("https://discord.com/invite/stalker-gamma")[GAMMA Discord] — addons channel; the most reliable source for the current version],
  install: "Standard MO2 install; works on top of GAMMA's Screen Space Shaders.",
  risk: "Low; expect a small FPS dip (roughly 5–10) during heavy rain on mid-range GPUs.",
)

#addon(
  name: "Nicer Flashlights and Headlamps",
  tag: "VISUALS",
  what: "Better flashlight and headlamp visuals — realistic beam shape and intensity for night play.",
  source: [#link("https://www.moddb.com/mods/stalker-anomaly/addons")[ModDB — Anomaly addons (search "Nicer Flashlights and Headlamps")]],
  install: "Standard MO2 install.",
  risk: "Low; cosmetic lighting only.",
)

#info[
  Full texture overhauls such as *Rotten Life 3.0* are excluded by policy: the author frequently pulls the ModDB pages (no stable download source) and comprehensive texture packs overlap and conflict with GAMMA's own texture work. The visual addons above are additive rather than replacement-heavy for the same reason.
]

== Performance

Before installing anything, tune what is already there — the biggest frame-rate wins in GAMMA are settings, not mods:

- Lower the *shadow map resolution* (e.g. 1536) — one of the most effective FPS gains with minimal visual impact.
- Use *SSDO on medium* instead of HBAO/HDAO.
- Disable *grass shadows* — a significant performance killer.
- Disable *water reflections* if you need more headroom.
- Pick the *+FPS variants* of any ReShade preset, and use the launcher's Reshade toggle to test with it off.
- Search "performance textures" on the Anomaly ModDB addons page for *1k / VRAM-light texture packs* if you are GPU-limited.

#warn[
  Engine-level patches — *AO Engine*, *ALAO* or custom "modded EXEs" — are excluded by policy: they replace the game executables, and GAMMA already ships its own engine optimizations. Overwriting them conflicts with the pack's build and can be reverted by the launcher's integrity check. If you want more performance, tune the settings above first.
]

GAMMA's rendering base (Hippos Atmospherics + Screen Space Shaders) is already strong; ReShade presets add a final cinematic grade without touching game files.

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
  what: "Frequently updated cinematic color grades for summer and winter zones — polished look without heavy performance cost; +FPS variants exist.",
  source: [#link("https://discord.com/invite/stalker-gamma")[GAMMA Discord] — addons channel / community guides],
  install: "Drop the `.ini` into the Anomaly folder, load via the Home menu.",
  risk: "Low; pure post-processing. Pick the +FPS variant on weaker rigs.",
)

#info[
  The *GAMMA Reshade Database* — a community-maintained spreadsheet usually linked in the GAMMA Discord — is the best way to browse dozens of tested presets and pick one matching your taste and hardware. *Emergent Zone* is not listed separately: it is already available through GAMMA's own ecosystem, so downloading it again would be redundant.
]

== Finding more addons

- *GAMMA Discord* — the addons channels are the primary hub: community addons, patches, and compatibility threads. Search before you install.
- *ModDB — Anomaly addons section* (#link("https://www.moddb.com/mods/stalker-anomaly/addons")[moddb.com/mods/stalker-anomaly/addons]) — filter by Anomaly 1.5.3 compatibility; check the Discord for GAMMA-specific patches.
- *Community guides and YouTube* — useful for inspiration; always verify a mod against the Discord before trusting a video's load order.

#tip[
  The best "addon" on most GAMMA installs is not a mod at all: it is a tuned *MCM profile* and a *ReShade preset* you like. Get those right before stacking more files.
]
