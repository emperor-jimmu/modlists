#import "theme.typ": *

#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 2cm, right: 2cm),
  header: align(right + top, text(size: 8pt, fill: c.muted)[Only Monsters Remain]),
  footer: align(center + bottom, text(size: 8pt, fill: c.muted)[#context(counter(page).display("1"))]),
  numbering: "1",
)

#set text(font: c.body-font, size: 12pt, fill: c.body)
#set par(justify: true, leading: 0.7em)
#show heading: it => {
  set text(font: c.heading-font, weight: "bold", fill: c.heading)
  it
}

#title-page(
  ttl: "Only Monsters Remain",
  sbtl: "A Curated Witcher 3 Modlist & Game Guide",
)

#pagebreak()
#outline(
  title: [Table of Contents],
  indent: auto,
)

// ================================================================
// WAVE 0: A WITCHER'S APPRENTICE
// ================================================================
#wave-header(num: 0, wave-title: "A Witcher's Apprentice", wave-sub: "Vanilla + Quality of Life \u{2014} For New Players")

#tip-box(body: [This wave introduces no gameplay-changing mods. Only UI and quality-of-life improvements so you experience the vanilla game as CD Projekt Red intended, just with fewer frustrations.])

= Installation & Setup

== Game Installation

Before modding, you need a clean installation. Install via GOG, Steam, or Epic Games Store and download The Witcher 3: Wild Hunt \u{2014} Game of the Year Edition.

Verify your game version is #strong[4.04] (released July 19, 2023). On Steam, right-click the game in your library, go to Properties \u{2192} Betas, and select "4.04" from the dropdown. GOG Galaxy and Epic auto-update.

Launch the game once to generate configuration files. This creates the `dx12filelist.txt` and `dx11filelist.txt` that mod managers use to detect installed mods.

== Mod Manager Setup

#info-box(ititle: "The Witcher 3 Mod Manager", body: [
  Download from #link("https://www.nexusmods.com/witcher3/mods/2678")[Nexus Mods (ID: 2678)]. This is the recommended tool for this modlist.
])

Step-by-step setup:
1. Launch the Mod Manager
2. Go to Settings and set your game directory (where `witcher3.exe` lives)
3. The Mod Manager scans your `Mods/` folder and detects any existing mods
4. Click Profiles \u{2192} New Profile and name it #strong["Only Monsters Remain \u{2014} Wave 0"]
5. Enable #strong[Script Merger] integration in settings
6. Enable #strong[Mod Deactivation] for easy profile switching

After installing all mods for a wave, click the #strong[Script Merger] button in the Mod Manager, accept auto-merge suggestions, and apply the merged output.

= Modlist \u{2014} Wave 0

The mods listed below are UI and quality-of-life improvements only. They make the game more comfortable without altering combat, progression, economy, or world mechanics.

== Pre-requisites (installed manually)

#mod-card(
  name: "Ultimate ASI Loader",
  url: "https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases",
  author: "ThirteenAG",
  category: "Utilities",
  version: "x64",
  wave: "0",
  dependencies: (),
  mechanic-impact: none,
)[Required for Mod Limit Adjuster. Download the x64 release and place `dinput8.dll` in the game root directory.]

#mod-card(
  name: "Mod Limit Adjuster",
  url: "https://www.nexusmods.com/witcher3/mods/3711",
  author: "LHSQ & sedmelluq",
  category: "Utilities",
  version: "1.0",
  wave: "0",
  dependencies: ("Ultimate ASI Loader",),
  mechanic-impact: none,
)[Raises the game's built-in mod limit. Requires ASI Loader, Hearts of Stone, and Blood and Wine. Install `ModLimitAdjuster.asi` and `.cfg` to game root.]

#mod-card(
  name: "Script Merger",
  url: "https://www.nexusmods.com/witcher3/mods/484",
  author: "AnotherSymbiote",
  category: "Utilities",
  version: "0.6.4",
  wave: "0",
  dependencies: (),
  mechanic-impact: none,
)[Detects and resolves mod conflicts by merging files or configuring load order. Run after installing each batch of mods.]

== Foundation (installed via Mod Manager)

#mod-card(
  name: "Community Patch - Shared Imports",
  url: "https://www.nexusmods.com/witcher3/mods/2110",
  author: "rmemr",
  category: "Utilities",
  version: "v0.6",
  wave: "0",
  dependencies: (),
  mechanic-impact: none,
)[Shared class imports baseline that reduces merge conflicts between mods. Provides fully imported engine classes as a common dependency layer.]

#mod-card(
  name: "Community Patch - Menu Strings",
  url: "https://www.nexusmods.com/witcher3/mods/3650",
  author: "wghost81",
  category: "Utilities",
  version: "1.0",
  wave: "0",
  dependencies: (),
  mechanic-impact: none,
)[Pre-made localized strings for Options > Mods menu subcategories. Resolves the 10-entry menu limit by providing standardized submenu categories.]

#mod-card(
  name: "Community Patch - Bootstrap and Utilities",
  url: "https://www.nexusmods.com/witcher3/mods/2109",
  author: "rmemr",
  category: "Utilities",
  version: "0.5-NEXT-GEN",
  wave: "0",
  dependencies: ("Shared Imports", "Menu Strings"),
  mechanic-impact: none,
)[Autostartup framework for mods, custom area hub support, reusable list menu, and utility functions. Reduces merge conflicts by eliminating the need for mods to modify vanilla scripts for startup.]

#mod-card(
  name: "Brothers In Arms - Ultimate Edition",
  url: "https://www.nexusmods.com/witcher3/mods/11260",
  author: "MerseyRockoff et al.",
  category: "Bug Fixes",
  version: "3.1.2",
  wave: "0",
  dependencies: ("Hearts of Stone", "Blood and Wine"),
  mechanic-impact: none,
)[5,825 bug fixes and restored content spanning the entire campaign and both expansions. Optional content can be toggled in-game via Options > Mods > Brothers In Arms.]

#mod-card(
  name: "Clever Main Menu (Redux)",
  url: "https://www.nexusmods.com/witcher3/mods/12271",
  author: "RovanFrost",
  category: "UI",
  version: "1.1",
  wave: "0",
  dependencies: ("Hearts of Stone", "Blood and Wine"),
  mechanic-impact: none,
)[Customizable main menu with infinite mod categories, quick save/load via ESC, and extensive visual customization. Requires editing dx11filelist.txt and dx12filelist.txt after install.]

= Beginner's Guide

== Welcome to the Continent

You are #strong[Geralt of Rivia], a witcher \u{2014} a genetically enhanced monster hunter for hire. The world is at war. The Nilfgaardian Empire has invaded the Northern Kingdoms, and peasants, soldiers, and monsters alike struggle to survive.

Your goal: find #strong[Ciri], your adopted daughter, being pursued by the Wild Hunt.

== Core Gameplay Loop

1. #strong[Explore] the world
2. #strong[Take contracts] \u2014 help villagers by slaying monsters
3. #strong[Complete quests] \u2014 main story, side quests, contracts, treasure hunts
4. #strong[Level up] \u2014 earn experience, unlock skills, craft better gear
5. #strong[Prepare] \u2014 read the bestiary, apply oils, brew potions before fights

#tip-box(body: [Save often. Use quicksave (F5) before every contract, and manual saves before major story decisions.])

== Understanding the HUD

- Vitality (top-left red bar) \u{2014} your health. Zero means death.
- Stamina (top-left yellow bar) \u{2014} used for Signs and dodging.
- Quickslots (bottom center) \u{2014} potions, bombs, crossbow bolts.
- Minimap (top-right) \u{2014} nearby points of interest, quest markers, enemies.
- Quest tracker (upper-left) \u{2014} active quest objective and distance.
- Toxicity (top-left green bar) \u{2014} appears after using potions. Too high and you take damage.

== Meditation Mechanics

Meditation (Ctrl or hold Start):
- Restores health on lower difficulties (not Death March)
- Advances time \u{2014} some monsters only spawn at night
- Refills potions by consuming one unit of strong alcohol from your inventory

#tip-box(body: [Always carry at least 10 Dwarven Spirit or Alcohest. Without alcohol, meditation won't refill your potions.])

= Controls & UI

== Keyboard & Mouse

#tbl(cols: 2,
  [*Action*], [*Key*],
  [Move], [W / A / S / D],
  [Sprint], [Shift (hold)],
  [Dodge], [Alt + direction],
  [Roll], [Double-tap direction or Alt + double-tap],
  [Light Attack], [Left mouse button],
  [Heavy Attack], [Right mouse button (hold)],
  [Cast Sign], [Q],
  [Draw / Sheathe Steel Sword], [1],
  [Draw / Sheathe Silver Sword], [2],
  [Use Quickslot], [Z / X / C / V],
  [Open Inventory], [I],
  [Open Character / Skills], [C],
  [Open Map], [M],
  [Open Journal / Bestiary], [J],
  [Open Alchemy], [B],
  [Meditation], [Ctrl],
  [Quick Save], [F5],
  [Quick Load], [F9],
)

== Controller (Xbox / PlayStation)

#tbl(cols: 2,
  [*Action*], [*Button*],
  [Move], [Left stick],
  [Sprint], [Left stick (click)],
  [Light Attack], [RB / R1],
  [Heavy Attack], [RT / R2],
  [Cast Sign], [LB / L1 + face button],
  [Dodge], [A / Cross + direction],
  [Roll], [A / Cross + double-tap direction],
  [Parry], [LB / L1 (tap before enemy hits)],
  [Open Inventory], [Back / Select],
  [Open Map], [Start / Options],
  [Meditation], [Hold Start / Options],
)

== Navigation

- Roach (your horse): summon by holding Whistle. Gallop with sprint.
- Fast travel: unlock signposts by interacting with them once. Open the world map and click any unlocked signpost.

= Combat Basics

== Core Combat Flow

1. Read the bestiary before the contract
2. Apply the right oil to your silver sword (+50% damage)
3. Cast Quen before engaging (absorbs one hit)
4. Use the right Sign during the fight
5. Dodge and reposition \u2014 never stand still

== Attack Types

- Light Attack \u2014 fast, chains into 3-hit combo. Low stamina. Primary damage source.
- Heavy Attack \u2014 slow, powerful. Breaks guards. High stamina.
- Parry \u2014 blocks attacks. Humanoids only.
- Counter \u2014 tap Parry as attack lands. Staggers briefly.
- Dodge \u2014 quick sidestep. Low stamina. Main defensive move.
- Roll \u2014 invincibility frames. Higher stamina. Use for area attacks.

== The Five Signs

#tbl(cols: 3,
  [*Sign*], [*Effect*], [*Best Against*],
  [Aard], [Telekinetic blast], [Shielded humans, group packs],
  [Igni], [Fire damage, burning], [Necrophages, monster nests],
  [Yrden], [Magic trap, slows], [Wraiths, foglets, fast enemies],
  [Quen], [Damage shield], [Everything],
  [Axii], [Stuns / mind-control], [Humans, dialog checks],
)

#tip-box(body: [Quen is the most important Sign for new players. Keep it active at all times. It absorbs one hit and buys time to react.])

== Combat Tips

1. Never fight fair \u{2014} use bombs, traps, potions, and the environment
2. Dodge toward attacks \u2014 many enemy swings miss if you step inside their range
3. Igni destroys monster nests \u2014 free XP and materials
4. Aard knocks down enemies \u2014 follow with one-hit kill prompt
5. Crossbow one-shots flying enemies and works underwater

= Progression Guide

== How Leveling Works

Experience (XP) comes from:
- Main quests \u2014 100-500 XP
- Side quests \u2014 50-200 XP
- Witcher contracts \u2014 50-150 XP
- Discovering locations \u2014 5-10 XP
- Killing enemies \u2014 1-20 XP

== Skill Trees

- #strong[Combat] \u2014 sword damage, crits, adrenaline gain
- #strong[Signs] \u2014 Sign intensity, alternate Sign modes
- #strong[Alchemy] \u2014 potion duration, toxicity, bomb effectiveness
- #strong[General] \u2014 utility perks, cross-tree bonuses

== Beginner Build (Levels 1\u201315)

Place 3 points into #strong[Muscle Memory] (Combat, fast attack damage), then 3 into #strong[Precise Blows] (Combat, fast attack crit). For survivability, 1 point in #strong[Gourmet] (General) makes food heal for 20 minutes. Finish with 3 in #strong[Exploding Shield] (Signs).

== Gear Progression

1. White Orchard (levels 1-6) \u2014 loot everything, buy Temerian armor
2. Velen / Novigrad (levels 6-18) \u2014 start Witcher gear scavenger hunts (Griffin)
3. Skellige (levels 18-30) \u2014 upgrade to Cat or Bear School gear
4. Endgame (levels 30+) \u2014 enhanced, superior, mastercrafted witcher gear

== Mutagens

- Red \u2014 +Attack Power
- Green \u2014 +Alchemy bonuses
- Blue \u2014 +Sign Intensity

Slot 3 same-color skills adjacent to a matching mutagen for a 3x multiplier. Upgrade 3 of the same type to Greater versions for stronger effects.

= Difficulty Selection

#tbl(cols: 2,
  [*Difficulty*], [*Description*],
  [Just the Story], [Very easy, generous auto-regen],
  [Sword and Story], [Moderate. Recommended for first-time players.],
  [Blood and Broken Bones], [Challenging. Enemies deal more damage.],
  [Death March], [Maximum difficulty. No auto-regen. For veterans.],
)

// ================================================================
// WAVE 1: A WITCHER'S JOURNEY
// ================================================================
#wave-header(num: 1, wave-title: "A Witcher's Journey", wave-sub: "Enhanced Graphics & Content \u{2014} For Experienced Players")

#tip-box(body: [This wave adds visual enhancements and new content. You should be comfortable with the base game's mechanics before installing Wave 1 mods.])

= Upgrading to Wave 1

1. Create a new Mod Manager profile: "Only Monsters Remain \u{2014} Wave 1"
2. Copy your Wave 0 mods to the new profile
3. Install Wave 1 mods (listed below)
4. Run Script Merger
5. Verify load order against the Reference section

#info-box(ititle: "Performance Note", body: [
  Wave 1 includes graphics mods. If you experience frame rate drops, disable the most demanding mods first (lighting overhauls, HD texture packs) rather than lowering in-game settings significantly.
])

= Modlist \u{2014} Wave 1

All Wave 0 mods plus graphics, content, and enhanced UI mods:

== Graphics & Visuals

#mod-card(
  name: "HD Reworked Project NextGen Edition",
  url: "https://www.nexusmods.com/witcher3/mods/9963",
  author: "HalkHogan",
  category: "Graphics",
  version: "20.0-fixed",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[4K texture and asset overhaul of terrain, water, foliage, and meshes. CDPR integrated an older version into the base Next-Gen update; this standalone edition goes far beyond it. Installs to the game root via its installer.]

#mod-card(
  name: "Characters Reworked Project",
  url: "https://www.nexusmods.com/witcher3/mods/7840",
  author: "cnfilmm",
  category: "Graphics",
  version: "4.0",
  wave: "1",
  dependencies: ("Hearts of Stone", "Blood and Wine"),
  mechanic-impact: none,
)[4K face/skin textures and normal maps for 100+ characters across the main game and both expansions. Complements HD Reworked Project.]

#mod-card(
  name: "HD Monsters Reworked (HDMR)",
  url: "https://www.nexusmods.com/witcher3/mods/3580",
  author: "Denroth",
  category: "Graphics",
  version: "5.0 Next Gen",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[High-resolution textures and meshes for every monster. Install the Part 1 + Part 2 + LOD Optimization files.]

#mod-card(
  name: "HD Animals Reworked (HDAR)",
  url: "https://www.nexusmods.com/witcher3/mods/5405",
  author: "Denroth",
  category: "Graphics",
  version: "3.1",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[High-resolution wildlife textures. Companion to HD Monsters Reworked.]

#mod-card(
  name: "Meadows Remastered - A Cross-Gen Grass Overhaul",
  url: "https://www.nexusmods.com/witcher3/mods/11762",
  author: "Maidenfan724",
  category: "Graphics",
  version: "1.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Replaces nearly all grass and vegetation textures across every region, including Toussaint. Standalone \u{2014} do not combine with any other grass overhaul.]

#mod-card(
  name: "UHD Oaks Redux",
  url: "https://www.nexusmods.com/witcher3/mods/8013",
  author: "Ridog8 & lufusol",
  category: "Graphics",
  version: "1.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Remastered bark and moss textures for all oak trees.]

#mod-card(
  name: "New Clouds",
  url: "https://www.nexusmods.com/witcher3/mods/3315",
  author: "Hyadum27",
  category: "Graphics",
  version: "3.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Higher-quality cloud textures. Texture-only, no scripts.]

#mod-card(
  name: "Promotional Atmosphere Lighting Mod (PALM)",
  url: "https://www.nexusmods.com/witcher3/mods/10322",
  author: "BoneDoctor21",
  category: "Graphics",
  version: "2.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Restores the pre-release/E3 promotional art style, built for Next-Gen. Use only one lighting mod \u{2014} classic lighting overhauls (STLM, Phoenix Lighting, Wiedzmin) are broken on 4.04.]

#mod-card(
  name: "True Rain",
  url: "https://www.nexusmods.com/witcher3/mods/11603",
  author: "Jaxonic",
  category: "Graphics",
  version: "6",
  wave: "1",
  dependencies: ("DirectX 12",),
  mechanic-impact: none,
)[Rain rebuilt from scratch with real-time refraction \u{2014} torchlight scatters through raindrops. Requires DX12. Do not combine with other rain mods.]

#mod-card(
  name: "Improved Sign Effects Next Gen",
  url: "https://www.nexusmods.com/witcher3/mods/7369",
  author: "lacmac & Lunayah",
  category: "Graphics",
  version: "4.01",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Visual overhaul of all Sign effects for the Next-Gen engine. Install the Next-Gen file, not the classic one. Script mod \u{2014} run Script Merger.]

#mod-card(
  name: "No Dirty Lens Effect",
  url: "https://www.nexusmods.com/witcher3/mods/347",
  author: "RumenWest",
  category: "Graphics",
  version: "1.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Removes the lens-dirt overlay from the camera. Texture-only.]

== Content

#mod-card(
  name: "Tales of The Witcher - Cintra",
  url: "https://www.nexusmods.com/witcher3/mods/9745",
  author: "Gerwant",
  category: "Content",
  version: "0.6a (Early Access)",
  wave: "1",
  dependencies: (),
  mechanic-impact: "Standalone world \u{2014} new region, quests, and economy",
)[Expansion-sized standalone world in the Kingdom of Cintra, set long before the books and games. Won 2nd place in CDPR's official REDkit Modding Contest. Early Access \u{2014} new content is still being added.]

#mod-card(
  name: "A Witcher Can Hide Another",
  url: "https://www.nexusmods.com/witcher3/mods/9453",
  author: "nikich340, lindrole, SieeleLushen, Culorin, glassfish777",
  category: "Content",
  version: "1.1.1",
  wave: "1",
  dependencies: (),
  mechanic-impact: "New playable character, new mechanics, multiple endings",
)[Won 1st place in CDPR's REDkit Modding Contest. Fully voiced questline with multiple endings; you play a brand-new character to rescue Geralt. Recommended level 40+. Starts at a noticeboard in Novigrad.]

#mod-card(
  name: "The Spider and The Wolf",
  url: "https://www.nexusmods.com/witcher3/mods/9803",
  author: "Dwhyx & Beoronick",
  category: "Content",
  version: "2.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: "2+ hours of quests, choices and endings",
)[Two hours of interconnected quests in Velen: a dark conspiracy within the Order of the Flaming Rose. Custom cinematics, multiple choices, reimagined boss fights. Recommended level ~17. Play on a regular new game (first quest has a looting bug on NG+ saves).]

#mod-card(
  name: "Impostor Community DLC",
  url: "https://www.nexusmods.com/witcher3/mods/9812",
  author: "WildXipster",
  category: "Content",
  version: "1.0",
  wave: "1",
  dependencies: ("Hearts of Stone", "Blood and Wine"),
  mechanic-impact: "3 quests, 2 new boss encounters",
)[DLC-quality storyline of 3 quests (~3 hours) plus 2 new boss encounters. Starts by talking to the armor merchant in Oxenfurt.]

#mod-card(
  name: "The Great Arena - Shadow of Lawlessness",
  url: "https://www.nexusmods.com/witcher3/mods/9554",
  author: "Drunk_Steep",
  category: "Content",
  version: "1.2.1",
  wave: "1",
  dependencies: (),
  mechanic-impact: "30 escalating arena fights with boss rounds",
)[1.5 hours of new arena combat near Rogne in Skellige: 30 escalating fights with boss rounds, unique rewards, and a debt-driven storyline.]

== UI & Quality of Life

#mod-card(
  name: "All Quest Objectives On Map",
  url: "https://www.nexusmods.com/witcher3/mods/943",
  author: "Wolfmark",
  category: "UI",
  version: "4.03.13",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Shows every active quest objective on the map at once. Script mod \u{2014} run Script Merger.]

#mod-card(
  name: "Upscaled UI - HUD Elements (Next-Gen)",
  url: "https://www.nexusmods.com/witcher3/mods/9001",
  author: "Tinnaib",
  category: "UI",
  version: "1.2",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Upscaled HUD textures so health bars, icons, and menus stay sharp on 1440p/4K displays. Texture-only. Do not combine with mods that alter HUD .redswf files.]

#mod-card(
  name: "Better Torches Next-Gen",
  url: "https://www.nexusmods.com/witcher3/mods/7186",
  author: "Phaz42",
  category: "QoL",
  version: "4.4.0",
  wave: "1",
  dependencies: (),
  mechanic-impact: none,
)[Ride Roach, cast Signs, attack, sail, block, and climb while holding a torch. Script mod \u{2014} run Script Merger.]

= Advanced Strategy

== Build Archetypes

#strong[Combat-Focused] \u2014 Maximize fast attack damage, crit chance, crit damage. Use adrenaline for finishers. Best for active swordplay.

#strong[Sign-Focused] \u2014 Maximize Sign intensity to control the battlefield. Alternate Sign modes (Yrden turret, Igni stream). Best for tactical players.

#strong[Alchemy-Focused] \u2014 Maximize toxicity to run multiple decoctions for passive bonuses. Best for preparative players.

== Hybrid Builds

#strong[Combat + Alchemy (Euphoria)] \u2014 Euphoria mutation converts toxicity into attack power and Sign intensity. With 3+ decoctions, this is the strongest build in the game.

#strong[Sign + Combat (Piercing Cold)] \u2014 Aard freezes enemies solid for instant kills. Combine with sword damage against frozen enemies.

#strong[Alchemy + Signs (Conductors of Magic)] \u2014 Sign intensity scales with sword damage. Alchemy-enhanced swords make Signs hit harder than pure Sign builds.

== Stat Priority

#tbl(cols: 4,
  [*Build*], [*1st Priority*], [*2nd Priority*], [*3rd Priority*],
  [Combat Sword], [Attack Power], [Crit Chance], [Crit Damage],
  [Combat Whirl], [Stamina Regen], [Attack Power], [Adrenaline Gain],
  [Signs], [Sign Intensity], [Stamina Regen], [Quen / Alternate],
  [Alchemy Euphoria], [Toxicity], [Decoction Duration], [Bomb Radius],
)

= Advanced Combat

== Enemy Weaknesses

#strong[Necrophages] (drowners, ghouls, rotfiends) \u2014 Weak to fire (Igni) and Necrophage oil. Yrden slows them. Their attacks are telegraphed.

#strong[Specters] (noonwraiths, nightwraiths) \u2014 Weak to Moon Dust bombs and Specter oil. Yrden makes them tangible. Fight during the day.

#strong[Ogroids] (trolls, golems, gargoyles) \u2014 Weak to Northern Wind bombs and Ogroid oil. Aard interrupts their heavy swings.

#strong[Beasts] (wolves, bears, werewolves) \u2014 Weak to Grapeshot and Beast oil. Axii stuns them. Werewolves regenerate \u2014 use Moon Dust or Igni.

#strong[Draconids] (wyverns, forktails, basilisks) \u2014 Weak to Draconid oil. Crossbow shots knock them out of the sky.

#strong[Elementals] (golems, elementals, ice giants) \u2014 Weak to Elementa oil. Igni deals bonus damage. Dodge, don't parry.

== Oils

#tbl(cols: 2,
  [*Oil*], [*Enemy Type*],
  [Beast Oil], [Wolves, bears, panthers, werewolves],
  [Necrophage Oil], [Drowners, ghouls, rotfiends, wraiths],
  [Elementa Oil], [Golems, elementals, ice giants],
  [Draconid Oil], [Wyverns, forktails, basilisks],
  [Vampire Oil], [Ekimmaras, katakans, bruxae],
  [Specter Oil], [Noonwraiths, nightwraiths, plagues],
  [Hanged Man's Venom], [Humans],
)

== Bombs

- Grapeshot \u2014 physical damage, staggers. All-purpose.
- Northern Wind \u2014 freezes enemies solid for instant kills.
- Dancing Star \u2014 fire damage, burning. Good against necrophages.
- Moon Dust \u2014 prevents specter phasing. Essential for wraiths.
- Dimeritium Bomb \u2014 disables magic enemies.
- Samum \u2014 stuns and blinds. Crowd control.
- Dragon's Dream \u2014 flammable gas + Igni = massive explosion.

== Advanced Techniques

- Counter \u2014 tap parry just as enemy attack lands. Staggers humanoids.
- Rend (Heavy skill) \u2014 hold heavy attack to charge. Armor-piercing.
- Whirl (Light skill) \u2014 hold light attack to spin. Hits multiple enemies.
- Essential potions: Swallow (heal), Thunderbolt (+attack), Cat (night vision), White Raffard's (instant heal), Maribor Forest (adrenaline), White Honey (clear toxicity).

= Gear & Crafting

== Witcher Gear Sets

#tbl(cols: 4,
  [*School*], [*Weight*], [*Primary Bonus*], [*Best For*],
  [Griffin], [Medium], [+Sign Intensity], [Sign builds],
  [Cat (Feline)], [Light], [+Attack Power, +Crit], [Combat builds],
  [Bear (Ursine)], [Heavy], [+Adrenaline, +Defense], [Tank builds],
  [Wolf], [Medium], [+Mixed stats], [Hybrid builds],
  [Viper], [Light], [+Poison immunity], [Story / NG+],
  [Manticore], [Medium], [+Alchemy bonuses], [Alchemy builds],
)

Diagrams found via Scavenger Hunt quests. Buy maps from blacksmiths and armorers.

== Grandmaster Crafting (Blood and Wine)

3-piece and 6-piece set bonuses at the Grandmaster Smith in Beauclair:
- Griffin: +40% Yrden size / Cast Signs while dodging
- Feline: 20% bleed on crit / +20% attack power after kill
- Ursine: 15% damage reduction / Adrenaline not consumed on hit
- Wolf: +25% crit damage / +25% bomb damage
- Manticore: +10% crit chance / +100% bomb damage

== Runewords (Hearts of Stone)

Unlock at the Runewright in Upper Novigrad (35,000 crowns for all three tiers).

- Levity \u2014 heavy armor counts as light
- Severance \u2014 +2 range to Whirl and Rend
- Preservation \u2014 gear never degrades
- Invigoration \u2014 over-healing increases damage
- Prolongation \u2014 potions extend on kill
- Entanglement \u2014 Yrden traps follow you

= Gwent Guide

== Rules

Gwent is played over three rounds. Play one card per turn or pass. Total strength on your board wins the round. Win 2 of 3 to win the match.

== Factions

#tbl(cols: 3,
  [*Faction*], [*Strength*], [*Weakness*],
  [Northern Realms], [Card draw from wins], [Low individual strength],
  [Nilfgaard], [Spy manipulation], [Complex synergy],
  [Scoia'tael], [Ambush, pass first], [Low base strength],
  [Monsters], [Swarm, cloning], [Weather vulnerable],
  [Skellige], [Graveyard synergy], [Weak in round 3],
)

== Deck Building

1. Minimum 22 unit cards \u2014 remove weakest first
2. Include spies (draw 2 cards) for card advantage
3. Include decoy to reuse medics or spies
4. Include scorch and biting frost as counters
5. Hero cards (gold border) are immune to scorch and weather

= Exploration

== The ? System

Discoverable locations include: Places of Power (free skill points), hidden treasures (relic gear), monster nests (destroy with Igni), abandoned sites, and smuggler's caches.

== Places of Power

#tbl(cols: 3,
  [*Region*], [*Count*], [*Total Skill Points*],
  [White Orchard], [6], [6],
  [Velen], [15], [15],
  [Novigrad], [5], [5],
  [Skellige], [18], [18],
  [Toussaint (BoW)], [5], [5],
)

Fully explore White Orchard before leaving \u2014 it becomes partially inaccessible.

// ================================================================
// WAVE 2: MASTER WITCHER
// ================================================================
#wave-header(num: 2, wave-title: "Master Witcher", wave-sub: "Mechanics Overhauls \u{2014} For Veteran Players")

#tip-box(body: [Wave 2 introduces gameplay overhauls. Only install if you have completed the main game and both expansions at least once.])

= Upgrading to Wave 2

1. Create a new Mod Manager profile: "Only Monsters Remain \u{2014} Wave 2"
2. Copy Wave 1 mods to the new profile
3. Install Wave 2 mods (listed below)
4. Run Script Merger
5. Start a New Game+ or fresh save

= Modlist \u{2014} Wave 2

All previous mods plus mechanics overhauls and advanced gameplay mods:

#mod-card(
  name: "Eternal Hunt",
  url: "https://www.nexusmods.com/witcher3/mods/8449",
  author: "apokryphos",
  category: "Overhaul",
  version: "7.22",
  wave: "2",
  dependencies: ("Hearts of Stone", "Blood and Wine"),
  mechanic-impact: "Combat, stamina/posture, economy of combat, 40+ new encounters",
)[Massive combat and content overhaul: reworked stamina/posture and parry windows, lethal damage rebalance, new dodges and finishers, 40+ new encounters and bosses, real-time meditation, weather, gear durability, and a fear system. Not for first playthroughs. Designed to pair with Spectre.]

#mod-card(
  name: "Spectre",
  url: "https://www.nexusmods.com/witcher3/mods/9657",
  author: "apokryphos",
  category: "Overhaul",
  version: "0.87",
  wave: "2",
  dependencies: ("Hearts of Stone", "Blood and Wine", "Eternal Hunt (recommended)"),
  mechanic-impact: "Economy, alchemy, inventory weight, crafting",
)[Economy, alchemy, and inventory overhaul built on the design concepts of Ghost Mode and the Alchemy mod: scarce resources, meaningful carry weight, less gold inflation, more consequential crafting. Designed to be used with Eternal Hunt \u{2014} without it the game becomes relatively easy. Must start a new game.]

#mod-card(
  name: "SCAAR - Smooth Combat And Animations Redux",
  url: "https://www.nexusmods.com/witcher3/mods/5800",
  author: "WolvenWorkshop",
  category: "Combat",
  version: "2.2.4",
  wave: "2",
  dependencies: (),
  mechanic-impact: "Combat and movement animations only",
)[Replaces Geralt's combat and movement animations with fluid, responsive sets (four animation packages). Pure feel layer \u{2014} does not rebalance stats. Optional; install DLC-style files into the dlc/ folder.]

#mod-card(
  name: "Stronger Monster Status Effects",
  url: "https://www.nexusmods.com/witcher3/mods/3883",
  author: "Partoutatix, Akatoshka7, Flash_in_the_flesh",
  category: "Difficulty",
  version: "5.4.2",
  wave: "2",
  dependencies: (),
  mechanic-impact: "Monster-inflicted status effects (poison, bleed, burning, stun)",
)[Monsters now inflict the status effects their bestiary entries describe: poison, bleed, burning, blindness, and stun. Makes monster fights genuinely dangerous without touching player power.]

== Alternatives Not Included

#tip-box(body: [Combat Redux (#8515), Blood And Steel (#9674), and Lore-Friendly Economy (#7691) deliver similar effects but must not be stacked with the picks above. W3EE Redux \u{2014} the iconic total overhaul \u{2014} is excluded because its distribution is no longer reliably hosted on Nexus Mods.])

= Roleplay Background

== The Legend of the White Wolf

You've walked the Path for decades. The Trial of the Grasses is a distant memory. You've seen the best and worst of the Continent. Now the monsters have adapted \u{2014} they're smarter, faster, deadlier. Old tactics fail. New ones must be forged.

- #strong[School]: Your choice (Wolf, Cat, Bear, Griffin, Viper, Manticore)
- #strong[Age]: Older, wiser, slower but more precise
- #strong[Motto]: "Monsters come in many shapes. The worst ones wear human faces."

== Suggested Playthrough Rules

1. Read the bestiary before every contract
2. Apply the correct oil before every fight
3. Only fast travel between regions (signpost to signpost)
4. Meditate only at inns, taverns, or your own bed
5. Wear your School's witcher gear
6. Complete contracts before main quests
7. Use each Sign situationally \u2014 no spamming

= Mastery Mechanics

== Combat Changes

- Damage rebalance \u2014 fights are shorter and more lethal
- Stamina matters \u2014 stamina and posture are reworked; attack and dodge spam leaves you exposed
- Parry windows tighten \u2014 reworked parry and active-parry windows demand precise timing

== Economy Changes

- Reduced loot \u2014 gold is scarcer and junk sells for little; earn coin through contracts, not looting
- Crafting costs more \u2014 hunt specific monsters for rare parts
- Weight matters \u2014 carry less, choose carefully

== Adaptation Guide

1. Prepare thoroughly \u2014 read the bestiary for every contract
2. Use everything \u2014 oils, bombs, potions, decoctions, terrain
3. Avoid fair fights \u2014 use traps, environmental hazards, choke points
4. Invest in alchemy \u2014 dramatically more valuable at higher difficulty
5. Position, don't dodge \u2014 stamina is precious

= Specialized Builds

#strong[Euphoria Alchemy Tank] \u2014 Mutation: Euphoria. Gear: Manticore. Run 3-4 decoctions. Rend for damage. Priority: Toxicity > Attack Power > Vitality.

#strong[Piercing Cold Signs] \u2014 Mutation: Piercing Cold. Gear: Griffin. Freeze with Aard, execute. Igni stream, Yrden turret. Priority: Sign Intensity > Stamina Regen.

#strong[Deadly Precision Critical] \u2014 Mutation: Metamorphosis. Gear: Feline. Glass cannon, Whirl, crits. Apply status effects for random buffs. Priority: Crit Chance > Crit Damage > Attack Power.

#strong[Conductors of Magic Hybrid] \u2014 Mutation: Conductors of Magic. Gear: Wolf. Alternate Signs and sword. Adapt to any enemy.

== Mutation Unlock Guide

- Euphoria \u2014 Blood and Wine main quest ("The Wine Wars")
- Piercing Cold \u2014 Blood and Wine side quest (explore unseen area)
- Conductors of Magic \u2014 Blood and Wine main quest progression
- Metamorphosis \u2014 Blood and Wine side quest (defeat unseen elder)

= Endgame & NG+

== When to Start NG+

Complete the main quest (level 30+). Finish both expansions first \u2014 mutations are valuable in NG+. Recommended: level 50+.

#strong[Carries over:] Level, skills, mutations, formulas (not crafted potions), Gwent cards, diagrams, gold, inventory.

#strong[Resets:] Quest progress, world state, discoveries, signposts.

== Blood and Wine Endgame

- Hanse bases \u2014 repeatable combat, great for leveling
- Grandmaster crafting \u2014 tier 6 witcher gear
- Mutation system \u2014 12 unique mutations
- Corvo Bianco \u2014 renovate your vineyard

== Hearts of Stone Endgame

- Runewright \u2014 unlock all 3 tiers (35,000 crowns)
- Ofieri quests \u2014 unique gear and rewards
- Legendary items \u2014 Iris (steel sword), Viper School gear

// ================================================================
// REFERENCE
// ================================================================
#pagebreak()
= Reference

== Complete Mod Reference

#tbl(cols: 6,
  [*\#*], [*Mod*], [*Author*], [*Category*], [*Wave*], [*Version*],
  [0], [#link("https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases")[Ultimate ASI Loader]], [ThirteenAG], [Utilities], [0], [x64],
  [1], [#link("https://www.nexusmods.com/witcher3/mods/3711")[Mod Limit Adjuster]], [LHSQ & sedmelluq], [Utilities], [0], [1.0],
  [2], [#link("https://www.nexusmods.com/witcher3/mods/484")[Script Merger]], [AnotherSymbiote], [Utilities], [0], [0.6.4],
  [3], [#link("https://www.nexusmods.com/witcher3/mods/2110")[Community Patch - Shared Imports]], [rmemr], [Utilities], [0], [v0.6],
  [4], [#link("https://www.nexusmods.com/witcher3/mods/3650")[Community Patch - Menu Strings]], [wghost81], [Utilities], [0], [1.0],
  [5], [#link("https://www.nexusmods.com/witcher3/mods/2109")[Community Patch - Bootstrap and Utilities]], [rmemr], [Utilities], [0], [0.5-NG],
  [6], [#link("https://www.nexusmods.com/witcher3/mods/11260")[Brothers In Arms - Ultimate Edition]], [MerseyRockoff et al.], [Bug Fixes], [0], [3.1.2],
  [7], [#link("https://www.nexusmods.com/witcher3/mods/12271")[Clever Main Menu (Redux)]], [RovanFrost], [UI], [0], [1.1],
  [8], [#link("https://www.nexusmods.com/witcher3/mods/9963")[HD Reworked Project NextGen Edition]], [HalkHogan], [Graphics], [1], [20.0-fixed],
  [9], [#link("https://www.nexusmods.com/witcher3/mods/7840")[Characters Reworked Project]], [cnfilmm], [Graphics], [1], [4.0],
  [10], [#link("https://www.nexusmods.com/witcher3/mods/3580")[HD Monsters Reworked (HDMR)]], [Denroth], [Graphics], [1], [5.0 NG],
  [11], [#link("https://www.nexusmods.com/witcher3/mods/5405")[HD Animals Reworked (HDAR)]], [Denroth], [Graphics], [1], [3.1],
  [12], [#link("https://www.nexusmods.com/witcher3/mods/11762")[Meadows Remastered]], [Maidenfan724], [Graphics], [1], [1.0],
  [13], [#link("https://www.nexusmods.com/witcher3/mods/8013")[UHD Oaks Redux]], [Ridog8 & lufusol], [Graphics], [1], [1.0],
  [14], [#link("https://www.nexusmods.com/witcher3/mods/3315")[New Clouds]], [Hyadum27], [Graphics], [1], [3.0],
  [15], [#link("https://www.nexusmods.com/witcher3/mods/10322")[Promotional Atmosphere Lighting Mod (PALM)]], [BoneDoctor21], [Graphics], [1], [2.0],
  [16], [#link("https://www.nexusmods.com/witcher3/mods/11603")[True Rain]], [Jaxonic], [Graphics], [1], [6],
  [17], [#link("https://www.nexusmods.com/witcher3/mods/7369")[Improved Sign Effects Next Gen]], [lacmac & Lunayah], [Graphics], [1], [4.01],
  [18], [#link("https://www.nexusmods.com/witcher3/mods/347")[No Dirty Lens Effect]], [RumenWest], [Graphics], [1], [1.0],
  [19], [#link("https://www.nexusmods.com/witcher3/mods/9745")[Tales of The Witcher - Cintra]], [Gerwant], [Content], [1], [0.6a],
  [20], [#link("https://www.nexusmods.com/witcher3/mods/9453")[A Witcher Can Hide Another]], [nikich340 et al.], [Content], [1], [1.1.1],
  [21], [#link("https://www.nexusmods.com/witcher3/mods/9803")[The Spider and The Wolf]], [Dwhyx & Beoronick], [Content], [1], [2.0],
  [22], [#link("https://www.nexusmods.com/witcher3/mods/9812")[Impostor Community DLC]], [WildXipster], [Content], [1], [1.0],
  [23], [#link("https://www.nexusmods.com/witcher3/mods/9554")[The Great Arena - Shadow of Lawlessness]], [Drunk_Steep], [Content], [1], [1.2.1],
  [24], [#link("https://www.nexusmods.com/witcher3/mods/943")[All Quest Objectives On Map]], [Wolfmark], [UI], [1], [4.03.13],
  [25], [#link("https://www.nexusmods.com/witcher3/mods/9001")[Upscaled UI - HUD Elements]], [Tinnaib], [UI], [1], [1.2],
  [26], [#link("https://www.nexusmods.com/witcher3/mods/7186")[Better Torches Next-Gen]], [Phaz42], [QoL], [1], [4.4.0],
  [27], [#link("https://www.nexusmods.com/witcher3/mods/8449")[Eternal Hunt]], [apokryphos], [Overhaul], [2], [7.22],
  [28], [#link("https://www.nexusmods.com/witcher3/mods/9657")[Spectre]], [apokryphos], [Overhaul], [2], [0.87],
  [29], [#link("https://www.nexusmods.com/witcher3/mods/5800")[SCAAR - Smooth Combat And Animations Redux]], [WolvenWorkshop], [Combat], [2], [2.2.4],
  [30], [#link("https://www.nexusmods.com/witcher3/mods/3883")[Stronger Monster Status Effects]], [Partoutatix, Akatoshka7, Flash_in_the_flesh], [Difficulty], [2], [5.4.2],
)

== Load Order Guidelines

Install mods in this general order:
1. Core frameworks and libraries
2. Graphics and textures
3. UI and HUD changes
4. Gameplay tweaks
5. Content mods
6. Overhauls

== Mod Manager Guide

See the full guide at: #link("https://www.nexusmods.com/witcher3/mods/2678")[Witcher 3 Mod Manager].

Features: profile management, script merging, load order control, mod deactivation.

== Troubleshooting

#tbl(cols: 2,
  [*Problem*], [*Solution*],
  [Game crashes on launch], [Run Script Merger. Check dependencies.],
  [Script compilation errors], [Delete `mod0000_MergedFiles/` and re-merge.],
  [Missing textures], [Reinstall the texture mod. Verify game files.],
  [Low FPS after Wave 1], [Disable demanding mods first.],
  [Mod not showing in manager], [Check archive. Try manual install.],
  [Profiles not switching], [Restart Mod Manager. Confirm profile selected.],
)
