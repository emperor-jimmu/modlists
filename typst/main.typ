#import "theme.typ": *

#set page(
  paper: "a4",
  margin: (top: 1.5cm, bottom: 1.5cm, left: 2cm, right: 2cm),
  header: align(right + top, text(size: 8pt, fill: c.muted)[Only Monsters Remain]),
  footer: align(center + bottom, text(size: 8pt, fill: c.muted)[#context(counter(page).display("1"))]),
  numbering: "1",
)

#set text(font: c.body-font, size: 10pt, fill: c.body)
#set par(justify: true, leading: 0.7em)
#show heading: it => {
  set text(font: c.heading-font, weight: "bold", fill: c.heading)
  it
}

#title-page(
  ttl: "Only Monsters Remain",
  sbtl: "A Curated Witcher 3 Modlist & Game Guide",
  logo-path: "logo.png",
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

Before modding, you need a clean installation of The Witcher 3. Install #link("https://www.gog.com")[GOG], #link("https://store.steampowered.com")[Steam], or #link("https://store.epicgames.com")[Epic Games Store] and download The Witcher 3: Wild Hunt \u{2014} Game of the Year Edition.

Verify your game version is #strong[4.04] (released July 19, 2023). On Steam, right-click the game in your library, go to Properties \u{2192} Betas, and select "4.04" from the dropdown. GOG Galaxy and Epic auto-update to the latest version.

Launch the game once to generate configuration files in your documents folder. This creates the `dx12filelist.txt` and `dx11filelist.txt` that mod managers use to detect installed mods.

== Mod Manager Setup

#info-box(ititle: "The Witcher 3 Mod Manager", body: [
  Download from #link("https://www.nexusmods.com/witcher3/mods/2678")[Nexus Mods (ID: 2678)]. This is the recommended tool for this modlist.
])

Step-by-step setup:
1. Launch the Mod Manager
2. Navigate to Settings and set your game directory (where `witcher3.exe` lives)
3. The Mod Manager scans your `Mods/` folder and detects any existing mods
4. Click Profiles \u{2192} New Profile and name it #strong["Only Monsters Remain \u{2014} Wave 0"]
5. Enable #strong[Script Merger] integration in settings
6. Enable #strong[Mod Deactivation] for easy profile switching

The Mod Manager keeps each profile's mod list separate, so you can switch between waves without reinstalling.

== Merged Files & Load Order

The #strong[Script Merger] utility (bundled with the Mod Manager) resolves conflicts when two mods edit the same game file. After installing all mods for a wave:
1. Click the #strong[Script Merger] button in the Mod Manager
2. Accept the auto-merge suggestions
3. Apply the merged output

You should rarely need to manually resolve conflicts with this modlist, as all mods have been tested for compatibility.

= Modlist \u{2014} Wave 0

The mods listed below are UI and quality-of-life improvements only. They make the game more comfortable to play without altering combat, progression, economy, or world mechanics.

<!-- Mod entries will be added here once the modlist is finalized. -->

= Beginner's Guide

== Welcome to the Continent

You are #strong[Geralt of Rivia], a witcher \u{2014} a genetically enhanced monster hunter for hire. The world you inhabit is at war. The Nilfgaardian Empire has invaded the Northern Kingdoms, and peasants, soldiers, and monsters alike struggle to survive.

Your goal: find #strong[Ciri], your adopted daughter, who is being pursued by the Wild Hunt, a spectral cavalcade from another world.

== Core Gameplay Loop

The game follows a simple rhythm:

1. #strong[Explore] the world \u{2014} White Orchard, Velen, Novigrad, Skellige, and Toussaint
2. #strong[Take contracts] \u{2014} help villagers by slaying monsters
3. #strong[Complete quests] \u{2014} main story, side quests, witcher contracts, treasure hunts
4. #strong[Level up] \u{2014} earn experience, unlock skills, craft better gear
5. #strong[Prepare] \u{2014} read the bestiary, apply oils, brew potions before fights

#tip-box(body: [The most important habit: save often. Use quicksave (F5) before every contract, and keep manual saves before major story decisions.])

== Understanding the HUD

- #strong[Vitality] (top-left red bar) \u{2014} your health. Zero means death.
- #strong[Stamina] (top-left yellow bar, below vitality) \u{2014} used for Signs and dodging. Recharges quickly.
- #strong[Quickslots] (bottom center) \u{2014} potions, bombs, crossbow bolts. Assign via inventory.
- #strong[Minimap] (top-right) \u{2014} shows nearby points of interest, quest markers, and enemies.
- #strong[Quest tracker] (upper-left) \u{2014} your active quest's objective and distance.
- #strong[Toxicity] (top-left green bar, appears after using potions) \u{2014} too high and you take damage.

= Controls & UI

== Keyboard & Mouse Layout

| #strong[Action] | #strong[Key] |
|--- | --- |
| Move | W / A / S / D |
| Sprint | Shift (hold) |
| Dodge | Alt + direction |
| Roll | Double-tap direction or Alt + double-tap |
| Light Attack | Left mouse button |
| Heavy Attack | Right mouse button (hold) |
| Cast Sign | Q |
| Draw / Sheathe Steel Sword | 1 |
| Draw / Sheathe Silver Sword | 2 |
| Use Quickslot | Z / X / C / V |
| Open Inventory | I |
| Open Character / Skills | C |
| Open Map | M |
| Open Journal / Bestiary | J |
| Open Alchemy | B |
| Meditation | Ctrl |
| Quick Save | F5 |
| Quick Load | F9 |

== Controller Layout (Xbox / PlayStation)

| #strong[Action] | #strong[Button] |
|--- | --- |
| Move | Left stick |
| Sprint | Left stick (click) |
| Light Attack | RB / R1 |
| Heavy Attack | RT / R2 |
| Cast Sign | LB / L1 + face button |
| Dodge | A / Cross + direction |
| Roll | A / Cross + double-tap direction |
| Parry | LB / L1 (tap before enemy hits) |
| Open Inventory | Back / Select |
| Open Map | Start / Options |
| Meditation | Hold Start / Options |

== Meditation Mechanics

Press Ctrl (or hold Start on controller) to meditate. Meditation:
- #strong[Restores health] on lower difficulties (Not \u201cDeath March\u201d)
- #strong[Advances time] \u2014 useful for waiting until night (some monsters only spawn at night)
- #strong[Refills potions] by consuming one unit of strong alcohol from your inventory (e.g., Dwarven Spirit, Alcohest)

#tip-box(body: [Always carry at least 10 Dwarven Spirit or Alcohest in your inventory. Without them, meditation won't refill your potions.])

= Combat Basics

== Core Combat Flow

Witcher combat is about #strong[preparation and positioning], not just button-mashing. Each fight follows a pattern:

1. #strong[Read the bestiary] before the contract \u2014 know your enemy's weaknesses
2. #strong[Apply the right oil] to your silver sword \u2014 +50% damage against that type
3. #strong[Cast Quen] before engaging \u2014 absorbs one hit
4. #strong[Use the right Sign] during the fight
5. #strong[Dodge and reposition] \u2014 don't stand still

== Attack Types

#strong[Light Attack] \u2014 Fast, chains into a 3-hit combo. Low stamina cost. Your primary damage source against most enemies.

#strong[Heavy Attack] \u2014 Slow but powerful. Breaks guards and staggers. High stamina cost. Best against single, slow enemies.

#strong[Parry] \u2014 Blocks incoming attacks. Only works against humanoid enemies. Timing is forgiving.

#strong[Counter] \u2014 Tap Parry just as an enemy's attack lands. Staggers them briefly, allowing a follow-up hit. Does not work on most monsters.

#strong[Dodge] \u2014 Quick sidestep. Short distance, low stamina cost. Your main defensive move.
#strong[Roll] \u2014 Long-distance evasion with invincibility frames. Higher stamina cost. Use for large-area attacks.

== The Five Signs

| #strong[Sign] | #strong[Effect] | #strong[Best Against] |
|--- | --- | --- |
| Aard | Telekinetic blast, knocks back | Shielded humans, group packs |
| Igni | Fire damage, burning status | Necrophages, monster nests |
| Yrden | Magic trap, slows enemies | Wraiths, foglets, fast enemies |
| Quen | Protective damage shield | Everything (always useful) |
| Axii | Stuns / mind-control | Humans, conversation checks |

#tip-box(body: [Quen is the most important Sign for new players. Keep it active at all times. It absorbs one hit completely and buys you time to react.])

== Combat Survival Tips

1. #strong[Never fight fair] \u2014 use every tool: bombs, traps, potions, the environment
2. #strong[Dodge toward attacks], not away \u2014 many enemies have forward-reaching swings that miss if you step inside their range
3. #strong[Igni destroys monster nests] \u2014 you get XP and materials
4. #strong[Aard knocks down] \u2014 follow up with a one-hit kill prompt on grounded enemies
5. #strong[The crossbow] \u2014 one-shots flying enemies out of the sky, useful underwater

= Progression Guide

== How Leveling Works

You gain experience (#strong[XP]) from:
- #strong[Main quests] \u2014 largest XP rewards (100\u2013500 XP)
- #strong[Side quests] \u2014 significant XP (50\u2013200 XP)
- #strong[Witcher contracts] \u2014 good XP and coin (50\u2013150 XP)
- #strong[Discovering locations] \u2014 5\u201310 XP per ? cleared
- #strong[Killing enemies] \u2014 minimal XP (1\u201320 XP)

The game uses #strong[level scaling] in a soft sense: quests have recommended levels, and enemies within a few levels of you are fair fights. You can tackle content significantly above your level, but it will be very difficult.

== Skill Trees

There are four skill trees, plus mutations unlocked later:

#strong[Combat Tree] \u2014 Increases sword damage, critical hits, adrenaline gain. The most straightforward tree. Recommended for new players.

#strong[Signs Tree] \u2014 Boosts Sign intensity, unlocks alternate Sign modes (e.g., Yrden turret, Igni stream). Powerful but requires investment.

#strong[Alchemy Tree] \u2014 Extends potion duration, increases toxicity cap, improves bomb effectiveness. Becomes very strong mid-to-late game.

#strong[General Tree] \u2014 Utility perks: +1000 carry weight (Strong Back), passive health regen from food (Gourmet), bonus XP (Trophy Collector).

== Beginner Build (Levels 1\u201315)

Place 3 ability points into #strong[Muscle Memory] (Combat, fast attack damage). Then 3 into #strong[Precise Blows] (Combat, fast attack crit chance). This gives you reliable damage.

For survivability, place 1 point into #strong[Gourmet] (General) \u2014 it makes food regenerate health for 20 minutes instead of 10 seconds, effectively giving you passive healing through most of the early game.

Finish with 3 points into #strong[Exploding Shield] (Signs) to make your Quen shield damage nearby enemies when broken.

== Gear Progression

1. #strong[White Orchard] (levels 1\u20136) \u2014 loot everything, buy the Temerian armor set from the merchant near the inn
2. #strong[Velen / Novigrad] (levels 6\u201318) \u2014 start Witcher gear scavenger hunts (Griffin School gear)
3. #strong[Skellige] (levels 18\u201330) \u2014 upgrade to Cat or Bear School gear
4. #strong[Kaer Morhen and beyond] (levels 30+) \u2014 enhanced, superior, and mastercrafted witcher gear

Always replace gear that is 5+ levels below you. Relic items (orange name) have unique bonuses but are often outclassed by witcher gear of the same level.

== Mutagens

Mutagens are consumable items that provide passive bonuses when slotted:

- #strong[Red mutagen] \u2014 +Attack Power
- #strong[Green mutagen] \u2014 +Alchemy/toxicity-related bonuses
- #strong[Blue mutagen] \u2014 +Sign Intensity

Slot three skills of the same color adjacent to a matching mutagen for a bonus multiplier (e.g., 3 red skills + red mutagen = 3x the mutagen's effect). Upgrade mutagens to Greater versions (3 of the same type) for even stronger effects.

// ================================================================
// WAVE 1: A WITCHER'S JOURNEY
// ================================================================
#wave-header(num: 1, wave-title: "A Witcher's Journey", wave-sub: "Enhanced Graphics & Content \u2014 For Experienced Players")

#tip-box(body: [This wave adds visual enhancements and new content. You should be comfortable with the base game's mechanics before installing Wave 1 mods.])

= Upgrading to Wave 1

1. Open the Mod Manager and create a new profile: #strong["Only Monsters Remain \u2014 Wave 1"]
2. Copy your Wave 0 mods to the new profile
3. Install the Wave 1 mods listed below
4. Run Script Merger to resolve any conflicts
5. Verify load order against the Reference section

#info-box(ititle: "Performance Note", body: [
  Wave 1 includes graphics mods that increase visual fidelity. If you experience frame rate drops, try disabling the most demanding mods first (lighting overhauls, HD texture packs) rather than lowering in-game settings significantly.
])

= Modlist \u2014 Wave 1

All Wave 0 mods plus the following graphics, content, and enhanced UI mods:

<!-- Mod entries will be added here once the modlist is finalized. -->

= Advanced Strategy

== Build Theory Fundamentals

By Wave 1, you should understand the basics. Now it's time to optimize. Every build in The Witcher 3 fits one of three archetypes:

#strong[Combat-Focused:] Maximize fast attack damage, critical hit chance, and critical hit damage. Use adrenaline for powerful finishers. Best for players who enjoy active swordplay.

#strong[Sign-Focused:] Maximize Sign intensity to control the battlefield. Alternate Sign modes offer unique advantages (e.g., Yrden turret for area denial, Igni stream for constant burning). Best for tactical players.

#strong[Alchemy-Focused:] Maximize toxicity to run multiple decoctions simultaneously. Decoctions provide passive bonuses (health regen, damage reduction, stamina regen). Best for players who preparate strategically.

== Hybrid Builds

The most powerful builds in the game combine two trees:

#strong[Combat + Alchemy (Euphoria)] \u2014 The Euphoria mutation converts your toxicity into bonus attack power and Sign intensity. With 3+ decoctions active, you deal massive damage. This is widely considered the strongest build in the game.

#strong[Sign + Combat (Piercing Cold)] \u2014 The Piercing Cold mutation makes Aard freeze enemies solid, allowing instant kills. Combined with sword damage for frozen enemies, this build controls crowds and eliminates threats quickly.

#strong[Alchemy + Signs (Conductors of Magic)] \u2014 This mutation boosts Sign intensity based on your sword's damage. With alchemy enhancing your swords, your Signs hit harder than a pure Sign build.

== Stat Priority Reference

| Build | 1st Priority | 2nd Priority | 3rd Priority |
|--- | --- | --- | --- |
| Combat Sword | Attack Power | Crit Chance | Crit Damage |
| Combat Whirl | Stamina Regen | Attack Power | Adrenaline Gain |
| Signs | Sign Intensity | Stamina Regen | Quen / Alternate |
| Alchemy Euphoria | Toxicity | Decoction Duration | Bomb Radius |

= Advanced Combat

== Enemy Weaknesses in Depth

Every monster type has specific weaknesses. Exploit them:

#strong[Necrophages] (drowners, ghouls, rotfiends, wraiths) \u2014 Weak to fire (Igni) and necrophage oil. Use Yrden to slow them. Their attacks are telegraphed and easy to dodge.

#strong[Specters] (noonwraiths, nightwraiths, plagues) \u2014 Weak to Moon Dust bombs (prevents phasing) and specter oil. Yrden makes them tangible. Fight them during the day to reduce their power.

#strong[Ogroids] (trolls, gargoyles, golems, cyclops) \u2014 Weak to Northern Wind bombs and ogroid oil. Aard interrupts their telegraphed heavy swings. Fight them in open areas where you can kite.

#strong[Beasts] (wolves, bears, panthers, werewolves) \u2014 Weak to Grapeshot bombs and beast oil. Axii stuns them briefly. Werewolves regenerate health \u2014 use Moon Dust or Igni to stop it.

#strong[Draconids] (wyverns, forktails, basilisks, cockatrices) \u2014 Weak to draconid oil. Crossbow shots knock flying draconids to the ground for massive follow-up damage.

#strong[Elementals] (golems, elementals, ice giants) \u2014 Weak to elementa oil. Igni deals bonus damage. Their attacks are slow but hit hard \u2014 dodge, don't parry.

== Alchemy Deep Dive

Oils are applied to your sword before combat and last for 20\u201330 hits. Higher-quality oils (enhanced, superior) last longer and deal more bonus damage. You only need to apply an oil once per fight.

| Oil | Enemy Type |
|--- | --- |
| Beast Oil | Wolves, bears, panthers, werewolves, dogs |
| Necrophage Oil | Drowners, ghouls, rotfiends, wraiths, hags |
| Elementa Oil | Golems, elementals, ice giants |
| Draconid Oil | Wyverns, forktails, basilisks, cockatrices |
| Vampire Oil | Ekimmaras, katakans, bruxae, alp |
| Specter Oil | Noonwraiths, nightwraiths, plagues |
| Hanged Man's Venom | Humans (bonus damage to poisoned) |

Bombs are consumable area-of-effect tools. Craft them in the Alchemy menu:

#strong[Grapeshot] \u2014 Physical damage, staggers. All-purpose.
#strong[Northern Wind] \u2014 Freezes enemies solid. Follow up with a one-hit kill.
#strong[Dancing Star] \u2014 Fire damage, burning. Good against necrophages.
#strong[Moon Dust] \u2014 Prevents specters from phasing. Essential against wraiths.
#strong[Dimeritium Bomb] \u2014 Disables magic and Sign-casting enemies.
#strong[Samum] \u2014 Stuns and blinds. Good for crowd control.
#strong[Dragon's Dream] \u2014 Releases flammable gas. Igni triggers a massive explosion.

= Gear & Crafting

== Witcher Gear Sets

Each School offers a complete armor and weapon set with set bonuses at Grandmaster tier:

| School | Weight | Primary Bonus | Best Build |
|--- | --- | --- | --- |
| Griffin | Medium | +Sign Intensity | Sign builds |
| Cat (Feline) | Light | +Attack Power, +Crit | Combat builds |
| Bear (Ursine) | Heavy | +Adrenaline, +Defense | Tank builds |
| Wolf | Medium | +Mixed stats | Hybrid builds |
| Viper | Light | +Poison immunity | Story / NG+ |
| Manticore | Medium | +Alchemy bonuses | Alchemy builds |

#tip-box(body: [Witcher gear diagrams are found via Scavenger Hunt quests. Buy the maps from blacksmiths and armorers to start these quests.])

== Grandmaster Crafting (Blood and Wine)

The Grandmaster Smith in Beauclair can craft the highest tier of witcher gear. Each set gains two bonuses at 3-piece and 6-piece equipped:

#strong[Griffin 3-pc:] Yrden trap size +40%. #strong[6-pc:] Cast Signs while dodging.
#strong[Feline 3-pc:] 20% chance to bleed on crit. #strong[6-pc:] Attack power +20% for 3s after killing an enemy.
#strong[Ursine 3-pc:] 15% damage reduction. #strong[6-pc:] Adrenaline not consumed when taking damage.
#strong[Wolf 3-pc:] Critical hit damage +25%. #strong[6-pc:] All bombs deal +25% damage.

== Runewords & Glyphwords (Hearts of Stone)

The Runewright in Upper Novigrad can engrave special enchantments onto your gear. Unlocking all three tiers costs 35,000 crowns total.

#strong[Levity] \u2014 Heavy armor counts as Light. Enables Cat School Techniques bonus with heavy armor.
#strong[Severance] \u2014 Increases Whirl and Rend range by 2. Essential for Whirl builds.
#strong[Preservation] \u2014 Your gear never degrades. Saves repair costs.
#strong[Invigoration] \u2014 Healing above max vitality increases damage.
#strong[Prolongation] \u2014 Potion effects extend on kill.
#strong[Entanglement] \u2014 Yrden traps follow you.

= Gwent Guide

== Gwent Rules

Gwent is a two-player card game played over three rounds. Each player draws from a deck of unit cards, special cards (weather, horns, scorch), and hero cards.

- Play one card per turn, or pass to save cards for the next round
- Win 2 out of 3 rounds to win the match
- Total strength on your side of the board wins the round

== Faction Overview

| Faction | Strength | Weakness |
|--- | --- | --- |
| Northern Realms | Card draw from winning rounds | Low individual card strength |
| Nilfgaard | Spy manipulation, high stats | Complex synergy requirements |
| Scoia'tael | Ambush cards, ability to pass first | Low base strength |
| Monsters | Swarm tactics, unit cloning | Weather vulnerable |
| Skellige | Graveyard synergy, round 2 burst | Weak in round 3 |

== Deck Building Principles

1. Minimum 22 unit cards. Remove your weakest units first.
2. Include #strong[spies] (draw 2 cards for opponent). They give card advantage, the most important resource in Gwent.
3. Include #strong[decoy] to reuse your medic or spy.
4. Include #strong[scorch] and #strong[biting frost] as counters.
5. All hero cards (gold border) are immune to scorch and weather. Prioritize them.

= Exploration

== The ? System

Every undiscovered location on the map shows as a white question mark (?). These include:
- #strong[Places of Power] \u2014 grant a free skill point on first use
- #strong[Hidden treasures] \u2014 guarded loot (often relic gear)
- #strong[Monster nests] \u2014 destroy with Igni for XP and materials
- #strong[Abandoned sites] \u2014 clear monsters to restore the village
- #strong[Smuggler's caches] \u2014 floating barrels in water (Skellige especially)

Regions by ? count: Velen (~200+), Skellige (~180), Novigrad (~50), Toussaint (~60), White Orchard (~30).

== Places of Power

Each region has a fixed number of Places of Power. Visit each one on every playthrough for the free skill point:

| Region | Count | Total Skill Points |
|--- | --- | --- |
| White Orchard | 6 | 6 |
| Velen | 15 | 15 |
| Novigrad | 5 | 5 |
| Skellige | 18 | 18 |
| Toussaint (BoW) | 5 | 5 |

// ================================================================
// WAVE 2: MASTER WITCHER
// ================================================================
#wave-header(num: 2, wave-title: "Master Witcher", wave-sub: "Mechanics Overhauls \u2014 For Veteran Players")

#tip-box(body: [Wave 2 introduces gameplay overhauls that fundamentally change how The Witcher 3 plays. Only install this wave if you have completed the main game and both expansions at least once.])

= Upgrading to Wave 2

1. Open the Mod Manager and create a new profile: #strong["Only Monsters Remain \u2014 Wave 2"]
2. Copy your Wave 1 mods to the new profile
3. Install the Wave 2 mods listed below
4. Run Script Merger
5. Start a #strong[New Game+] or a fresh save

= Modlist \u2014 Wave 2

All Wave 0 and Wave 1 mods plus the following mechanics overhauls and advanced gameplay mods:

<!-- Mod entries will be added here once the modlist is finalized. -->

= Roleplay Background

== The Legend of the White Wolf

The stories say a witcher lived who never lost a contract. Who faced down a leshen with nothing but a silver sword and a worn-out Axii sign. Who walked into villages covered in monster blood and walked out with gold in his pocket and a new tale on his lips.

That witcher is you.

You've walked the Path for decades. The Trial of the Grasses is a distant memory, Kaer Morhen a fading postcard. You've seen the best and worst of the Continent: the nobility and the filth, the beauty and the horror, the order and the chaos.

Now the monsters have adapted. They're smarter, faster, deadlier. Old tactics fail. New ones must be forged.

== Character Concept

- #strong[School]: Your choice (Wolf, Cat, Bear, Griffin, Viper, Manticore)
- #strong[Age]: Older, wiser, slower but more precise
- #strong[Motto]: "Monsters come in many shapes. The worst ones wear human faces."
- #strong[Playstyle]: Methodical, prepared, never reckless

== Suggested Playthrough Rules

1. Always read the bestiary before every contract
2. Apply the correct oil before every fight (not during)
3. Never use fast travel except between regions (signpost to signpost)
4. Only meditate at inns, taverns, or your own bed (Corvo Bianco)
5. Wear your chosen School's witcher gear for immersion
6. Complete witcher contracts before main quests
7. Use each Sign situationally \u2014 no spamming Quen

= Mastery Mechanics

== Combat Overhauls

Wave 2's mechanics mods change fundamentals:

#strong[Damage rebalance] \u2014 Enemies hit harder, but so do you. Fights are shorter and more lethal. Rock Paper Scissors-style combat: preparation determines victory, not stat checks.

#strong[Stamina matters] \u2014 Dodging and Sign-casting share a stamina pool. You cannot spam dodge \u2192 Igni \u2192 dodge. Every action must be intentional.

#strong[Parry windows tighten] \u2014 Humanoid enemies feint and vary their timing. Parrying requires reading the enemy's body language, not just reacting to the swing indicator.

== Economy & Survival

#strong[Reduced loot] \u2014 Bandits carry fewer crowns. Merchants have less gold to trade. You must earn your coin through contracts, not by looting every peasant's house.

#strong[Crafting requires more] \u2014 Witcher gear diagrams demand rare monster parts. You must hunt specific monsters for their drops.

#strong[Weight matters] \u2014 Encumbrance is stricter. You cannot carry three full armor sets. Choose what you wear and what you leave behind.

== Adapting to Wave 2

1. Prepare #strong[thoroughly] \u2014 read the bestiary for every contract, no exceptions
2. Use #strong[everything at your disposal] \u2014 oils, bombs, potions, decoctions, terrain
3. #strong[Avoid fair fights] \u2014 use traps, environmental hazards, choke points
4. Invest in #strong[alchemy] \u2014 it becomes dramatically more valuable when fights are lethal
5. #strong[Position, don't dodge] \u2014 careful positioning beats reactive dodging in a stamina-constrained world

= Specialized Builds

These builds are optimized for Wave 2's increased difficulty and mechanical depth. Each requires specific mutations unlocked through Blood and Wine.

== Euphoria Alchemy Tank

#strong[Mutation:] Euphoria
#strong[Gear:] Manticore School (alchemy bonus)
#strong[Playstyle:] Run 3\u20134 decoctions simultaneously for massive passive bonuses. Use Rend (charged heavy attack) for damage.

Priority: Toxicity > Attack Power > Vitality. Key decoctions: Ekimmara (damage heal), Water Hag (full health bonus), Archgriffin (heavy attack stamina cost).

== Piercing Cold Signs

#strong[Mutation:] Piercing Cold
#strong[Gear:] Griffin School (Sign bonus)
#strong[Playstyle:] Freeze enemies with Aard, then execute them. Igni stream for burning. Yrden turret for area denial.

Priority: Sign Intensity > Stamina Regen > Elemental Damage. Max Aard and Igni skills first.

== Deadly Precision Critical

#strong[Mutation:] Metamorphosis
#strong[Gear:] Feline School (crit bonus)
#strong[Playstyle:] Glass cannon. Fast attacks, Whirl, critical hits. Apply status effects (bleed, poison, burning) to trigger Metamorphosis, which grants random buffs.

Priority: Crit Chance > Crit Damage > Attack Power. Requires precise positioning and quick reflexes.

= Endgame & NG+

== When to Start New Game+

Complete the main quest at least through the Battle of Kaer Morhen (level 30+). Ideally, finish both expansions first (Blood and Wine's mutations are especially valuable). Recommended level: 50+.

#strong[Carries over:] Character level and skills, unlocked mutations, alchemy formulas (not crafted potions), Gwent cards, crafting diagrams, gold, inventory items.

#strong[Resets:] Quest progress, world state, point-of-interest discoveries, signposts.

== Blood and Wine Endgame

#strong[Hanse bases] \u2014 Repeatable combat encounters. Great for leveling and farming. Enemies respawn if you don't kill the leader.

#strong[Grandmaster crafting] \u2014 Unlock Grandmaster tier of your chosen witcher set.

#strong[Corvo Bianco] \u2014 Renovate your vineyard. Unlock mutagen slots, a Gwent table, and a place to display your armor collections.

== Hearts of Stone Endgame

#strong[Runewright] \u2014 Unlock all three tiers of runewords and glyphwords (35,000 crowns total).

#strong[Ofieri quests] \u2014 Unique gear: the Ofieri saddle (+100 stamina), the Viper Venomous silver sword.

#strong[Legendary items] \u2014 Iris (steel sword, unique heavy attack), Viper School gear diagrams.

// ================================================================
// REFERENCE
// ================================================================
#pagebreak()
= Reference

== Complete Mod Reference

<!-- Full mod metadata table will be populated once the modlist is finalized. -->

== Load Order Guidelines

For each wave, install mods in this general order:
1. Core frameworks and libraries
2. Graphics and textures
3. UI and HUD changes
4. Gameplay tweaks and mechanics
5. Content mods (quests, gear, NPCs)
6. Overhauls and total conversions

== Mod Manager Guide

See the full guide at: #link("https://www.nexusmods.com/witcher3/mods/2678")[Witcher 3 Mod Manager].

Key features: profile management, script merging, load order control, mod deactivation.

== Troubleshooting

| #strong[Problem] | #strong[Solution] |
|--- | --- |
| Game crashes on launch | Run Script Merger. Check for missing dependencies. |
| Script compilation errors | Delete `mod0000_MergedFiles/` and re-merge. |
| Missing textures | Reinstall the texture mod. Verify game files. |
| Low FPS after Wave 1 | Disable demanding mods before lowering in-game settings. |
| Mod not showing in Mod Manager | Ensure archive isn't corrupted. Try manual install. |
| Profiles not switching | Restart the Mod Manager and confirm the profile is selected. |
