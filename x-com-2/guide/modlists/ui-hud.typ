// The 3rd Coming - UI & HUD category
// Cards transcribed from the user-supplied [WOTC] Core Collection baseline (2026-08-12)
// and the LWOTC Community QoL Collection (2026-08-12, advanced-wave suggestions).
// Card format:
//   #mod-entry(name: "Mod name", url: "https://steamcommunity.com/...", deps: "...", impact: "...", notes: "...")
// A field the user did not supply stays out of the card.

// mod card renderer (include scope does not share #let bindings from template.typ)
#let mod-entry(name: none, url: none, deps: none, impact: none, notes: none) = {
  let cyan = rgb("#00e5ff")
  let card = rgb("#131a26")
  let hairline = rgb("#263449")
  v(5pt)
  block(
    fill: card, inset: (x: 12pt, y: 10pt), radius: 6pt, stroke: 0.6pt + hairline,
    width: 100%,
  )[
    #if name != none [
      #if url != none [
        #link(url)[#text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)]
      ] else [
        #text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)
      ]
    ]
    #if deps != none [#v(5pt) #text(weight: "bold", fill: cyan)[Dependencies:] #deps]
    #if impact != none [#v(3pt) #text(weight: "bold", fill: cyan)[Impact:] #impact]
    #if notes != none [#v(3pt) #text(weight: "bold", fill: cyan)[Notes:] #notes]
  ]
  v(4pt)
}

== UI & HUD

Interface, screens, and information display: what the game shows you and how you interact with it - the geoscape, the tactical HUD, soldier loadout screens, and mission briefings. Pure presentation unless a card's Impact says otherwise.

=== Squad & Roster Screens

#mod-entry(
  name: "WotC: robojumper's Squad Select",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1122974240",
  notes: "My personal take on a Squad Select Screen! Completely built from the ground up! Features: User Interface for more than 6 soldiers. How many? There's no limit! Scroll or Drag&Drop. More intuitive with built-in overview!",
)

#mod-entry(
  name: "[WOTC] Show All Class Counts",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2167235854",
  notes: "Displays how many soldiers of each class do you have at the top of the Armory interface, including rookies, faction hero classes and SPARKs.",
)

#mod-entry(
  name: "[WOTC] Detailed Soldier Lists Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2832773856",
  notes: "This is my REDUX of -bg-'s amazing Detailed Soldier List. I had been sitting on this mod redux for well over a year waiting on some contact from -bg- with no response given.",
)

#mod-entry(
  name: "[WOTC] Extended Personnel Info Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2965980985",
  notes: "This mod is my personal redux of Extended Personnel Info by Astral Descend. Made and released with permission. This mod adds useful info such as soldier bond details, skills and loadout to personnel screens.",
)

#mod-entry(
  name: "[WOTC] Show Current PCS",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2989400002",
  notes: "This is a simple mod that adds a box to display the currently equipped PCS on the PCS selection screen.",
)

#mod-entry(
  name: "[WOTC] Stats on New Promotion Screen",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1716973380",
  notes: "Adds the soldier stats to the new promotion screen! Compatible with New Promotion Screen by Default (obviously), RPG Overhaul and any other class mod that uses Brigadier rank.",
)

#mod-entry(
  name: "[WOTC] Community Promotion Screen",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2550561145",
  notes: "Community Promotion Screen is an expanded and improved version of the New Promotion Screen by Default. It replaces the standard soldier promotion screen with a modified version of the 'Faction Hero' promotion screen that was added in War of the Chosen.",
)

#mod-entry(
  name: "[WotC] Bond To Header",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1397839793",
  notes: "Changes the way how available bonds are presented to the user while in Avenger HUD. In normal WotC they are placed across the screen randomly and they change the position every time you go back into the Avenger HUD.",
)

#mod-entry(
  name: "[WOTC] Barracks Status Display",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2540649820",
  notes: "A simple little mod that changes the single long line of soldier status in the hangar to a compact block. This issue really becomes apparent with Covert Infiltrations improved display message for where your soldiers are.",
)

#mod-entry(
  name: "[WOTC] Select Soldier Icons Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2960880496",
  notes: "Personal redux of Soldier Select Icons by zFail. I do not have permission to update the original, but as there has been no correspondence from the author since February 2016, I figured this was fine.",
)

#mod-entry(
  name: "CapturedSoldiersList",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2883035174",
  notes: "Adds a tab in the avenger Bar/Memorial where you can see what troops are currently in Advent/Chosen hands.",
)

=== Tactical HUD & Unit Info

#mod-entry(
  name: "WOTC - Extended Information!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1183444470",
  notes: "For Mac/Linux Users: We've been informed that you may be experiencing performances issues after the last update. But without the support of a proper development tool on MacOS/Linux we can't tackle it down.",
)

#mod-entry(
  name: "Show More Buff Details",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=709499969",
  notes: "No more guessing when is your effect going to end - shows more details about when each non-permanent effect is going to end. Also shows the stat bonuses granted by each buff/perk.",
)

#mod-entry(
  name: "[WotC] UI - Colored Ammo Bar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1949300408",
  notes: "Normally, to figure out what ammo a soldier has, you'd have to hover over the weapon icon to see what ammo type is equipped. This mod shows the ammo type on a colored ammo bar.",
)

#mod-entry(
  name: "[WOTC] Unit Flag Extended",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2285967646",
  notes: "A re-upload of a vanilla port, following in the footsteps of Additional Icons and WOTC Additional Icons - extended unit flags. Shows loot icons on enemies by default; to require scanning first, set 'loot indicator requires scanning' to true in XComWOTCLootIndicator_Extended.ini.",
)

#mod-entry(
  name: "(WOTC) UI Mod for Defense/Mobility/Psi",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1281427768",
  notes: "Mods the UI to show some useful (at least to me) information. If you have equipment or an ability that boosts or penalizes your (normally hidden) Defense stat, it will appear.",
)

#mod-entry(
  name: "[WOTC] Show Health Values",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1123174832",
  notes: "Shows the value of HP next to the cover icon, no more counting sectopod's HP. You may customize the mod by changing XComTacticalHP.ini.",
)

#mod-entry(
  name: "[WOTC] Cost-Based Ability Colors",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1289686596",
  notes: "This is an updated version of Cost-Based Ability Colors for WOTC. All credit for the original mod and concept goes to infectedm and you should go rate it if you haven't already.",
)

#mod-entry(
  name: "[WOTC] Passive Icons Core Collection Edition",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2170324254",
  notes: "This was a 'cloned version' of my Passive Icons mod, stripping out any config options and gameplay changes. This version has pretty much been rewritten, cleaned and optimized by Iridar for inclusion into the Core Collection.",
)

#mod-entry(
  name: "(WOTC) Domination Icon",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1854232612",
  notes: "Have you ever had a squad with a few Psi Ops throwing around quite a bit of Insanity and Domination, and you forget which of your mind-controlled aliens are your friends forever (or at least the rest of the mission)?",
)

#mod-entry(
  name: "[WOTC] Lost Lure Status Icon",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2709644312",
  notes: "Simple mod to tweak the Ultrasonic Lure to show which enemies are under the affect of the Lure. The status effect is shown now in two ways: Configurable Unit Flag icon to tell at a glance if they are under the effect.",
)

#mod-entry(
  name: "[WOTC] Spectral Zombie Warning Signs",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2743416893",
  notes: "Very simple mod that patches in a little bit of helper text for the Chosen Warlock's Spectral Zombies. Originally, when they prime for self-destruct they just glow at you. Now, when they prime for self-destruct, they will be flagged.",
)

#mod-entry(
  name: "Evac Now",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1306820727",
  notes: "This mod renders the evac zone target in yellow instead of blue if there are any soldiers who cannot reach the selected area this turn. It doesn't prevent you from placing the evac zone, it only appears in a different color.",
)

#mod-entry(
  name: "Yet Another F1",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=934236622",
  notes: "This mod is compatible with War of the Chosen. The Alternative Mod Launcher may be required to enable it for WotC. Adds an XCOM EU/EW/LW style unit information screen to the game. Stats. Equipment. Equipment Stats. Abilities, Passives, Buffs, Debuffs!",
)

#mod-entry(
  name: "[WOTC] Tactical UI Kill Counter Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2405013108",
  notes: "A small update and slight rearrange of Lumingers Kill Counter. This mod adds a set of very simple counters to the Tactical UI, for each enemy team.",
)

#mod-entry(
  name: "[WOTC] Soldier Info Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2415446578",
  notes: "A WOTC update to a small Grimy mod, Tactical Kill Counter - not to be confused with the Tactical UI Kill Counter. Shows kill info on soldiers in tactical.",
)

#mod-entry(
  name: "WotC Enhanced AoE Preview",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1124333578",
  notes: "Shows actual damage preview on targets as if you were using a single target ability. For AOE that does no damage (flashbang grenade, for instance), the health bars will still be brightly lit on targets within the AOE.",
)

#mod-entry(
  name: "[WOTC] LOS Preview Ability",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1123163799",
  notes: "Adds an ability to all soldiers to preview LOS range by tiles, even beyond movement range. This lets you measure LOS edge more easily and provides LOS indicator against allied units and civilians. Also previews the movement range of enemies.",
)

#mod-entry(
  name: "[WOTC] LOS Preview To CommanderHUD",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3505515834",
  notes: "Modifies all abilities from LOS Preview Ability mod to enable the flag bCommanderAbility in the ability template, so that these abilities will show up on the CommanderHUD on the top-right of the screen, instead of an unit's ability bar. Companion to the CommanderHUD mod.",
)

#mod-entry(
  name: "[WOTC] Enemy Preview - Extended",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2924342363",
  notes: "Extends the optional Target Preview UI element to support providing additional information about vision range and the impact of certain effects on targets based on the current movement preview tile / cursor.",
)

#mod-entry(
  name: "[WOTC] Visibility Memory (QoL)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2797492518",
  notes: "Target definition (keep sighted enemies visible) is granted to all your units that lasts the end of your turn. Let's say you move a unit that can see an enemy, to somewhere he can't see it anymore - the enemy stays visible.",
)

#mod-entry(
  name: "[WOTC] Mom, I'm Immune",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3646566000",
  notes: "Adds a passive ability to all units that lists all damage types the unit is currently immune to. All configuration can be found in XComGame.ini; IncludeDamageTypes is an array of damage types that can be listed.",
)

#mod-entry(
  name: "[WOTC] F1 Shortcut",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3708752404",
  notes: "Ever wanted to check a unit's F1 without burning clicks to target it? This mod adds a clickable F1 shortcut to every unit flag on the battlefield. Click it to instantly open F1 for that unit - friend or foe, anywhere on the map.",
)

#mod-entry(
  name: "[WOTC] [BETA] Extended Information Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3706139879",
  notes: "BETA. Extended Information is a UI enhancement mod and a rewrite of Perfect Information. Its goal is to provide maximum clarity about what's happening on the battlefield, from displaying hit, crit, graze, and miss chances in flyovers.",
)

=== Geoscape & Management

#mod-entry(
  name: "Upcoming Events [WotC]",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1125698656",
  notes: "Upcoming Events in Hours updated for WotC. This is a rough update of Upcoming Events in Hours for War of The Chosen. Above a threshold of hours set in XComEventHours.ini (default 48), days will be listed (rounded up).",
)

#mod-entry(
  name: "[WOTC] Hours Instead of Days",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1125973633",
  notes: "Adds mission remaining times on the sites list at the bottom of the geoscape. Also displays scan time remaining in hours below a certain threshold. (Default is 48 hours, configurable in XComGame.ini)",
)

#mod-entry(
  name: "[WOTC] Accurate Situation Report",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2567229533",
  notes: "Did you know that the SitRep details screen in WOTC, which players use to preview the SitReps they will face on the upcoming mission, is utterly broken for missions with more than one SitRep?",
)

#mod-entry(
  name: "[WOTC] Standardised Resources Bar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2276175904",
  notes: "The aim of this mod is to re-organise, sort and standardise the resource bar across all screens, showing resources that make sense for the screen. The entire event is now driven by configs.",
)

#mod-entry(
  name: "Blackmarket Usage",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=648410303",
  notes: "Displays possible usage of items on the blackmarket sell screen. No more wondering whether you still need Advent Trooper Corpses. Data is gathered dynamically, so modded items, costs etc should show up as well.",
)

#mod-entry(
  name: "[WOTC] Item Stats in Engineering",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3129305174",
  notes: "A small quality of life mod that lets you view item's stats on the Build Items screen in Engineering. Especially helpful if you use a lot of mods that add new items. To view item stats, click the small 'Info' button at the bottom of the screen.",
)

#mod-entry(
  name: "WOTC Nice Mission Debriefing",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1154827808",
  notes: "A follow-up to Mission Award Variety, Nice Mission Debriefing for War of the Chosen shows extended stats and awards for your soldiers at the end of a mission.",
)

#mod-entry(
  name: "[WOTC] Full Shadow Report",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2995251401",
  notes: "This mod is heavily inspired by WOTC Show Enemies and Terrain on Mission Planning by Sebkulu. It is essentially a 'new' mod, so no permission was sought for the posting.",
)

#mod-entry(
  name: "[WOTC] Show Tech Rewards",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2347354900",
  notes: "After several playthroughs, I got tired of guessing what each Research or Proving Ground project would give me. Not to mention mod added ones. So I had an idea to show tech rewards.",
)

#mod-entry(
  name: "[WotC] Better Cost Strings",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2995259605",
  deps: "X2WOTCCommunityHighlander v1.26.0 or later",
  notes: "Shows inventory counts and highlights sparse artifacts and resources in cost strings when building items, starting research, etc.",
)

#mod-entry(
  name: "[LWOTC] ICONIC Missions - Unique Geoscape Icons for LWOTC",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3560714437",
  notes: "LWOTC-specific. Creates unique geoscape icons for each mission. All assets were created from existing game assets, handdrawn by me, or as credited below.",
)

#mod-entry(
  name: "[Vanilla/WotC] Black Market Soldier Stats",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3004108595",
  notes: "Shows the stats of soldiers offered at the Black Market. Configurable via Mod Config Menu: highlight above/below average stats, etc.",
)

#mod-entry(
  name: "ChosenData",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3015648739",
  notes: "The game does this on the geoscape layer with the chosen icon next to the avatar project progress. This mod brings that view up inside the commander's quarters instead of all the way out there.",
)

#mod-entry(
  name: "[WOTC] Improved Black Market UI",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3349050094",
  notes: "Improves Black Market sell screen performance. No more lag with large amounts of items! Opening the sell screen can still take a moment.",
)

#mod-entry(
  name: "[LWOTC] Faceless Detection Power",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3677863362",
  notes: "LWOTC-specific. Faceless Detection Power is added to the Haven Management window, in a similar manner to Mission Find Power. When a soldier is assigned as a Haven Liaison, this value represents how proficient this soldier is at detecting Faceless.",
)

#mod-entry(
  name: "[LWOTC] Strength Increase Notifier",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3723136195",
  notes: "LWOTC-specific. Notifications are shown in Geoscape when ADVENT Strength changes or Force Level increases. Optionally pause scanning when ADVENT Strength changes or Force Level increases.",
)

#mod-entry(
  name: "[WOTC] Instant Research Requirements",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3728376477",
  notes: "Shows the requirements for the instant research, like required amount of corpses for an instant autopsy. Shows the current amount of required corpses in storage.",
)

=== Menus, Lists & Interaction

#mod-entry(
  name: "[WOTC] New Target Icons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1384631824",
  notes: "Adds more target icons for regular, WOTC and modded enemies - 30 new icons for the targets designed by me. I tried to match them as close to original icons as I only could.",
)

#mod-entry(
  name: "[WOTC] Better Armory Item Stats",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1489472552",
  notes: "This mod improves the stats display of weapons, utility items and upgrades in the Armoury, including adding display of Critical Damage, Armor Pierce and Shred for all appropriate weapons.",
)

#mod-entry(
  name: "Smooth Scrolling",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=957580056",
  notes: "Makes scrolling smooth. Everywhere. Overrides: UIScrollbar. Incompatible with my Capped Scrolling Speed. You should switch to this one, it has that functionality included.",
)

#mod-entry(
  name: "[WotC] Gotcha Again",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1124288875",
  notes: "This mod improves on the Line of Sight indicators that are shown when previewing moves in the tactical game. This version is specifically for use with War of the Chosen.",
)

#mod-entry(
  name: "[WOTC] Gotcha Again Redux",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3002469584",
  notes: "A merge of WOTC Gotcha Again with Peek From Concealment and its UI Fix and MissClick Protection. Gone are the days of needing to manually configure the XComEngine.ini of these mods to resolve conflicts, things just work.",
)

#mod-entry(
  name: "WotC: Color Coded Bonds",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1124175584",
  notes: "Adds custom color codes to soldier bonds in most places. Due to restrictions in Firaxis' UI code, that doesn't work everywhere. It does work everywhere where it's important.",
)

#mod-entry(
  name: "[WOTC] Coloured PCS Icons",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2425682362",
  notes: "This is a simple little event listener that listens to a CHL event for changing the icon of PCS' in the 'card' slot and Ability Summary. This mod changes a few icons but mainly adds 'colour', see the screenshots.",
)

#mod-entry(
  name: "[WotC] No Drop Down Lists With Controller Support",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2098062078",
  notes: "An update of LeaderEnemyBoss's mod with controller support added. Designed primarily for use with Long War of the Chosen; however, it should work with War of the Chosen as well.",
)

#mod-entry(
  name: "[WOTC] No Drop Down Lists: Remove Traits",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2752150336",
  notes: "This is an extension of No Drop Down Lists for the WOTC Infirmary Remove Trait Slot!",
)

#mod-entry(
  name: "[WOTC] No Drop Down Lists: Bond Slot",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3512173534",
  notes: "An extension of No Drop Down Lists for the WOTC Training Center Bond Level Up slot. Units are displayed in groups of two; selecting either unit...",
)

#mod-entry(
  name: "[WOTC] Filtered Menus",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3271654182",
  notes: "Filters on most of the menus you might want them. This mod allows reducing the amount of options you are presented with on a given menu, for example the build items screen, by only showing items that match certain filter criteria.",
)

#mod-entry(
  name: "[WOTC] More Target Icons 2024",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2010827399",
  notes: "An entire suite of new target icons, mostly for modded enemy units. The mod currently provides many icons for the following mods; I've lost count of the actual icons number and enemy config lines!",
)

#mod-entry(
  name: "[WOTC] Improved Weapon Upgrade UI",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2042829719",
  notes: "The goal of this mod is to adjust the screen location of the weapon model in the Weapon Upgrade UI for better positioning and ease of readability.",
)

#mod-entry(
  name: "[WOTC] Photobooth UI Fixes",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3307455200",
  notes: "Provides various features to improve the UI and functionality of the XCOM2 Photobooth. Includes a fix for a longstanding issue: if more than a few hundred poses were installed at the same time, the game would crash.",
)

#mod-entry(
  name: "[WOTC] Custom Item Name Formats",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2868237788",
  notes: "Allows you to customize your item names: change colors, add custom prefixes or suffixes. Everything is highly configurable. Default settings include colors for the vanilla game and a lot of mods. Equipment is colored by tech tier.",
)
