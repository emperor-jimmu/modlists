# World Content

**MO2 Separator:** `World Content` → `World Content - Overhauls`, `World Content - Quests`, `World Content - Homes & Bases`, `World Content - Underwater`

All mods in this section belong to one of the four world-content separators as noted per subsection.

---

## Landscape Overhauls → separator: `World Content - Overhauls`

Large worldspace-content changes making regions feel meaningfully different to cross.

### Baseline
Keep restrained until section 08 is clearer. First experiment:
- **The Marshlands** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/23062)) — Gives Hjaalmarch strong identity without redefining a central travel space.

### Alternatives
- **Whiterun Forest Borealis** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11343)) — Heavier compatibility pressure.
- **Aspens Ablaze** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/39998)) — Rift identity layer. Keep only if → `Terrain & Flora` can absorb it.

---

## Cities, Towns, And Villages → separator: `World Content - Overhauls`

Authored settlement content — real places, not just denser vibes.

### Baseline
- **The Great Cities - Minor Cities and Towns SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20272)) — First-pass baseline giving multiple underbuilt settlements stronger structure.
- **Cities of the North** series — Default modular lock for four smaller hold capitals. Designed to stack.
    - Dawnstar ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/28952))
    - Morthal ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34168))
    - Falkreath ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56731))
    - Winterhold ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/40088))
- **Settlements Expanded** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7777)) — Makes seven underbuilt settlements feel inhabited (no city geometry changes). Must load late.
- **The Great City of Solitude SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/22243)) — Port expansion with new homes, shops, warehouses, NPCs.
- **JK's Whiterun Outskirts** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78351)) — Whiterun-area expansion. Independent of `JK's Skyrim` AIO; stack without patching.
- **JK's Raven Rock** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141070)) — Solstheim settlement. ESL-flagged.
- **JK's Tel Mithryn** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/151512)) — Telvanni tower. ESL-flagged.
- **FYX - Eastern Empire Company Building** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86526))
- **FYX - Riften - Window Consistency** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182707))

### Locked Faction-HQ Additions
- **JK's Fort Dawnguard** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110645)) — ESL-flagged.
- **JK's Castle Volkihar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116314)) — ESL-flagged.
- **JK's Dark Brotherhood Sanctuaries** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121950)) — ESL-flagged.

### Alternatives
- **The Great Cities** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/320)) — Major-hold-capital follow-on. Treat as deliberate second-step.
- **Capital Whiterun Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37982)) — If JK's patch missing, mutually exclusive with JK's Whiterun edits.
- **The Great Town of Ivarstead SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/34505))
- **The Great Village of Kynesgrove** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/42639))
- **The Great Village of Mixwater Mill SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/36350))
- **The Great Town of Shor's Stone SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/35977))

---

## College of Winterhold → separators: `World Content - Overhauls` / `World Content - Quests`

Coordinated three-mod sub-stack designed to work together without inter-mod patches.

### Baseline
- **Obscure's College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20514)) — Architecture baseline. FOMOD with ~50 built-in patches including LotD. → `World Content - Overhauls`
- **Immersive College NPCs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9252)) — ESL-flagged, vanilla assets, no cell edits. Integration patch in Obscure's FOMOD. → `World Content - Overhauls`
- **College of Winterhold - Quest Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/66666)) — Skill-gated entry, 7 starter lessons before Saarthal. ESL-flagged, by jayserpa. → `World Content - Quests`

### Alternatives
- **Magical College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1539)) — Cleaner fantasy aesthetic but weaker grim-dark fit.
- **Immersive College of Winterhold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17004)) — Architecture+NPCs+crafting. Unmaintained since Dec 2020.
- **Questline-only:** Use `College of Winterhold - Quest Expansion` alone — lowest patch overhead.

### Compatibility Notes
- Obscure's ↔ COTN Winterhold: Compatible without patch. Load COTN before OCW.
- Obscure's ↔ CS-native lighting: No official patch. Verify CellSettings.esp forwarding for CS Light + True Light bulbs. Install **OCW Meshes Optimized and Merged for CS patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139165)).
- Obscure's ↔ LOTD: Patch in OCW's own FOMOD. ESP-FE format.
- ICN ↔ NPC appearance: Load ICN after broad NPC overhauls to avoid blackface.
- Quest Expansion ↔ FDE Brelyna Maryon: Both touch her dialogue tree — test for overlap.

---

## Inns, Farms, And Small Settlements → separator: `World Content - Overhauls`

Travel-stop identity, small community presence, memorable rural pauses.

### Baseline
- **The Great Village of Old Hroldan SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33189))
- **Candlehearth - An Inn Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97542)) — Locked inn-overhaul baseline. Every inn in Skyrim.
- **Ask Innkeepers To Show Room SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5990)) — Preview room before renting. 5,351 endorsements.

### Alternatives
- **Granite Hill** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14658))
- **Lund's Hamlet - An Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/169830))
- **The Great Town of Karthwasten SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/33032))
- **Oakwood** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/61007))

---

## Dungeons And Ruins → separator: `World Content - Overhauls`

### Baseline
- **Forgotten Dungeons (SSE)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/449))
- **Dungeons - Revisited** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51798)) — Improves existing ruins rather than adding new destinations.
- **Iconic's Crown of Barenziah** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137469)) — High-quality crown/gems/display stand.

### Alternatives
- **Hammet's Dungeon Pack 1 SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12186)) — Curated hand-authored dungeons.
- **Children of the North Wind** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147701)) — Bespoke Nordic architecture at 9 locations.
- **Skyrim Underground SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131)) — Larger subterranean layer.

### Navmesh Support
- **Navigator - Navmesh Fixes - Patch Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111379)) — FOMOD covering Dungeons Revisited, LotD, Helgen Reborn, JK's interiors, etc. Install after content mods and Navigator are in place.

---

## Points Of Interest And Roadside Content → separator: `World Content - Overhauls`

Smaller discoverable places between headline destinations.

### Baseline
- **Hidden Hideouts of Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2625))
- **Daedric Shrines - All in One** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78772)) + **Patch Collection** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78809))
- **Environs - Abandoned Abodes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82410)) — ESL-flagged, zero script overhead.
- **Evolving Locations** series — Riverside Shack ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124268)) + Lucky Shack ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123700)) + Cliffside Retreat ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124524))
- **Reinforced Civil War Camps** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153645))
- **Hagraven Houses Animated** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/101952)) — BOS mesh replacer.
- **Ivarstead Source** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/118825)) — Landscape fix. ESL-flagged.
- **Animated Ships** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/110260)) + **Finer Sails** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112517))
- **Dynamic Boats at Docks - Official Patch Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172901))
- **Snowy Ships for Snowy Regions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111827)) — BOS-based.
- **Unmarked Locations Pack - All In One** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113660)) + addon packs for Bruma, Wyrmstooth, Gray Cowl if those worldspaces are adopted.

### Alternatives
- **Hold Border Guards - Definitive Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/61170))
- **Nordic Ruins of Skyrim SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20382))
- **Hidden Hideouts City Edition SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2626))
- **7000 Steps of Sanctum** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/128478))
- **Gildergreen Regrown** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/348))
- **The Gildergreen Grows** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/147742)) — Incompatible with Regrown.
- **HAG Occult Orphan Rock** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/137996))
- **Lore Friendly Roadside Ruins** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/130581))

---

## Underwater → separator: `World Content - Underwater`

### Baseline
- **Depths of Skyrim - An Underwater Overhaul SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26913)) — New grass, coral, kelp, 1000+ fish, unmarked treasures.
- **Depths of Skyrim - Mesh fixes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174995))
- **More Underwater Treasures - AIO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/128247)) — 56 treasures (Skyrim) + 35 (Solstheim). Marked compatible with Depths of Skyrim.

### Notes
- Use `SSE-Terrain-Tamriel-Extend.esm` for LOD generation (→ `Performance`).
- Requires `iMaxGrassTypesPerTexure=7` in `Skyrim.ini`.
- Depths is script-free but adds 1000+ fish references — verify no unexpected Papyrus load.

---

## Side Activities: Fishing, Hunting, And Downtime → separator: `World Content - Quests`

Non-combat downtime making Skyrim feel lived-in when the player isn't dungeon-delving.

### Baseline
- **Simple Fishing Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103440)) — 200+ lines improved dialogue, NPC reactions, MCM. ESL-flagged, by jayserpa.
- **Hunterborn SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7900)) — Dressing, skinning, harvesting, butchering. 20K endorsements. Use `Hunterborn Extender` via Synthesis.
- **Headhunter - Bounties Redone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119228)) — Locked. Transforms vanilla bounties. By jayserpa, 28K+ endorsements.
- **Skyrim's Got Talent** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106106)) — Locked. Instrument practice, skill progression, inn performances. By jayserpa.
    - **SGT - Player Reactions Addon** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78629))
    - **SGT - Show in UI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135473)) + **Visual Improvements** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172079))
- **Immersive Fishing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/115249)) — New spots, rods, fish types, radiant quests.
- **Fishermen Fish** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134408)) — No ESP, mesh replacer only.
- **Garbage Loot - Barrels and Sacks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/18047)) — ESL-flagged.
- **Brawling - No Hitting Bystanders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/116941))

### Alternatives
- **Simple Hunting Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/95943)) — Simpler alternative by jayserpa. If chosen, replaces Hunterborn. Requires `Dynamic Activation Key` ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/96273)).
    - Companion: **Immersive Hunting Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/96961)), **Immersive Carcass Carrying** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/99867)), **Hunters Loot** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119348))
- **Streamlined Fishing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/80683))
- **Become a Bard** / **Bards Reborn** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47994)) — Not compatible with SGT without patch.
- **Fishing Extension Framework** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139626)) — Required for new-lands fishing.

---

## Weapons, Armor, And Equipment Additions → separator: `World Content - Quests`

### Baseline
- **Immersive Weapons** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16788)) — ~230 new weapons. 114K endorsements.
- **Immersive Armors** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3479)) — ~55 armor sets, 396 shields. 206K endorsements.
- **Immersive Armors Retexture and Mesh Fixes SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/75891)) — Brings visuals in line with 4K PBR stack.
- **Dawnguard Arsenal SSE - SkyPatched** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/25094), SkyPatched variant Nexus 113677)

---

## Quest Additions → separator: `World Content - Quests`

### Baseline
- **Sidequests of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/54245)) + **Missives** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17576)) — Dual everyday-quest baseline.
    - **Missives - Voice and Quest Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/166094)) — 20 new types, voiced.
    - **Missives - Notes Retexture** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/46201)) + **Darkened** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111765))
    - **Diverse Witcher Missives Boards** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111770)) — BOS-based.
    - **Missives - Unique Missive Boards** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/111375))
    - **Missives Quest Conversion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/135984))
    - **Missives - Worldspace Additions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26788)) — Required for new-lands.
- **The Forgotten City** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1179)) — Locked. Most decorated Skyrim quest mod. Self-contained murder-mystery, LoTD integration. → `World Content - Quests`
- **Saints and Seducers Extended Cut** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72772)) — Transforms thin vanilla Creation into proper Shivering Isles return.
- **JaySerpa's Quest Expansions** — House of Horrors ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57285)), Paarthurnax ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51711)), The Only Cure ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/57683)), The Whispering Door ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/76606)), patches hub ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113083))
- **A Chance Arrangement Plus Plus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175885)) — TG quest overhaul.
- **Opulent Thieves Guild** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10932)) — Visual-progression companion.
- **Improved Companions - Questline Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120609)) — Removes forced radiant-quest spam between Companions missions.
- **Penitus Oculatus** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21061)) — Locked. "Destroy the Dark Brotherhood!" replacement faction with radiant quests. 11.5K endorsements.

### Alternatives
- **Moon and Star** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4301))
- **Whispers of the Depths** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127087)), **Before the End** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/142238))
- **Wyrmstooth** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/45565))
- **Beyond Skyrim - Bruma SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10917))
- **Beyond Reach** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/3008))
- **VIGILANT SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11849))
- **The Wheels of Lull** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/748))
- **Falskaar** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2057))
- **Val Serano - Pirate Custom Voiced Follower and Quest Adventure**
- **The Gray Cowl of Nocturnal - 10th Anniversary** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141327))
- **The Isle Of Valefrost SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/103215))
- **The Frozen Heart** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159911))
- **Midnight Sun** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/163295))
- **Echoes of Oblivion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/153979)) — AI-Generated Content.
- **Leaps of Faith** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/53074)) — Lightweight pilgrimage. ESL-flagged.
- **Rescue Missions** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/144251)) — Radiant rescue. ESL-flagged.
