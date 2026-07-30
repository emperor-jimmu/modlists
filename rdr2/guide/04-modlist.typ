#import "theme.typ": *

= Mod Catalog

All mods are organized by category and listed alphabetically. Each entry
includes the wave it belongs to, dependencies, and compatibility notes.

== Graphics

#mod-entry(
  "4k Improved Story and Side Characters",
  "https://www.nexusmods.com/reddeadredemption2/mods/2174",
  "instanity",
  "Graphics",
  "1",
  [4K textures for all story and side characters — improved faces, bodies, hair, and beards. Replaces Arthur-focused texture mods (#link("https://www.nexusmods.com/reddeadredemption2/mods/701")[Arthur Redone], #link("https://www.nexusmods.com/reddeadredemption2/mods/762")[Young Clean Arthur]).],
  "Lenny's Mod Loader",
  "Replaces character textures game-wide. Significant visual uplift for named NPCs.",
  notes: "Extract to lml folder. Do NOT install Arthur Redone or Young Clean Arthur alongside this.",
  conflicts: "Conflicts with any other character texture replacer (Arthur Redone, Young Clean Arthur).",
)

#mod-entry(
  "Best TAA and Visual Effects",
  "https://www.nexusmods.com/reddeadredemption2/mods/2188",
  "—",
  "Graphics",
  "1",
  [Comprehensive visual overhaul — improved TAA, lighting, weather, water, sky, and foliage. Engine-level fixes that complement Reshade presets.],
  "Lenny's Mod Loader",
  "Replaces multiple visual config files. Noticeable sharpness and clarity improvement.",
  notes: "Extract to lml folder. Works alongside Reshade presets.",
)

#mod-entry(
  "Increased Geometry Level of Detail",
  "https://www.nexusmods.com/reddeadredemption2/mods/3751",
  "OmDeHoek",
  "Graphics",
  "1",
  [Pushes geometry LOD distances beyond vanilla limits — objects, buildings, and terrain detail render farther away. Performance cost scales with setting.],
  "Lenny's Mod Loader",
  "Increases draw distance for geometric detail. Impact varies by system.",
  notes: "Extract to lml folder. Adjust settings in the included INI if performance is a concern.",
)

#mod-entry(
  "Photo-realism Reshade",
  "https://www.nexusmods.com/reddeadredemption2/mods/31",
  "Anamist",
  "Graphics",
  "1",
  [Reshade preset targeting photorealistic visuals — balanced color grading, contrast, and sharpening. Works alongside TAA/visual effect mods.],
  "Reshade (https://reshade.me)",
  "Post-processing only. No game file changes. Toggle on/off with Home key.",
  notes: "Install Reshade, place preset in game folder, select it in Reshade's overlay.",
)

#mod-entry(
  "Upscaled Terrain",
  "https://www.nexusmods.com/reddeadredemption2/mods/1860",
  "—",
  "Graphics",
  "1",
  [AI-upscaled terrain textures — ground, dirt, grass, and rock surfaces at higher resolution. Reduces blurry ground textures.],
  "Lenny's Mod Loader",
  "Replaces terrain texture files. Subtle but noticeable ground-level improvement.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Terrain Textures Overhaul — TTO",
  "https://www.nexusmods.com/reddeadredemption2/mods/2189",
  "nopoPak",
  "Graphics",
  "1",
  [Complete terrain texture overhaul — replaces all ground, dirt, grass, and rock textures with higher-quality variants. Alternative to Upscaled Terrain.],
  "Lenny's Mod Loader",
  "Replaces terrain texture files game-wide. Noticeable visual improvement.",
  notes: "Extract to lml folder. Do NOT install alongside Upscaled Terrain (mod 1860) — pick one.",
  conflicts: "Conflicts with Upscaled Terrain (mod 1860). Choose one terrain texture mod.",
)

#mod-entry(
  "UpscaledAnimals — Large Mammals",
  "https://www.nexusmods.com/reddeadredemption2/mods/1949",
  "wickedhorseman",
  "Graphics",
  "1",
  [AI-upscaled textures for large animals — bears, elk, bison, moose, horses, and big cats. Install alongside Medium and Small packs for full coverage.],
  "Lenny's Mod Loader",
  "Replaces animal texture files. Compatible with the other UpscaledAnimals packs.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "UpscaledAnimals — Medium Mammals",
  "https://www.nexusmods.com/reddeadredemption2/mods/1938",
  "wickedhorseman",
  "Graphics",
  "1",
  [AI-upscaled textures for medium-sized animals — deer, wolves, coyotes, foxes, boar, and similar.],
  "Lenny's Mod Loader",
  "Replaces animal texture files. Install alongside Large and Small packs.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "UpscaledAnimals — Small Mammals",
  "https://www.nexusmods.com/reddeadredemption2/mods/1933",
  "wickedhorseman",
  "Graphics",
  "1",
  [AI-upscaled textures for small animals — rabbits, raccoons, opossums, badgers, muskrats, and rodents.],
  "Lenny's Mod Loader",
  "Replaces animal texture files. Install alongside Large and Medium packs.",
  notes: "Extract to lml folder.",
)

== Gameplay

#mod-entry(
  "Auto Looting",
  "https://www.nexusmods.com/reddeadredemption2/mods/3465",
  "JerryYOJ",
  "Gameplay",
  "1",
  [Automatically loots bodies as you walk over them — no more manual looting of every corpse. Configurable to filter what gets picked up.],
  "ScriptHookRDR2 V2",
  "Minor QoL script. No balance impact.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Contracts Remastered",
  "https://www.nexusmods.com/reddeadredemption2/mods/1800",
  "Shtivi",
  "Gameplay",
  "1",
  [Expands the contract mission system with new job types, better rewards, and dynamic objectives. Complements Bounty Hunting — Expanded.],
  "ScriptHookRDR2 V2",
  "Adds new mission templates and reward tables.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Custom First Person FOV",
  "https://www.nexusmods.com/reddeadredemption2/mods/1100",
  "vStar925",
  "Gameplay",
  "0",
  [Adds a configurable FOV slider for first-person view. Simple ini tweak for players who want a wider or narrower field of view.],
  "ScriptHookRDR2 V2",
  "Camera/FOV adjustment only. No gameplay impact.",
  notes: "Copy .asi to RDR2 root folder. Edit ini to preference.",
)

#mod-entry(
  "Duels",
  "https://www.nexusmods.com/reddeadredemption2/mods/500",
  "Shtivi",
  "Gameplay",
  "1",
  [Adds a dueling system — challenge NPCs to high-noon standoffs. Authentic western duelling mechanic with tension and quick-draw gameplay.],
  "ScriptHookRDR2 V2",
  "Adds new interaction mechanic and mini-game. Core outlaw theme mod.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Herbalist",
  "https://www.nexusmods.com/reddeadredemption2/mods/1457",
  "SerjRozov",
  "Gameplay",
  "1",
  [Expands herbalism — identifies plants, adds foraging mechanics, and deepens the crafting/cooking loop for survival-minded players.],
  "ScriptHookRDR2 V2",
  "Adds new interaction systems for plant gathering and crafting.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Hunting Grounds",
  "https://www.nexusmods.com/reddeadredemption2/mods/1761",
  "Shtivi",
  "Gameplay",
  "1",
  [Expands hunting with new mechanics — tracking improvements, bait systems, and dynamic animal population management.],
  "ScriptHookRDR2 V2",
  "Adds new hunting gameplay systems.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Metal Detector in SP",
  "https://www.nexusmods.com/reddeadredemption2/mods/1966",
  "Shtivi",
  "Gameplay",
  "1",
  [Brings the metal detector and collector role from Red Dead Online to single player. Find buried treasure, collectables, and artifacts.],
  "ScriptHookRDR2 V2",
  "Adds new item, tool, and treasure-hunting gameplay loop.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "No Bounty When Masked",
  "https://www.nexusmods.com/reddeadredemption2/mods/2248",
  "Shtivi",
  "Gameplay",
  "1",
  [If you commit a crime while wearing a mask and no one sees your face, you won't get a bounty. Essential QoL for outlaw playthroughs.],
  "ScriptHookRDR2 V2",
  "Changes bounty assignment logic. Makes mask usage meaningful.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Portable Dynamite Plunger",
  "https://www.nexusmods.com/reddeadredemption2/mods/486",
  "SergeantJoe",
  "Gameplay",
  "1",
  [Adds a remote dynamite detonator — plant explosives, take cover, and trigger the blast from a safe distance. Perfect for heists and ambushes.],
  "ScriptHookRDR2 V2",
  "Adds new tool and detonation mechanic.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Take NPC's Hostage (Rewritten)",
  "https://www.nexusmods.com/reddeadredemption2/mods/1506",
  "TuffyTown",
  "Gameplay",
  "1",
  [Grab NPCs as human shields during standoffs — lawmen and enemies hesitate to fire. Adds hostage negotiation and surrender mechanics.],
  "ScriptHookRDR2 V2",
  "Adds new interaction, AI behaviour, and standoff mechanics.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Timer 'Message' Bug Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/1197",
  "LeDana",
  "Gameplay",
  "0",
  [Fixes the timer notification bug where messages stay on screen indefinitely. Small but appreciated UI fix.],
  "Lenny's Mod Loader",
  "Minor UI bug fix. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "A.E.M (Authentic Euphoria Motions)",
  "https://www.nexusmods.com/reddeadredemption2/mods/1675",
  "VolaticWolf",
  "Gameplay",
  "1",
  [Overhauls euphoria physics reactions — gunshot impacts, falling, tumbling down hills, and NPC knockdowns feel more realistic and weighty.],
  "Lenny's Mod Loader",
  "Changes animation behaviour trees and euphoria parameters. Affects all NPCs and the player.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Aaron's Ped Accuracy Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/2268",
  "Aaron",
  "Gameplay",
  "1",
  [Fixes NPC aiming so they are not comically inaccurate. Makes shootouts require actual cover use. Also adds law dispatch wagons to more towns.],
  "Lenny's Mod Loader",
  "Changes NPC accuracy stats and law spawn behaviour. Makes combat significantly more engaging.",
  notes: "Extract to lml folder. Replaces the need for the standalone Ped Accuracy Fix (mod 1045).",
  conflicts: "Do NOT install alongside Ped Accuracy Fix (mod 1045).",
)

#mod-entry(
  "Automatic Greet Replies",
  "https://www.nexusmods.com/reddeadredemption2/mods/452",
  "PixieV",
  "Gameplay",
  "1",
  [Arthur automatically responds when NPCs greet him — no button prompt needed. Makes towns feel more alive and social.],
  "ScriptHookRDR2 V2",
  "Minor behaviour script. No balance impact.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Bounty Hunting — Expanded and Enhanced",
  "https://www.nexusmods.com/reddeadredemption2/mods/1073",
  "—",
  "Gameplay",
  "1",
  [Massively expands bounty hunting — new bounty types, target variety, dynamic encounters, improved rewards, and deeper tracking mechanics. One of the most popular RDR2 mods.],
  "ScriptHookRDR2 V2",
  "Adds new systems layered on top of vanilla bounty hunting. Significant content addition.",
  notes: "Copy .asi to RDR2 root folder. Configure via included INI.",
)

#mod-entry(
  "Crime and Law Rebalance and Enhancement",
  "https://www.nexusmods.com/reddeadredemption2/mods/569",
  "—",
  "Gameplay",
  "1",
  [Overhauls the wanted, bounty, and law enforcement systems — more realistic witness behaviour, smarter law responses, adjusted bounty costs, and meaningful crime consequences.],
  "ScriptHookRDR2 V2",
  "Deep rebalance of crime/law systems. Core outlaw experience mod.",
  notes: "Copy .asi to RDR2 root folder.",
  conflicts: "Do NOT install alongside Red Dead Realism (mod 2282) — both modify law/crime systems.",
)

#mod-entry(
  "First Person Walk Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/392",
  "konstantinos96b",
  "Gameplay",
  "0",
  [Fixes the unnatural slow/fast walk toggle in first-person view. Walking speed now matches the animation more consistently.],
  "None",
  "Minor animation/input fix. No balance impact.",
  notes: "Copy to RDR2 root folder.",
)

#mod-entry(
  "Longer Days",
  "https://www.nexusmods.com/reddeadredemption2/mods/41",
  "ItsLimaBean",
  "Gameplay",
  "1",
  [Configurable time scale — set how many real-life seconds each in-game minute lasts, separately for day and night. Includes weight retention modifier.],
  "ScriptHookRDR2 V2",
  "Changes time passage rate. Configurable via INI. Pauses during missions automatically.",
  notes: "Copy .asi to RDR2 root folder. Edit Longer_Days.ini to preference.",
)

#mod-entry(
  "Realistic Loadouts",
  "https://www.nexusmods.com/reddeadredemption2/mods/1371",
  "—",
  "Gameplay",
  "1",
  [NPCs carry era-appropriate and lore-friendly weapons instead of random loadouts. Lawmen, gang members, and civilians all feel more authentic.],
  "Lenny's Mod Loader",
  "Changes NPC weapon assignment tables. Makes combat feel more grounded.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Stash That Lantern",
  "https://www.nexusmods.com/reddeadredemption2/mods/333",
  "PixieV",
  "Gameplay",
  "0",
  [Allows Arthur to holster or put away his lantern on command instead of carrying it indefinitely. Small but appreciated QoL tweak.],
  "Lenny's Mod Loader",
  "Minor animation/input change. No balance impact.",
  notes: "Extract to lml folder.",
)

== UI

#mod-entry(
  "Beautiful Dark minimap",
  "https://www.nexusmods.com/reddeadredemption2/mods/1691",
  "DocDeft",
  "UI",
  "0",
  [Replaces the bright minimap with a dark, cleaner version. Easier on the eyes and more immersive.],
  "Lenny's Mod Loader",
  "Cosmetic UI replacement only. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Classic Weapon Wheel and Icons",
  "https://www.nexusmods.com/reddeadredemption2/mods/935",
  "—",
  "UI",
  "0",
  [Replaces the RDR2 weapon wheel icons with the classic RDR1-style wheel. Aesthetic preference for series veterans.],
  "Lenny's Mod Loader",
  "Cosmetic UI replacement only. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Remove Online — Social Club from Landing Screen Menu",
  "https://www.nexusmods.com/reddeadredemption2/mods/2134",
  "PlayRedThenStayDead",
  "UI",
  "0",
  [Removes the Online/Social Club options from the main menu. Cleaner start screen for single-player-only players.],
  "Lenny's Mod Loader",
  "Cosmetic UI replacement. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Snappy UI (QoL)",
  "https://www.nexusmods.com/reddeadredemption2/mods/971",
  "wickedhorseman",
  "UI",
  "0",
  [Speeds up UI transitions — faster menu opening, quicker weapon wheel, and reduced animation delays. Makes the interface feel more responsive.],
  "Lenny's Mod Loader",
  "UI speed tweaks. No gameplay impact.",
  notes: "Extract to lml folder.",
)

== Audio

#mod-entry(
  "Cut Dialogue Restoration and Enhancement",
  "https://www.nexusmods.com/reddeadredemption2/mods/308",
  "Juliet G",
  "Audio",
  "0",
  [Restores and enhances dialogue lines that were cut from the final game — ambient NPC chatter, story callbacks, and world-building conversations. Pure content restoration.],
  "Lenny's Mod Loader",
  "Adds ambient audio files. No gameplay or balance impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "R.W.A.O. (Realistic Weapon Audio Overhaul)",
  "https://www.nexusmods.com/reddeadredemption2/mods/2848",
  "Oakous",
  "Audio",
  "1",
  [Replaces weapon firing sounds with realistic audio — each gun has a unique, authentic report based on its real-world counterpart. Works alongside GunFX (visual effects) without conflict.],
  "Lenny's Mod Loader",
  "Replaces weapon sound files. Audio only, no stat changes.",
  notes: "Extract to lml folder. Compatible with GunFX (mod 1186).",
)

== Weapons

#mod-entry(
  "1899 Firearms",
  "https://www.nexusmods.com/reddeadredemption2/mods/1273",
  "wickedhorseman",
  "Weapons",
  "1",
  [Period-correct firearms — black powder vs smokeless cartridge separation, historically accurate performance. Companion mod to GunFX by the same author. Unlike Maverick Weapons, these are balanced and lore-friendly.],
  "Lenny's Mod Loader",
  "Changes weapon stats and behaviour. Adds ammo type separation.",
  notes: "Extract to lml folder. Designed to work with GunFX (mod 1186).",
)

#mod-entry(
  "Firearm Cosmetics — Carvings and Grips",
  "https://www.nexusmods.com/reddeadredemption2/mods/1781",
  "wickedhorseman",
  "Weapons",
  "1",
  [Adds custom carving patterns and grip styles for firearms — visual customization only, no stat changes. Compatible with other weapon mods.],
  "Lenny's Mod Loader",
  "Replaces weapon model/texture files. Cosmetic only.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "GunFX",
  "https://www.nexusmods.com/reddeadredemption2/mods/1186",
  "wickedhorseman",
  "Weapons",
  "1",
  [Replaces gunshot visual and audio effects — muzzle flashes, smoke, sparks, and firing sounds are more dramatic and punchy.],
  "Lenny's Mod Loader",
  "Replaces weapon effect files. Visual/audio only, no stat changes.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Maverick Weapons and Catalog",
  "https://www.nexusmods.com/reddeadredemption2/mods/850",
  "MaVeRicK",
  "Weapons",
  "1",
  [Adds new weapons (Navy Revolver, Rare Shotgun, scope-less snipers, Nitro Express rounds) and a catalog purchase system. Tagged as unbalanced/cheating on Nexus — some weapons are objectively stronger than vanilla. Recommended for experienced players only.],
  "ScriptHookRDR2 V2",
  "Adds new weapon entries and a custom vendor system. Can unbalance early-game progression.",
  notes: "Copy .asi to RDR2 root folder. Wave 1 only — skip if power balance is a concern.",
)

#mod-entry(
  "Weapon Texture Upscale",
  "https://www.nexusmods.com/reddeadredemption2/mods/928",
  "wickedhorseman",
  "Weapons",
  "1",
  [AI-upscaled weapon textures — every gun in the game gets sharper, more detailed surface textures without replacing models.],
  "Lenny's Mod Loader",
  "Replaces weapon texture files. No stat changes.",
  notes: "Extract to lml folder. Compatible with Maverick Weapons (mod 850) — test for file overlaps.",
)

== Horses

*No mods added yet.*

== Economy

#mod-entry(
  "Gold Panning",
  "https://www.nexusmods.com/reddeadredemption2/mods/2058",
  "Shtivi",
  "Economy",
  "1",
  [Adds gold panning at rivers and streams — a new passive income activity. Sift for gold flakes and nuggets to sell. Complements the outlaw economy loop.],
  "ScriptHookRDR2 V2",
  "Adds new interaction points and economy activity.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Jobs — Expanded and Enhanced",
  "https://www.nexusmods.com/reddeadredemption2/mods/2383",
  "Shtivi",
  "Economy",
  "1",
  [Adds a variety of legal jobs (herding, freight, delivery) for legitimate income. Balances the outlaw economy so players can choose honest work or crime.],
  "ScriptHookRDR2 V2",
  "Adds new mission templates and economy interactions.",
  notes: "Copy .asi to RDR2 root folder.",
)

== World

#mod-entry(
  "Ambient Money Stagecoaches",
  "https://www.nexusmods.com/reddeadredemption2/mods/1863",
  "Shtivi",
  "World",
  "1",
  [Adds drivable and lootable stagecoaches as ambient encounters. Rob stagecoaches for cash and valuables — a core outlaw activity.],
  "ScriptHookRDR2 V2",
  "Adds new ambient encounter vehicles and loot interactions.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Ambient Gang — RDR Gang Addon",
  "https://www.nexusmods.com/reddeadredemption2/mods/822",
  "Blackjacks420n",
  "World",
  "1",
  [Adds RDR1 gangs (Walton Gang, Bollard Twins, Trello Gang, etc.) as ambient encounters, populates hideouts, adds custom gang hideouts, and expands world variety. Gangs can be looted for special ammo.],
  "Lenny's Mod Loader",
  "Adds new NPC gangs, hideout locations, and ambient encounter logic. Significant world expansion.",
  notes: "Extract to lml folder. The Colter.ymt file causes issues in Chapter 1 — remove it during story playthrough. Optional New Gang Hideout files require Project NA.",
)

#mod-entry(
  "Bandit Hideouts",
  "https://www.nexusmods.com/reddeadredemption2/mods/2213",
  "crossed99 & Gunter Severloh",
  "World",
  "1",
  [Adds 143 bandit hideouts and 50 ambush points across the entire map, plus roaming bandit posses. Fully configurable via INI — can disable during story missions or remove specific hideout locations.],
  "ScriptHookRDR2 V2",
  "Adds persistent bandit camps, ambush encounters, and mounted posses. Major content addition.",
  notes: "Copy to RDR2 root folder. Edit Bandit_Hideouts.ini to disable hideouts at story locations. Can toggle mod on/off with a hotkey.",
  conflicts: "May conflict with other mods that edit the same map location coordinates. Test with Ambient Gang (mod 822).",
)

#mod-entry(
  "Bank Robberies",
  "https://www.nexusmods.com/reddeadredemption2/mods/167",
  "Unlosing & Jedijosh920",
  "World",
  "1",
  [Adds repeatable bank robbery missions to multiple banks across the map. Tagged as Unbalanced on Nexus — each heist pays \$500-\$2000, which can inflate the early-game economy when combined with Crime and Law Rebalance.],
  "ScriptHookRDR2 V2",
  "Adds new mission scripts and economy interactions. Can unbalance progression if spammed.",
  notes: "Copy .asi to RDR2 root folder. Pair with Crime and Law Rebalance (mod 569) to add consequence. Wave 1 only.",
)

#mod-entry(
  "Open All Interiors",
  "https://www.nexusmods.com/reddeadredemption2/mods/352",
  "—",
  "World",
  "1",
  [Unlocks interior doors that are normally locked in free roam — Angelo Bronte's mansion, locked houses, and other inaccessible spaces become explorable.],
  "Lenny's Mod Loader",
  "Removes collision/blocking volumes on interior doors. Exploration content only.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Undead Towns",
  "https://www.nexusmods.com/reddeadredemption2/mods/1011",
  "—",
  "World",
  "1",
  [Replaces town NPCs with undead/zombie variants. Niche horror-themed mod for players who want a supernatural twist on free roam.],
  "Lenny's Mod Loader",
  "Replaces ped models in town spawn tables.",
  notes: "Extract to lml folder. Thematic mod — not recommended for players seeking a grounded Wild West experience.",
)

#mod-entry(
  "Camp Anywhere",
  "https://www.nexusmods.com/reddeadredemption2/mods/1117",
  "crossed99",
  "World",
  "1",
  [Set up camp anywhere in the world — not just at designated camp sites. From the same author as Bandit Hideouts. Essential for exploration and survival gameplay.],
  "ScriptHookRDR2 V2",
  "Adds dynamic camp placement mechanic.",
  notes: "Copy .asi to RDR2 root folder.",
  conflicts: "Compatible with Bandit Hideouts (mod 2213) — same author.",
)

#mod-entry(
  "Dog Companion",
  "https://www.nexusmods.com/reddeadredemption2/mods/725",
  "Shtivi",
  "World",
  "1",
  [Adds a loyal dog companion that follows you, alerts you to threats, and can hunt small game. A beloved RDR2 mod.],
  "ScriptHookRDR2 V2",
  "Adds companion NPC with AI behaviour.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Dynamic Seasons",
  "https://www.nexusmods.com/reddeadredemption2/mods/1557",
  "bolmin70",
  "World",
  "1",
  [Adds changing seasons to the world — foliage colours shift, weather patterns change, and the landscape evolves as time passes. Major immersion upgrade.],
  "ScriptHookRDR2 V2",
  "Changes world state based on in-game date. Affects visuals and weather.",
  notes: "Copy .asi to RDR2 root folder. May conflict with other weather/visual mods.",
  conflicts: "Test with Best TAA and Visual Effects (mod 2188) — may overlap on weather settings.",
)

#mod-entry(
  "Immersive Guarma",
  "https://www.nexusmods.com/reddeadredemption2/mods/3791",
  "MonsieurGremlin",
  "World",
  "1",
  [Expands the Guarma chapter with additional content, exploration opportunities, and restored cut features. Makes a brief story segment feel more complete.],
  "ScriptHookRDR2 V2",
  "Adds content to the Guarma map area.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Project New Austin 1907 — Classic Color Scheme and RDR1 Locations",
  "https://www.nexusmods.com/reddeadredemption2/mods/979",
  "RichardHertz",
  "World",
  "1",
  [Overhauls New Austin with classic RDR1-inspired colour grading and restores iconic locations. Massive world enhancement for the post-epilogue map.],
  "Lenny's Mod Loader",
  "Replaces map textures, lighting, and location data.",
  notes: "Extract to lml folder. Significant performance impact possible.",
)

#mod-entry(
  "Stagecoach Robberies",
  "https://www.nexusmods.com/reddeadredemption2/mods/869",
  "Shtivi",
  "World",
  "1",
  [Adds interactive stagecoach robbery encounters — stop stagecoaches, threaten drivers, crack safes, and escape with the loot. Core outlaw content.],
  "ScriptHookRDR2 V2",
  "Adds new mission scripts and economy interactions.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "1907 Odd Fellows Rest",
  "https://www.nexusmods.com/reddeadredemption2/mods/2672",
  "—",
  "World",
  "1",
  [Fixes the broken Odd Fellows building interior in 1907 — restores a landmark incorrectly blocked off in the post-game.],
  "Lenny's Mod Loader",
  "Fixes map collision/blocking data.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Classic Blackwater Police",
  "https://www.nexusmods.com/reddeadredemption2/mods/2938",
  "—",
  "World",
  "1",
  [Replaces Blackwater police uniforms with a classic period-correct appearance. Small visual upgrade for law in the epilogue.],
  "Lenny's Mod Loader",
  "Replaces NPC model textures. Cosmetic only.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Coot's Chapel In 1907",
  "https://www.nexusmods.com/reddeadredemption2/mods/2507",
  "—",
  "World",
  "1",
  [Restores Coot's Chapel as a visitable location in the 1907 epilogue. Small world restoration fix.],
  "Lenny's Mod Loader",
  "Fixes map data to make location accessible.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Fat People Restored",
  "https://www.nexusmods.com/reddeadredemption2/mods/9285",
  "—",
  "World",
  "0",
  [Restores overweight NPC models suppressed by a vanilla bug. Adds body diversity to the world.],
  "Lenny's Mod Loader",
  "Restores NPC model variants. Cosmetic only.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "John Marston — 1907",
  "https://www.nexusmods.com/reddeadredemption2/mods/8087",
  "—",
  "World",
  "1",
  [Improves John Marston's appearance in the Epilogue — better face textures, more accurate to his RDR1 look.],
  "Lenny's Mod Loader",
  "Replaces John's model and texture files.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Online Animals Unlocked for SP",
  "https://www.nexusmods.com/reddeadredemption2/mods/4325",
  "—",
  "World",
  "1",
  [Unlocks animals cut from single player — wolves, bears, panthers, cougars, boars, coyotes, foxes, bison, bucks, and more. Restores full wildlife diversity.],
  "Lenny's Mod Loader",
  "Adds animal spawn entries across multiple files.",
  notes: "Download the all-in-one pack from the mod page. Extract to lml folder.",
)

#mod-entry(
  "RDR1 Fort Mercer — Redone",
  "https://www.nexusmods.com/reddeadredemption2/mods/6109",
  "—",
  "World",
  "1",
  [Restores and improves Fort Mercer from RDR1 in the RDR2 map. Landmark restoration for New Austin exploration.],
  "Lenny's Mod Loader",
  "Adds map/model data for the fort location.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Animal Fur Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/5359",
  "—",
  "Graphics",
  "0",
  [Fixes broken animal fur rendering — fur on wolves, bears, and other animals displays correctly instead of appearing flat or glitched.],
  "Lenny's Mod Loader",
  "Replaces shader/texture files. Visual only.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Graphics.ytd Crash Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/5250",
  "—",
  "Graphics",
  "0",
  [Fixes a crash caused by specific graphics.ytd file configurations. Small stability patch.],
  "Lenny's Mod Loader",
  "Replaces a single texture file. No visual impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "HD Texture Unlocker",
  "https://www.nexusmods.com/reddeadredemption2/mods/5454",
  "—",
  "Graphics",
  "0",
  [Unlocks high-resolution textures built into the game but not enabled by default. Free visual upgrade with minimal performance cost.],
  "Lenny's Mod Loader",
  "Enables existing HD texture assets. Visual improvement.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Restored HD Textures",
  "https://www.nexusmods.com/reddeadredemption2/mods/1591",
  "—",
  "Graphics",
  "0",
  [Restores additional high-resolution textures for world props, clutter, and environmental objects that were downgraded in patches.],
  "Lenny's Mod Loader",
  "Replaces texture files with higher-resolution variants.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "RDR2 Performance Booster V2",
  "https://www.nexusmods.com/reddeadredemption2/mods/7671",
  "—",
  "Graphics",
  "0",
  [Improves FPS and reduces stuttering through config tweaks and memory optimisations. Works alongside other visual mods.],
  "Lenny's Mod Loader",
  "Modifies graphics/engine configuration files.",
  notes: "Extract to lml folder. Adjust settings if the performance gain feels too aggressive.",
)

#mod-entry(
  "WOW... That's Beautiful",
  "https://www.nexusmods.com/reddeadredemption2/mods/6335",
  "—",
  "Graphics",
  "1",
  [Visual enhancement pack — improved lighting, colour grading, and atmospheric effects. Works alongside Reshade and Best TAA.],
  "Lenny's Mod Loader",
  "Replaces visual settings files. Affects lighting and atmosphere.",
  notes: "Extract to lml folder. Test compatibility with Best TAA (mod 2188).",
)

#mod-entry(
  "Catalogue Improvements",
  "https://www.nexusmods.com/reddeadredemption2/mods/5440",
  "—",
  "UI",
  "0",
  [Improves the vendor catalogue UI — better item previews, clearer pricing, and smoother navigation.],
  "Lenny's Mod Loader",
  "UI replacement. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Train Tracker",
  "https://www.nexusmods.com/reddeadredemption2/mods/9477",
  "—",
  "UI",
  "0",
  [Adds train arrival times to the map — see when the next train is coming and where it's headed. Simple QoL.],
  "Lenny's Mod Loader",
  "UI modification. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Cut Voiceline Restoration",
  "https://www.nexusmods.com/reddeadredemption2/mods/5802",
  "—",
  "Audio",
  "0",
  [Restores cut voice lines from NPCs — ambient dialogue, mission callbacks, and world chatter removed from the final game.],
  "Lenny's Mod Loader",
  "Adds audio files. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Enhanced Disarm and Restored NPC Weapon Pickup",
  "https://www.nexusmods.com/reddeadredemption2/mods/9059",
  "—",
  "Gameplay",
  "1",
  [Improves the disarm mechanic — more reliable, works in more situations. NPCs can also pick up dropped weapons during combat.],
  "ScriptHookRDR2 V2",
  "Changes combat interaction logic.",
  notes: "Copy .asi to RDR2 root folder.",
)

#mod-entry(
  "Equine Improvements",
  "https://www.nexusmods.com/reddeadredemption2/mods/6436",
  "—",
  "Gameplay",
  "0",
  [Fixes horse behaviour — improved responsiveness, better pathfinding, reduced annoying refusal mechanics. QoL for mounted gameplay.],
  "Lenny's Mod Loader",
  "Changes horse behaviour/control parameters.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Euphoria Grabs",
  "https://www.nexusmods.com/reddeadredemption2/mods/8953",
  "—",
  "Gameplay",
  "1",
  [Applies euphoria physics to grab and throw interactions — NPCs react with realistic weight and balance. Complements A.E.M.],
  "Lenny's Mod Loader",
  "Changes animation/euphoria behaviour parameters.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Fix Social Club Crashes",
  "https://www.nexusmods.com/reddeadredemption2/mods/4868",
  "—",
  "Gameplay",
  "0",
  [Prevents game crashes caused by Social Club overlay interactions. Simple stability fix.],
  "Lenny's Mod Loader",
  "Disables problematic Social Club hooks. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Keyboard Input Lag Fix",
  "https://www.nexusmods.com/reddeadredemption2/mods/4490",
  "—",
  "Gameplay",
  "0",
  [Fixes keyboard input lag that makes the game feel sluggish. Essential QoL for MKB players.],
  "Lenny's Mod Loader",
  "Modifies input handling settings. No gameplay impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "No More Persecution Complex",
  "https://www.nexusmods.com/reddeadredemption2/mods/7210",
  "—",
  "Gameplay",
  "0",
  [Stops NPCs from constantly commenting on the player — no more \"It's you!\" every time you pass by. Major ambient QoL.],
  "Lenny's Mod Loader",
  "Modifies NPC dialogue trigger settings. No balance impact.",
  notes: "Extract to lml folder.",
)

#mod-entry(
  "Realistic Cartridges",
  "https://www.nexusmods.com/reddeadredemption2/mods/797",
  "—",
  "Weapons",
  "1",
  [Separates ammunition by cartridge type — black powder vs smokeless, period-correct performance. Designed for 1899 Firearms.],
  "Lenny's Mod Loader",
  "Changes ammo stats and behaviour tables.",
  notes: "Extract to lml folder. Designed to work with 1899 Firearms (mod 1273).",
)
