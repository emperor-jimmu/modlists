// 20-modlist.typ — The Grand Chronicle: the modlist.
#import "theme.typ": *

= The Modlist

_Twenty-six verified mods in four categories. Every entry was checked against its live Steam Workshop page (author, item id, update date) at the time of writing. None of them make the game easier or hand you power — they make the AI think, the map beautiful, and your decisions informed._

== 1 · AI & Strategy

The single most important mod in the list. One AI overhaul only — the community consensus is that AI mods must not be stacked.

#mod-entry(
  name: "Real Strategy (AI)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1617282434",
  author: "infixo",
  what: "A different approach to making the AI better: a mixture of Lua 'thinking' and tuned AI lists. The AI plans districts and units coherently, pursues victory types, and handles war and naval play sensibly instead of drifting.",
  why: "This is the 'more AI' request in one package — a smarter opponent that respects the game's own systems, which raises the challenge without cheating.",
  compat: "Do not combine with AI+, RHAI or Better Balanced Game. Updated August 2023 for the final build.",
)

== 2 · Interface & Information

Thirteen UI mods that reveal information the vanilla interface hides. None change balance — they turn guessing into planning, which is exactly the kind of depth this list is about.

#mod-entry(
  name: "Quick Deals",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2460661464",
  author: "wltk",
  what: "Shows every AI's offer for the items you want to trade in one sorted window (hotkey D), so you can sell to the highest bidder with one click.",
  why: "Trade transparency: you see the market instead of blind-clicking leaders.",
  compat: "UI-only; works with everything.",
)

#mod-entry(
  name: "Detailed Map Tacks",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2428969051",
  author: "wltk",
  what: "Map tacks now compute and display the actual yields and adjacency bonuses a district or wonder would get at that spot — before you commit.",
  why: "City planning becomes a real craft: you plan districts the way the game's systems reward.",
  compat: "UI-only; pairs with the Map Lens in More Lenses.",
)

#mod-entry(
  name: "Extended Policy Cards",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2266952591",
  author: "Aristos",
  what: "Shows the concrete effects of every policy card on your current empire (e.g. +3 Gold, +2 Culture) instead of vague prose.",
  why: "Government choices stop being memorization — you see the trade-off your empire actually faces.",
  compat: "Requires Better Report Screen (below) to display the effects. Works with vanilla, R&F and GS.",
)

#mod-entry(
  name: "Extended Diplomacy Ribbon",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1360462633",
  author: "Aristos",
  what: "Adds an at-a-glance ribbon showing each leader's government, military strength, amenities, and current diplomatic stance toward you.",
  why: "Diplomacy becomes readable: you know who is friendly, who is posturing, and who to bribe.",
  compat: "UI-only; works with vanilla, R&F and GS.",
)

#mod-entry(
  name: "Better Report Screen (UI)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1312585482",
  author: "infixo",
  what: "Reworks the report screen with far more information and new tabs: units, deals, policies, and city-states.",
  why: "Empire-wide bookkeeping — the backbone that Extended Policy Cards draws on.",
  compat: "Required by Extended Policy Cards. Safe with all official scenarios.",
)

#mod-entry(
  name: "Better Civilopedia (UI)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1341630847",
  author: "infixo",
  what: "The Civilopedia now shows decoded modifiers, district adjacencies, and AI strategies — the actual numbers behind the prose.",
  why: "The reference book becomes worth opening: you can learn how the systems really work.",
  compat: "UI-only; language-independent.",
)

#mod-entry(
  name: "More Lenses",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=871712879",
  author: "astor",
  what: "Adds lenses for settler placement (highlighting settleable spots), adjacency, appeal, and more to the map lens menu.",
  why: "The map tells you what your empire could become, not just what it is.",
  compat: "UI-only. Already bundled inside CQUI/HBUI — we don't use those, so this is the standalone version.",
)

#mod-entry(
  name: "Better Trade Screen",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=873246701",
  author: "astor",
  what: "Trade routes become sortable and filterable by yield (food, production, gold, science, culture, faith) with multi-level sorting.",
  why: "Managing a trade empire is a real strategic layer once you can see every route's value.",
  compat: "UI-only; do not combine with CQUI/HBUI.",
)

#mod-entry(
  name: "Production Queue",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1095404815",
  author: "Lozenge",
  what: "Adds production queues to cities: left-click appends, Ctrl-click or middle-click inserts at the top; drag to reorder.",
  why: "Late-game city management without endless re-selecting — a quiet quality-of-life depth add.",
  compat: "UI-only; does not work in hotseat games.",
)

#mod-entry(
  name: "Great Works Viewer",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1652106496",
  author: "Glindor",
  what: "Improves the Great Works screen: sort by building type, expand to full screen, filter by work slot, and a theming helper.",
  why: "The culture game becomes legible — you can actually plan theming bonuses.",
  compat: "UI-only.",
)

#mod-entry(
  name: "Sukritact's Simple UI Adjustments",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=939149009",
  author: "sukritact",
  what: "A set of small quality-of-life changes: worked tiles, next border growth and city yields on hover, easier citizen management, and more.",
  why: "The 'details' layer — small conveniences that make reading your empire effortless.",
  compat: "UI-only; updated October 2024, the most recently maintained item in this category.",
)

#mod-entry(
  name: "Sukritact's Global Relations Panel",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1753346735",
  author: "sukritact",
  what: "One panel showing how every civilization feels about every other — opinions, agreements, and agendas at a glance.",
  why: "You finally see the diplomatic web you are playing inside, not just your own inbox.",
  compat: "UI-only.",
)

#mod-entry(
  name: "Better Combat Preview (UI)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3254574708",
  author: "Maple_Leaves",
  what: "Rich combat previews: current HP, strength differences, damage ranges, and likely results, with a detailed breakdown when many factors are at play.",
  why: "War becomes calculation instead of gambling — you commit to fights you can read.",
  compat: "UI-only; does not cover air combats.",
)

== 3 · Graphics & Immersion

Six visual mods that make the map calmer, richer, and easier to read. All cosmetic; none touch gameplay numbers.

#mod-entry(
  name: "Environment Skin: Sid Meier's Civilization V",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1702339134",
  author: "GrrrrArrrg",
  what: "Re-textures terrain and shifts the color key toward Civ V's calmer, more muted palette, with more detailed terrain textures.",
  why: "If Civ VI's saturated 'board-game' look wears on you, this is the classic one-stop visual modernizer.",
  compat: "Compatible with every release up to and including Gathering Storm; designed to work with Hillier Hills and Vegetation mods.",
)

#mod-entry(
  name: "Hillier Hills",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2361535448",
  author: "Deliverator23",
  what: "Changes the heightmap of hills so they are more prominent and visibly elevated — terrain reads better at a glance.",
  why: "Readable terrain is strategy you can see: chokepoints and defensive hills jump out.",
  compat: "Compatible with Environment Skin and Denser Vegetation. Incompatible with Leugi's Colder Tundra (a combined version exists if you ever want it).",
)

#mod-entry(
  name: "City Sprawl Graphics",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1619400469",
  author: "Hiraeth",
  what: "Buildings now appear on the outskirts of districts placed adjacent to the city centre — your metropolises visually sprawl as they grow.",
  why: "The 'living empire' feeling: growth you can see on the map.",
  compat: "Visual only; a heavier asset mod, so it is a candidate to disable first if you ever hit the leader-asset crash limit.",
)

#mod-entry(
  name: "Denser Vegetation (for Civ V Skin)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1975497559",
  author: "JNR",
  what: "Dense, forest-like vegetation with terrain-tinted variants so you can still tell what lies underneath; entirely cosmetic.",
  why: "Forests become forests — the map stops looking like a garden and starts looking like a continent.",
  compat: "Use this 'for Civ V Skin' version because we run Environment Skin (the standalone version targets the default skins). Enable the 'High-Detail Clutter' graphics option for full effect.",
)

#mod-entry(
  name: "Colorized Historic Moments",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1679150838",
  author: "MiniRagnarok",
  what: "Replaces the historic-moment art with colorized artwork — over 250 moments colorized.",
  why: "Your empire's history book gets the detail it deserves; can be enabled/disabled without touching saves.",
  compat: "Visual only.",
)

#mod-entry(
  name: "Prettier Lakes",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2356352540",
  author: "p0kiehl",
  what: "Enhances the flat water textures of lakes, oases, and several natural wonders (Dead Sea, Crater Lake, Lake Victoria, and more).",
  why: "Small water detail that noticeably improves map photography.",
  compat: "Visual only; includes a variant texture for Terra Mirabilis's Lake Victoria.",
)

== 4 · World & Content

Six mods that add detail, depth, and things to discover — new wonders, new resources, new terrain, dynamic names, and the map pack. All are additions, not power spikes.

#mod-entry(
  name: "Terra Mirabilis",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1461463960",
  author: "Deliverator & ChimpanG",
  what: "Reworks the natural wonders and adds 20 new ones, including fan favourites: Victoria Falls, Rock of Gibraltar, Krakatoa, Lake Victoria, Cerro de Potosí and more.",
  why: "The world gets more places worth exploring, settling, and fighting over — classic content depth.",
  compat: "Content mod; the wonders integrate with the base ruleset. Pairs well with Prettier Lakes.",
)

#mod-entry(
  name: "Rosetta — Dynamic City Names",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1161626651",
  author: "SeelingCat",
  what: "Cities change their names to match their owner's culture, and duplicate names never appear in the same game — a conquered York becomes Eboracum again.",
  why: "The map tells a story of conquest and culture; fully modular across mods and DLC.",
  compat: "Flavor mod; works regardless of enabled DLC.",
)

#mod-entry(
  name: "Sukritact's Resources",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1150492115",
  author: "sukritact",
  what: "Adds new resources across the board: Cheese, Camels, Obsidian, Gold (mine), Bison, and more, each with sensible yields on their improvement.",
  why: "Richer economies — more luxuries and bonuses to trade, improve, and fight over.",
  compat: "Content mod, balanced yields; also serves as a base for other mods.",
)

#mod-entry(
  name: "Sukritact's Oceans",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2542898147",
  author: "sukritact",
  what: "A brand new game mode: kelp forests teem the coasts, new ocean resources (seals, squid, coral) appear, and the seas gain real gameplay.",
  why: "Oceans stop being a blue void — the map's coasts become a strategic layer of their own.",
  compat: "Game mode toggled in Advanced Setup. May not be fully compatible with the Yet (not) Another Maps Pack — pick per game (details in Chapter 3).",
)

#mod-entry(
  name: "Wetlands",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2135724456",
  author: "JNR",
  what: "Adds real gameplay around wetlands: new tiles, yields, and decisions for the world's most productive — and most neglected — terrain.",
  why: "Marshes become a strategic choice instead of filler terrain.",
  compat: "Requires Gathering Storm. Incompatible with mods that let you harvest all resources.",
)

#mod-entry(
  name: "Yet (not) Another Maps Pack",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=871861883",
  author: "Gedemon",
  what: "The classic map pack: dozens of real and fantasy maps including True Start Earth, with realistic continents and start positions.",
  why: "The grand-chronicle way to play — the actual Earth, with real starting locations.",
  compat: "Maps only. _Keep map size at Enormous or smaller_ — sizes above Enormous crash late-game on the Gathering Storm build. If you want Sukritact's Oceans in the same game, prefer standard map scripts over YnAMP maps.",
)

== Deliberately not in this list

- _CQUI / HBUI_ — monolithic UI overhauls that bundle several of the mods above; they are stale relative to the final build and superseded by the individual, maintained mods.
- _Better Balanced Game (BBG)_ — a competitive multiplayer rebalance; it re-tunes the whole economy and conflicts with the 'deepen, don't rebalance' goal, and it must not sit next to Real Strategy.
- _AI+ / RHAI_ — fine mods on their own, but AI overhauls do not stack; Real Strategy is the single choice here.
- _Heroes & Legends, Zombie Defense, Apocalypse_ game modes — gimmicks and power spikes that make the game easier or weirder.
- Anything that hands the player free yields, cheaper units, or faster tech — that is the opposite of this list's charter.
