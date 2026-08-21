#import "theme.typ": *

= Modlist — Throne of Titans

_Every entry in this list was researched on 2026-08-21 at the project owner's request, from each mod's own material — its CivFanatics thread or resource page, official site, or SourceForge page. Entries are recorded as that material states them; the project owner remains the final authority on every entry and may amend or remove any of them. Target version: Beyond the Sword 3.19, organized with the CIV 4 – All Mod Chooser._

== How entries are recorded

Each mod is recorded with the four required fields: _Name + URL_ (clickable), _Dependencies_, _System / mechanic impact_ (what it changes), and _Notes_ (load order, configuration, and other relevant details).

#info[
  Two kinds of install, two kinds of coexistence:

  - *CustomAssets mods* (Wave 0 — BUG, BULL, Blue Marble) modify the unmodded game and load automatically. Civ 4 ignores CustomAssets while a Mods-folder mod is active, so they pair with vanilla play — not with the total conversions below.
  - *Mods-folder mods* (Waves 1–3 — K-Mod, RevolutionDCM, Rhye's and Fall of Civilization, Fall from Heaven II, Realism Invictus, Rise of Mankind: A New Dawn, Caveman 2 Cosmos) each ship their own DLL and replace the game wholesale — pick exactly one per game with the mod chooser.
]

== Wave 0 — Vanilla + UI/QoL only

_Wave 0 philosophy: the game stays vanilla; only user-interface and quality-of-life mods qualify. These three install side by side into CustomAssets._

#mod-entry(
  name: "BUG Mod 4.4",
  url: "https://forums.civfanatics.com/threads/download-bug-and-bat-here.274636/",
  deps: "Beyond the Sword 3.19. The official installer places the files in CustomAssets and the BUG Mod folder; the mod states it is compatible with BTS 3.19.",
  impact: "UI and quality-of-life overhaul with an 'unaltered gameplay' design: no changes to unit stats, combat rules, terrain yields, or AI behavior. Upgrades the advisor screens, city screen, main map interface, and Civilopedia, and only makes information visible that a player could work out manually. Nearly every feature is toggleable from the BUG options screen (Ctrl+Alt+O).",
  notes: "Version 4.4. Considered safe for succession games precisely because it changes nothing mechanically. Install Blue Marble before BUG. BAT Mod 4.1 packages BUG + BULL + Blue Marble into one install — a ready-made alternative to installing them separately (thread: https://forums.civfanatics.com/threads/bat-mod-4-1.348587/).",
)

#mod-entry(
  name: "BULL 1.2",
  url: "https://forums.civfanatics.com/threads/bull-mod.388552/",
  deps: "Requires the BUG Mod; Beyond the Sword 3.19 (BTS-3.19 DLL). Download from the BULL SourceForge files page: https://sourceforge.net/projects/civ4bull/files/BULL%20for%20BTS%203.19/",
  impact: "DLL-level companion to BUG that unlocks what a Python/XML interface cannot do on its own: a more detailed combat-odds display, extra unit commands and automation, and bug fixes that include components of the Unofficial 3.19 Patch.",
  notes: "Version 1.2. Install after BUG — its installer targets the BUG installation. BUFFY is a pre-packaged BUG + BULL bundle used for Hall of Fame games, if you prefer one install.",
)

#mod-entry(
  name: "Blue Marble 4.50 Gold",
  url: "https://forums.civfanatics.com/resources/civ4-blue-marble-v4-50-gold.6/",
  deps: "Beyond the Sword 3.19 (the mod also states support for the base game and Warlords). Installed into CustomAssets by its installer; on the Steam version the installer can fail to find the game — a dummy civilization4.exe in the Beyond the Sword folder is the documented workaround.",
  impact: "Graphics only: photorealistic terrain textures based on NASA satellite imagery, plus modernized fonts, cursors, and color scheme. No gameplay changes. The installer lets you choose components — terrain, leaderheads, interface, and more — so you can keep the original art where you prefer it.",
  notes: "Latest installer: v4.50 Gold. Install before BUG/BAT and re-run the installer after patching the game. Included in BAT 4.1 — do not stack a separate Blue Marble on top of BAT.",
)

== Wave 1 — New systems begin

_Wave 1+ philosophy: more content and new mechanics — never pure power spikes. Both entries are Mods-folder mods: pick one per game._

#mod-entry(
  name: "K-Mod 1.46",
  url: "https://forums.civfanatics.com/threads/k-mod-far-beyond-the-sword.407049/",
  deps: "Beyond the Sword 3.19, Windows only — the mod states it cannot run on the Mac version. Installed as a standalone mod in the Mods folder.",
  impact: "Major AI overhaul: smarter city placement, research, military strategy, and victory pursuit, less AI 'cheating' (reduced knowledge of what is in the fog of war), more distinct leader personalities, and a notably more aggressive AI. Also integrates BUG-style interface features, faster turn times, a reworked, less punishing global warming system, and small balance buffs to weak options such as the Serfdom civic and the Protective and Aggressive traits.",
  notes: "Version 1.46 (May 2018). Self-contained DLL mod — it carries its own UI features, so do not run it together with BUG/BULL. Later used as the foundation for Advanced Civ. Includes Willowmound's ActualQuotes flavor text on tech discovery.",
)

#mod-entry(
  name: "RevolutionDCM 2.90",
  url: "https://forums.civfanatics.com/threads/revolutiondcm-for-bts.262937/",
  deps: "Beyond the Sword 3.19. Must be installed at ...\\Beyond the Sword\\Mods\\RevolutionDCM\\ — the Revolution.ini configuration file lives there. The mod's thread recommends clearing the game cache if it does not load cleanly.",
  impact: "Modpack that makes the world politically unstable: the Revolution stability system (government, civics, and city management affect stability; chronic instability can make cities revolt, break away to form independent nations, or join another civilization), BarbarianCiv (barbarian cities can settle down into full civilizations), Dale's Combat Mod, integrated Better BTS AI, DynamicCivNames, a Tech Diffusion catch-up mechanic, and AIAutoPlay / ChangePlayer tools.",
  notes: "Version 2.90, built for BTS 3.19. Highly modular — most components, including Better BTS AI, BUG, and the Combat Mod, can be toggled on or off from the in-game options. Install path matters for the .ini; the mod's own thread is the source for setup details.",
)

== Wave 2 — Deeper systems

_Wave 1+ philosophy: more content and new mechanics — never pure power spikes. Each entry is a standalone experience: pick one per game._

#mod-entry(
  name: "Rhye's and Fall of Civilization (RFC) 1.187",
  url: "https://forums.civfanatics.com/resources/rhyes-and-fall-of-civilization-for-bts.6639/",
  deps: "Beyond the Sword 3.19 — digital versions are already patched; disc installs need the 3.19 patch first. Download page: https://forums.civfanatics.com/threads/download-latest-version-here.176754/",
  impact: "Earth-history simulation: civilizations spawn on the map at their historical dates and locations, flipping cities in their core areas, and the world keeps turning whether you are there or not. A stability system can collapse unstable empires and respawn fallen ones, and every civilization has a unique Historical Victory — Egypt, for example, must control the Nile and build the Pyramids.",
  notes: "Version 1.187 is the final release of the original mod; the actively maintained community successor is RFC Dawn of Civilization. The RFC Atlas at rhye.civfanatics.net maps spawn dates and UHV areas and is worth keeping open while playing.",
)

#mod-entry(
  name: "Fall from Heaven II 0.40",
  url: "https://forums.civfanatics.com/resources/fall-from-heaven-ii.1/",
  deps: "Beyond the Sword patched to 3.19. Discussion and support thread: https://forums.civfanatics.com/threads/mod-fall-from-heaven-ii.171398/",
  impact: "Dark-fantasy total conversion set on the world of Erebus: 14 spheres of magic whose casters gain experience over time, over 20 asymmetric civilizations, religions tied to a Good/Neutral/Evil alignment system, an Apocalypse timer that tracks the world's descent into darkness, explorable lairs, hero units with criteria-gated upgrades, and 18 scenarios with storylines and unusual victory conditions in the final release.",
  notes: "Final version 0.40 released 16 December 2008 with the scenario suite; the team's later patches extended it into the 0.41 series, which most community installs use. Developed by a team led by Derek 'Kael' Paxton. Community continuations include Ashes of Erebus and Master of Mana.",
)

#mod-entry(
  name: "Realism Invictus",
  url: "https://forums.civfanatics.com/threads/realism-invictus.411799/",
  deps: "Beyond the Sword 3.19. Ships in Full, Light, and Unpacked variants — Unpacked is recommended on modern systems to mitigate memory-related crashes.",
  impact: "Realism overhaul with over 130 technologies: a reworked military where unit composition matters and 'stacks of doom' are penalized, a resource hierarchy that demands long-term planning and trade, a harsher early economy where overexpansion can cripple you, barbarians that evolve into civilizations if left unchecked, and religions that each play differently and drive conflict.",
  notes: "Roughly two decades of development, originating from Total Realism. Version 3.6 (December 2022) is stable; 3.8 / 3.81 are the current releases at the time of writing. Downloads: Full and Light versions on CivFanatics resources, Unpacked version alongside.",
)

#mod-entry(
  name: "Rise of Mankind: A New Dawn (AND)",
  url: "https://forums.civfanatics.com/threads/rise-of-mankind-a-new-dawn.372884/",
  deps: "Beyond the Sword 3.19. Standalone mod built on Rise of Mankind by Zappara and expanded by Afforess; downloaded from SourceForge: https://sourceforge.net/projects/anewdawn/files/",
  impact: "Modular expansion of Rise of Mankind: almost every new feature can be toggled on or off, a vastly expanded tech tree that reaches into the future, a stronger AI, a Revolutions stability system, a reworked diplomacy system with embassies and trading contacts, a large pool of new units, buildings, and wonders, and extensive automation options to manage the added complexity.",
  notes: "Current release: A New Dawn 2 (full installer revision 1093, January 2022, ~1.1 GB). Maintained by the AND Resurrection Team. Official feature list at anewdawn.sourceforge.io.",
)

== Wave 3 — The Throne of Titans

_Wave 1+ philosophy: more content and new mechanics — never pure power spikes. Wave 3 holds a single total conversion — pick it when you are ready for the long game._

#mod-entry(
  name: "Caveman 2 Cosmos",
  url: "https://forums.civfanatics.com/threads/caveman-2-cosmos.288570/",
  deps: "Beyond the Sword 3.19 (official requirement). Suggested specs from the thread: 64-bit ~2.6 GHz CPU, 4 GB RAM (3 minimum), 10 GB+ free space (60 GB recommended), 1 GB graphics card. English-only.",
  impact: "Total conversion — the thread calls it 'the most expansive Civilization 4: BTS mod to date'. 734+ technologies with a new tech tree (incl. Space Era); gameplay spans Prehistoric to Galactic eras; a single game can take 100+ hours. Built on a Rise of Mankind (RoM 2.2) base with merged content such as RevolutionDCM and unit art from Diversica / Varietas Delectat; developed by StrategyOnly Productions with 100+ credited modders.",
  notes: "Version 43 (15 Jan 2023) at the time of writing. Save-game compatible across C2C versions — when asked, accept the modifier recalculation. 'Graphics paging' option in the BUG Options screen saves ~30% RAM and reduces MAF errors; frequent SVN/daily updates. Download: https://forums.civfanatics.com/resources/caveman2cosmos.15324/ — see the thread's FAQ (post #11) for known issues and workarounds.",
)
