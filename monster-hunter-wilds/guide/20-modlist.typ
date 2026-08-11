// 20-modlist.typ — Forlorn Oath: the modlist.
#import "theme.typ": *

= The Modlist

_Eighteen verified mods (seventeen required, one optional) for game version 1.042.00.01. Every entry was checked against its live Nexus Mods page (author, mod id, description, last-update date) at the time of writing. None of them make the hunt easier or hand you power — they remove busywork, reveal information, sharpen the image, and let you read the monsters better._

== The Oath's rules

This list exists to deepen and modernize the experience. Every entry must earn its place against four pillars:

- _Quality of life_ — remove repetition and menu busywork, never remove challenge.
- _Interface & information_ — reveal what the vanilla UI hides, so decisions become informed instead of guessed.
- _Visuals & clarity_ — sharper, cleaner, better-graded image.
- _Details_ — the small touches that make the world and the hunt legible.

*Hard exclusions:* anything that changes damage, monster stats, drops, item economy, or skill numbers — those are cheats or difficulty toggles, not depth. Anything labeled "cheat" or "trainer" by its author. Anything that extends buffs, auto-plays combat, or removes the need to prepare.

#info[
  *A note on "more AI":* Monster Hunter Wilds runs on the RE Engine, and the community has _no stable mod that rewrites monster or Palico AI_ — building one is technically very hard, and none has shipped. The "more AI" pillar is served honestly here in two ways: the game's own *Support Hunter* system (NPC companions you can summon — Chapter 3 explains how to use them well), and information mods that make the monsters' behavior readable (weakness icons, damage analysis, hitzone colors), so you fight _with_ the AI's logic instead of against a wall of guesswork. If a real AI overhaul ever ships, it will be added here.
]

== Frameworks & tools (install first)

The foundation every other entry stands on. These are dependencies — install them before anything else (Chapter 1 walks through the order).

#mod-entry(
  name: "REFramework",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/93",
  author: "praydog",
  pillar: "Foundation — the loader and scripting API",
  what: "The modding framework for RE Engine games: a Lua scripting API, fixes for anti-tamper frame-time spikes, FOV/ultrawide options, freecam, timescale, and the in-game menu (Insert) where every script mod exposes its settings. Install from the nightly releases on GitHub for the newest game patches.",
  why: "Almost every mod in this list is a REFramework script; the framework itself also removes the game's micro-stutters, which is the single biggest 'modernize the feel' win available.",
  compat: "Nexus copy lags — always use the GitHub nightly. Uninstall = delete dinput8.dll from the game folder. Updated continuously; re-install after every title update.",
)

#mod-entry(
  name: "CatLib",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/65",
  author: "lingsamuel",
  pillar: "Foundation — shared utility library",
  what: "A collection of shared utility scripts that the author's mods depend on. It does nothing on its own; it just needs to be present (version 1.13+, updated February 2026).",
  why: "The dependency that unlocks the whole QoL and overlay family below — one install, many mods.",
  compat: "Requires REFramework. Install once; do not install multiple copies. Drop the `_CatLib` folder into `reframework/autorun/`.",
)

#mod-entry(
  name: "REFramework Direct2D",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/4033",
  author: "lingsamuel (fork of cursey's reframework-d2d)",
  pillar: "Foundation — overlay renderer",
  what: "Lets REFramework scripts draw 2D UI (health bars, text) on screen. This Wilds build adds HDR support so the overlay renders correctly on HDR displays; the classic build lives on the Rise page (mod 134, version 1.3.0+).",
  why: "Required by MHWilds Overlay. Pick the HDR build if you play in HDR, the classic otherwise — never both.",
  compat: "`reframework-d2d.dll` → `reframework/plugins/`, `reframework-d2d.lua` → `reframework/autorun/`. Requires REFramework.",
)

== Quality of life (8)

The busywork removers. Nothing here changes a single damage number — it removes the *menus*, the *walks*, and the *waiting* between hunts so your time goes into hunting.

#mod-entry(
  name: "Auto Restock",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/66",
  author: "lingsamuel",
  pillar: "QoL — preparation automation",
  what: "Automatically restocks your item pouch from the item box when you accept a quest, using a loadout chosen per weapon type or per equipment set. Configure rules in Script Generated UI > Auto Restock.",
  why: "The single most-played prep action in the game becomes a rule you set once. Preparation still matters — you still pick the loadout — but re-clicking it fifty times does not.",
  compat: "Requires CatLib + REFramework. Version 1.3 (December 2025).",
)

#mod-entry(
  name: "Auto Meal",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/64",
  author: "lingsamuel",
  pillar: "QoL — preparation automation",
  what: "Automatically cooks and eats the meal set you configured for your current weapon or equipment loadout before a hunt — and lets you eat without consuming ingredients if you so choose.",
  why: "Meal buffs are a real decision (which ingredients, which skills); remembering to apply them every hunt is not. The decision stays, the forgetting goes.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Auto Fix Camps",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/70",
  author: "lingsamuel",
  pillar: "QoL — camp upkeep",
  what: "Automatically repairs broken pop-up camps when you open the map.",
  why: "Camp upkeep is housekeeping with no decision in it. Auto Fix Camps keeps your network of camps — and their fast-travel points — alive without a repair trip.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Auto Sharpen Weapons",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/79",
  author: "lingsamuel",
  pillar: "QoL — post-hunt upkeep",
  what: "Automatically sharpens your weapon after a quest ends or when you leave combat.",
  why: "Sharpening mid-fight is a core tactical decision (do you risk the whetstone?); sharpening at camp is a chore. The mod removes only the chore.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Auto Hide Mantles",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/78",
  author: "lingsamuel",
  pillar: "QoL — visual clutter",
  what: "Hides the visual appearance of mantles while their effects stay fully active.",
  why: "Mantles are some of the most visually obnoxious gear in the game; you wear them for the effect, not the look. Pure presentation, zero gameplay change.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Better Camps",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/155",
  author: "lingsamuel",
  pillar: "QoL — camp capacity",
  what: "Increases the maximum number of pop-up camps you can maintain, and repairs broken camps automatically after 20 seconds.",
  why: "More camps means more fast-travel options and more map coverage — a logistics upgrade, not a combat one. You still have to place and defend them.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Skip Intro Logos",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/72",
  author: "lingsamuel",
  pillar: "QoL — launch flow",
  what: "Skips the Capcom and other publisher logos on startup so the game reaches the title screen faster.",
  why: "The least interesting thirty seconds of every session. Strictly convenience.",
  compat: "Requires CatLib + REFramework. See the Nexus page for the current version.",
)

#mod-entry(
  name: "Disable Near Fade and Camera Zoom In",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/984",
  author: "lingsamuel",
  pillar: "QoL / camera clarity",
  what: "Stops monsters, terrain, and NPCs from fading out (turning transparent) when the camera gets close, and disables the camera's automatic zoom-in during combat.",
  why: "Large monsters up close vanish into transparency exactly when you need to read their telegraphs; the combat zoom further disorients. Both are camera behavior, not game balance — removing them makes fights readable.",
  compat: "Requires CatLib + REFramework. Version 1.2.1 (April 2025). Configure via Script Generated UI > Disable Near Fade.",
)

== Interface & information (3)

These turn guessing into reading. None change a single number — they surface numbers the game already computes.

#mod-entry(
  name: "Monster Weakness Icon Indicator",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/367",
  author: "celluloid",
  pillar: "UI — monster knowledge",
  what: "Shows each monster's elemental weaknesses as icons directly on the map and in the field guide, so you can see at a glance what to bring instead of opening the guide mid-expedition.",
  why: "Element choice is a real preparation decision — the mod just makes the information you already own visible where you need it. Optimized for Fluffy Mod Manager usage.",
  compat: "Requires REFramework. Version mirrors the game patch (1.041.02.00, February 2026). Tagged 'fair and balanced' by the author.",
)

#mod-entry(
  name: "MHWilds Overlay",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/81",
  author: "lingsamuel",
  pillar: "UI — hunt telemetry",
  what: "An in-game overlay showing boss HP, per-hunter DPS, a stats table (damage, crit rate, hitzone exploitation, status buildup), and an experimental buff/damage reporter.",
  why: "The 'modernize' flagship: the hunt becomes measurable. You can see whether your hits actually land on good hitzones, which buffs carry your damage, and whether you are actually contributing — information that turns vague hunts into learning loops.",
  compat: "Requires CatLib + REFramework + a Direct2D build. Version 1.14 (February 2026). Designed for and tested in single-player hunts — configure it via Script Generated UI > MHWilds Overlay.",
)

#mod-entry(
  name: "Enhanced Damage Numbers",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/262",
  author: "lingsamuel",
  pillar: "UI — hitzone feedback",
  what: "Colors your damage numbers by the real hitzone value — e.g. showing when Weakness Exploit or Mind's Eye are actually triggering — and can split physical and elemental damage into separate numbers (off by default).",
  why: "The game's damage numbers hide *why* you hit hard or soft. This makes the hitzone system legible: you learn which parts to aim at by watching the colors, which is exactly the kind of depth this list exists to add.",
  compat: "Requires CatLib 1.6+ + REFramework. Version 1.6 (December 2025). Tested by the author in single player.",
)

== Visuals & clarity (4)

The image work. Wilds' default look is heavy on fog, lens distortion, and washed-out grading — these entries clean it up without touching gameplay.

#mod-entry(
  name: "Disable Post Processing Effects",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/221",
  author: "TonWonton",
  pillar: "Visuals — clarity & performance headroom",
  what: "A REFramework script to toggle or tune the post-processing stack: TAA, color correction, lens distortion, local exposure, volumetric fog, film grain, sharpening, plus custom contrast and brightness for game and UI. Settings save and reload automatically.",
  why: "The single biggest 'sharper picture' win for Wilds: it removes the blur and the washed-out grade while leaving you full control. Its defaults (lens distortion off, blurred luminance off) already clean up the image.",
  compat: "Requires REFramework. Version 1.3.3 (July 2025). Known quirk: with frame gen on, local exposure ON + blurred luminance OFF can flicker in menus — flip one of the two. Covers everything the standalone lens-distortion mod does, so that mod is not needed.",
)

#mod-entry(
  name: "Tweak In-Game Volumetric Fog(s)",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/455",
  author: "TheFuzzy",
  pillar: "Visuals — atmosphere tuning",
  what: "Lets you tune the volumetric fog's resolution, ambient light, fog culling distance, and near-fade distance — reducing the fog's obscuring effect *without* switching it off entirely.",
  why: "Wilds' fog is beautiful but heavy-handed: it hides monsters that are 40 meters away. This keeps the atmosphere while returning visibility — the 'details' pillar in one slider set.",
  compat: "Requires REFramework (build 01090+). Version 1.0.0 (March 2025). Works alongside Disable Post Processing Effects; recommended companion by both authors.",
)

#mod-entry(
  name: "Persistent Buff Glow Removal",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/141",
  author: "Peasly Wellbott",
  pillar: "Visuals — effect clutter",
  what: "Configurably suppresses the pulsing glow effects on your hunter from item buffs, skills, weapons, and mantles — plus optional hiding of blights, frenzy effects, and elemental hit flashes.",
  why: "Buff glows are the visual noise of every hunt. With it off by default for the worst offenders and fully configurable, you see the monster, not your own aura.",
  compat: "Requires REFramework. Version 2.0.3 (July 2025). Options live in Script Generated UI; per-effect toggles, default False for most.",
)

#mod-entry(
  name: "RenoDX — HDR and SDR Fix (optional)",
  url: "https://www.nexusmods.com/monsterhunterwilds/mods/202",
  author: "Ritsu and Kickfister",
  pillar: "Visuals — grading pipeline",
  what: "Rewrites the game's DX12 grading pipeline to fix Wilds' raised blacks and narrow dynamic range in both HDR and SDR, adding real-time controls for tonemapping, paper white, UI brightness, exposure, contrast, and color grading.",
  why: "The deep-end visual fix: the game's own color pipeline is the weakest link in its image quality, and this is the only mod that replaces it properly. Optional because it needs ReShade's add-on system and is for players who care about the image enough to tune it.",
  compat: "Requires REFramework + ReShade with add-on support (reshade.me, DirectX 12). Version 4.4.2 (August 2026) — actively maintained. AV may flag the DLL (known false positive; open source). Do not stack with other engine-level shader mods — see the page's troubleshooting.",
)

== Why these mods — and what's deliberately not here

- _No difficulty mods._ Nothing that multiplies monster HP or damage. Challenge in Wilds comes from the hunt itself, not from a slider; the list deepens the game rather than inflating it.
- _No cheats._ No infinite consumables, free crafting, editors, or item injection — those are explicitly outside the Oath.
- _No buff extenders._ Pausing meal timers or extending item buffs would quietly make the game easier; preparation is part of the game.
- _No weapon-moveset tweaks._ A handful of popular mods unlock movesets or remove input delays for specific weapons — they change combat balance per weapon and are out of scope.
- _No dead or redundant entries._ The DirectStorage DLL swap (marked "no longer necessary" by its author), the standalone lens-distortion mod (fully covered by Disable Post Processing Effects), and the "Lite Environment" performance pack (end of support) were all evaluated and rejected at compile time.
