# NPCs

---

## NPC Appearance Overhauls
Face, hair, and presentation direction for Skyrim's named NPCs. Does not re-decide the body/skin/baseline character-visual stack already owned by → `Characters & Creatures`.

| Mod                                                                                                           | Type        | Notes                                                             |
|---------------------------------------------------------------------------------------------------------------|-------------|-------------------------------------------------------------------|
| [Northbourne NPCs of Whiterun Hold](https://www.nexusmods.com/skyrimspecialedition/mods/35404)                | Baseline    | Modern, regionally textured look. Grounded route.                 |
| [Northbourne NPCs of Winterhold](https://www.nexusmods.com/skyrimspecialedition/mods/43413)                  | Baseline    | Same author/series. Regionally textured look for Winterhold.      |
| [The Men of Winter SSE](https://www.nexusmods.com/skyrimspecialedition/mods/10902)                            | Baseline    | Dedicated male coverage. Last updated Aug 2020 — verify 1.6.1170. |
| [Children of the First — Altmer NPC Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/122167)     | Baseline    | Race-specific modular overlay for Altmer.                         |
| [Children of the Ash — Dunmer NPC Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/122165)       | Baseline    | Race-specific modular overlay for Dunmer.                         |
| [High Poly True to Vanilla NPC Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/74226)           | Alternative | Vanilla-faithful fallback. Broad NPC coverage.                    |
| [Pandorable's NPCs (AIO)](https://www.nexusmods.com/skyrimspecialedition/mods/78524)                          | Alternative | Beauty-forward branch. Broad female coverage.                     |
| [DIbella's Blessing](https://www.nexusmods.com/skyrimspecialedition/mods/82606)                               | Alternative | 233 female characters.                                            |
| [Males Of Skyrim by zzjay](https://www.nexusmods.com/skyrimspecialedition/mods/37485)                         | Alternative | Broad male coverage.                                              |
| [The Wolven Widow — SerketHetyt's Elisif Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/62209) | Alternative | Single-NPC overhaul (Elisif).                                     |
| [Val Serano - Another Replacer](https://www.nexusmods.com/skyrimspecialedition/mods/168735)                | Alternative | Single-NPC replacer for Val Serano (Pirate Quest Follower).        |
| [Fura Bloodmouth DF Edit SkyPatched](https://www.nexusmods.com/skyrimspecialedition/mods/171382)          | Alternative | Single-NPC replacer for Fura Bloodmouth (CC Dead Man's Dread). SkyPatcher-based. Requires AE content. |
| [Ysolda DF Edit SkyPatched](https://www.nexusmods.com/skyrimspecialedition/mods/169910)                  | Alternative | Single-NPC replacer for Ysolda. SkyPatcher-based.                 |
| [Pride of Skyrim — AIO Male HPH Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/48904)          | Alternative | ~400 male NPCs with High Poly Head. Broad coverage.               |
| [BeastHHBB](https://www.nexusmods.com/skyrimspecialedition/mods/38480)                                       | Alternative | Khajiit and Argonian NPC/PC replacer — player character, NPCs, adoptable children, Interesting NPCs integration, fangs. |
| [Bijin Wives SE](https://www.nexusmods.com/skyrimspecialedition/mods/11247)                                  | Alternative | Female NPC replacer for wives and selected NPCs.                   |

### Overwrite Order

Stack broad-coverage mods first, then region/race-specific, then single-NPC overhauls last. The later mod wins for any NPC it covers.

1. **Broad base layer** — Choose one male and one female branch: `High Poly True to Vanilla`, `Pandorable's`, `DIbella's Blessing`, `Males of Skyrim`, or `Pride of Skyrim`.
2. **Region or gender-specific** — `Northbourne NPCs of Whiterun Hold` (Whiterun only), `The Men of Winter SSE` (males broadly). Override specific holds or gender groups on top of the base layer.
3. **Race-specific overlays** — `Children of the First` (Altmer), `Children of the Ash` (Dunmer) — load after general overhauls so race-specific facegen wins for their target NPCs.
4. **Single-NPC finishers** — `The Wolven Widow` (Elisif) — load last so named individuals use the intended facegen.

After the appearance stack is final, run `FacegenBaseline` via Synthesis (→ [Patcher Reference](#facegenbaseline--npc-stat-patcher-reference)).

---

## NPC AI & Behavior
NPC schedule, behavior, and AI overhauls that affect how NPCs act rather than how they look.

| Mod                                                                             | Type        | Notes                                                                |
|---------------------------------------------------------------------------------|-------------|----------------------------------------------------------------------|
| [AI Overhaul SSE](https://www.nexusmods.com/skyrimspecialedition/mods/21654)    | Baseline    | NPC schedule and behavior overhaul. Pairs with any appearance route. |

### Risks & Compatibility
- AI Overhaul SSE is compatible with all listed appearance overhauls. Load AI Overhaul after appearance mods so schedule records win.
- Quest mods that move NPC schedules may need AI Overhaul patches — check the mod page for supported mods.
- Do not install `Immersive Citizens — AI Overhaul SE` alongside AI Overhaul SSE (→ [Population](#civilian-and-traveler-population-additions)).

---

## Civilian And Traveler Population Additions
Extra background people making towns, inns, and roads feel used — without re-deciding city feel and roadside atmosphere.

| Mod                                                                                            | Type        | Notes                                                                              |
|------------------------------------------------------------------------------------------------|-------------|------------------------------------------------------------------------------------|
| [Crowded Streets](https://www.nexusmods.com/skyrimspecialedition/mods/127723)                  | Baseline    | Compatibility-first crowd: zero cell edits, dynamic cleanup, configurable density. |
| [Travellers of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/1973)               | Alternative | Road-traveler route. LE-era port — verify 1.6.1170.                                |
| [Populated Skyrim Reborn SSE](https://www.nexusmods.com/skyrimspecialedition/mods/32190)       | Alternative | Heavier legacy route.                                                              |
| [MINPCs](https://www.nexusmods.com/skyrimspecialedition/mods/29483)                            | Alternative | Adventurer-style incidental content.                                               |
| [Immersive Citizens — AI Overhaul SE](https://www.nexusmods.com/skyrimspecialedition/mods/173) | Alternative | Known conflict with AI Overhaul SSE.                                               |
| [Interesting NPCs SE (3DNPC)](https://www.nexusmods.com/skyrimspecialedition/mods/29194)       | Alternative | Authored content NPCs.                                                             |
| [Jesters of Skyrim](https://www.nexusmods.com/skyrimspecialedition/mods/151037)               | Alternative | Adds Jester NPCs to select Jarl's residences with idle dialogue and antics. ESL-flagged additions only. Verify placement against adopted palace/court interior overhauls. |

---

## NPC Name Variety
Making named NPCs feel more regionally distinct without changing appearance or dialogue.

| Mod                                                                                 | Coverage           | Notes                                                   |
|-------------------------------------------------------------------------------------|--------------------|---------------------------------------------------------|
| [NPCs Names Distributor](https://www.nexusmods.com/skyrimspecialedition/mods/73081) | Framework          | Distributes name variations by race, faction, location. |
| [Tamrielic Names](https://www.nexusmods.com/skyrimspecialedition/mods/73153)        | Human NPCs         | Nord, Imperial, Redguard, Breton.                       |
| [Reachmen Tribes Names](https://www.nexusmods.com/skyrimspecialedition/mods/73312)  | Forsworn / Reach   |                                                         |
| [Ashlander Nomads Names](https://www.nexusmods.com/skyrimspecialedition/mods/73315) | Dunmer / Solstheim |                                                         |
| [Dovah Names](https://www.nexusmods.com/skyrimspecialedition/mods/74053)            | Dragons            |                                                         |
| [Daedric Names](https://www.nexusmods.com/skyrimspecialedition/mods/74055)          | Daedra             |                                                         |
| [Player Name Randomizer](https://www.nexusmods.com/skyrimspecialedition/mods/92438) | Player             | Randomizes display name on new game.                    |

---

## NPC Dialogue Expansions
Targeted dialogue additions for existing NPCs — expanding what vanilla characters say via spliced vanilla voice assets.

| Mod                                                                                                  | Description                                          | Notes                                                             |
|------------------------------------------------------------------------------------------------------|------------------------------------------------------|-------------------------------------------------------------------|
| [Dialogue Expansion — Windhelm](https://www.nexusmods.com/skyrimspecialedition/mods/112415)          | 180+ lines for citizens/guards/court                 | **Discontinued** — installed copies work, no future updates.      |
| [Dialogue Expansion — Imperial Soldiers](https://www.nexusmods.com/skyrimspecialedition/mods/113208) | Imperial soldier dialogue                            | **Discontinued** — same status.                                   |
| [Vigilants Expanded Dialogue](https://www.nexusmods.com/skyrimspecialedition/mods/149337)             | Expands Keeper Carcette (new voice/dialogue) + adds voiced Vigilant Yngvir with unique story. Makes the Hall of the Vigilant a meaningful place to visit before the Dawnguard attack. | Fully voiced original characters. No quest — dialogue depth only. |
| [Bandit Lines Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/87961)                  | Spliced vanilla bandit assets                        |                                                                   |
| [Extended Bandit Dialogue](https://www.nexusmods.com/skyrimspecialedition/mods/113168)               | Additional bandit lines                              |                                                                   |
| [Falmer Servant Lines Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/120995)         | 483 lines, pro voice talent                          | ESL-flagged. Optional plugins: More Spawns, More Unique Servants. |
| [Civil War Lines Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/139920)              | Civil war faction dialogue                           |                                                                   |
| [Forsworn and Thalmor Lines Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/80188)    | Forsworn / Thalmor dialogue                          | jayserpa. Spliced lines.                                          |
| [Vampire Lines Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/83484)                 | New spliced lines for vampires                       | Same series as Forsworn/Thalmor. Dialogue-only — compatible with Sacrosanct. |
| [Guard Dialogue Overhaul SE](https://www.nexusmods.com/skyrimspecialedition/mods/22075)              | 600+ lines for guards reacting to player deeds/gear  | 26.2K endorsements. Older mod — verify 1.6.1170.                 |
| [Shouts of Stallholders](https://www.nexusmods.com/skyrimspecialedition/mods/139025)                 | AI-Generated Content                                 | Evaluate voice quality.                                           |
| [Naked Comments Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/142249)                | NPC comments on player nudity.                       | Alternative                                                       |
| [Collision Dialogue Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/115079)            | Dialogue triggered by NPC collision events.          | Alternative                                                       |
| [Chattier Hunters and Fishermen](https://www.nexusmods.com/skyrimspecialedition/mods/179154)         | Expanded ambient dialogue for hunters and fishermen. | Alternative                                                       |
| [Chatty NPCs and Followers](https://www.nexusmods.com/skyrimspecialedition/mods/133266)                | Varied idle/contextual dialogue for all NPCs and followers. No behavior changes. | Baseline — complements existing faction-specific dialogue expansions. |

### Follower Dialogue Expansion (FDE) series by Anbeegod

> AI-voiced, each ESL-flagged. Core entries listed below; the [official FDE collection](https://next.nexusmods.com/skyrimspecialedition/collections/uu3kpb) includes 26 mods total. All claim 100% compatibility and safe mid-save add.

| Follower                                                                                    | Lines | Notes                            |
|---------------------------------------------------------------------------------------------|-------|----------------------------------|
| [FDE — Aela the Huntress](https://www.nexusmods.com/skyrimspecialedition/mods/114801)       | 2700+ | Romance arc, werewolf mechanics. |
| [FDE — Brelyna Maryon](https://www.nexusmods.com/skyrimspecialedition/mods/113359)          | 400+  |                                  |
| [FDE — Lydia](https://www.nexusmods.com/skyrimspecialedition/mods/119226)                   | 400+  |                                  |
| [FDE — Roggi Knot-Beard](https://www.nexusmods.com/skyrimspecialedition/mods/134694)        |       |                                  |
| [FDE — Aranea Ienith](https://www.nexusmods.com/skyrimspecialedition/mods/141907)           | 495   |                                  |
| [FDE — Borgakh the Steel Heart](https://www.nexusmods.com/skyrimspecialedition/mods/133571) | 478   |                                  |
| [FDE — Uthgerd the Unbroken](https://www.nexusmods.com/skyrimspecialedition/mods/122487)    | 233   |                                  |
| [FDE — Ysolda](https://www.nexusmods.com/skyrimspecialedition/mods/124787)                  | 180   |                                  |
| [FDE — Jenassa](https://www.nexusmods.com/skyrimspecialedition/mods/120255)                 | 500+  |                                  |
| [FDE — Olfina Gray-Mane](https://www.nexusmods.com/skyrimspecialedition/mods/172562)        | 578   |                                  |
| [FDE — Mjoll the Lioness](https://www.nexusmods.com/skyrimspecialedition/mods/116025)       | 451   | Quest and location awareness.    |
| [FDE — Faralda](https://www.nexusmods.com/skyrimspecialedition/mods/155510)                 | 441   | Self-contained follower, personal quest. Verify overlap with College Quest Expansion. |
| [FDE — Eola](https://www.nexusmods.com/skyrimspecialedition/mods/157012)                    | 233   | Namira cultist dialogue.         |
| [FDE — Ralof](https://www.nexusmods.com/skyrimspecialedition/mods/180198)                   | 551   | [INFERENCE] AI-voiced, ESL, 100% compatible, safe mid-game. |
| [FDE — Senna](https://www.nexusmods.com/skyrimspecialedition/mods/183143)                   | 243   | [INFERENCE] AI-voiced, ESL, safe mid-game. |
| [FDE — Lisette](https://www.nexusmods.com/skyrimspecialedition/mods/177717)                 | 243   | [INFERENCE] AI-voiced, ESL, safe mid-game. |
| [FDE — Marcurio](https://www.nexusmods.com/skyrimspecialedition/mods/174725)                | 210   | [INFERENCE] AI-voiced, ESL, safe mid-game. |
| [FDE — Saadia](https://www.nexusmods.com/skyrimspecialedition/mods/170684)                  | 231   | [INFERENCE] AI-voiced, ESL, safe mid-game. |
| [FDE — Elisif the Fair](https://www.nexusmods.com/skyrimspecialedition/mods/167954)         | 942   | Romance + marriage arc, approval system, Civil War awareness. v2.0. ESL. |
| [FDE — Fura Bloodmouth](https://www.nexusmods.com/skyrimspecialedition/mods/165839)        | 614   | [INFERENCE] 2 personal quests, Volkihar, banter with Aranea/Sapphire/Serana. ESL. |
| [FDE — Sapphire](https://www.nexusmods.com/skyrimspecialedition/mods/147428)                | 208   | Thieves Guild follower. ESL. |
| [FDE — Illia](https://www.nexusmods.com/skyrimspecialedition/mods/137845)                   | 918   | Repeatable v3.0; witch redemption story, bad-weather awareness, banter with Aela/Jenassa. ESL. |
| [FDE — Rayya](https://www.nexusmods.com/skyrimspecialedition/mods/143288)                   | 740   | Housecarl of Falkreath. ESL. Banter with Erik. |
| [FDE — Faendal](https://www.nexusmods.com/skyrimspecialedition/mods/130418)                 | 240   | Bosmer huntsman. ESL. |
| [FDE — Camilla Valerius](https://www.nexusmods.com/skyrimspecialedition/mods/128144)        | 581   | Riverwood. ESL. v2.0.1 — includes marriage/romance content. |
| [FDE — Jordis the Sword-Maiden](https://www.nexusmods.com/skyrimspecialedition/mods/117930) | 191   | Housecarl of Solitude. ESL. |
| [FDE — Erik the Slayer](https://www.nexusmods.com/skyrimspecialedition/mods/116719)         | 222   | Rorikstead. ESL status not stated on page — verify. |

| Mod                                                                                     | Description                 | Notes                |
|-----------------------------------------------------------------------------------------|-----------------------------|----------------------|
| [Extended NPC Dialogue Hub](https://www.nexusmods.com/skyrimspecialedition/mods/179341) | Central dialogue framework  |                      |
| [Small Talk](https://www.nexusmods.com/skyrimspecialedition/mods/168228)                | NPC-to-NPC ambient dialogue | SKSE plugin, no ESP. |
| [Companions Dialogue Bundle](https://www.nexusmods.com/skyrimspecialedition/mods/93592) | Expanded Companion faction dialogue bundle.       | Alternative |
| [Snow Elf Dialogue](https://www.nexusmods.com/skyrimspecialedition/mods/155222) | Race-aware dialogue for Snow Elf PCs across quests — Helgen, TG, DB, Dawnguard. | AI-voiced (ElevenLabs). Supports The Ancient Falmer, Lost Races of Nirn, True Snow Elf Race. Requires SKSE, Address Library, KID. |
| [Custom Race Dialogue](https://www.nexusmods.com/skyrimspecialedition/mods/169521) | Consolidated race-dialogue mod combining Snow Elf, Dwemer, Ayleid, Maormer, Tsaesci. | Same author as Snow Elf Dialogue. Incompatible with Race Compatibility Dialogue SSE. |
| [Skyrim Revoiced](https://www.nexusmods.com/skyrimspecialedition/mods/178085) | Revoiced AI-overhaul — NPC voice diversity across all holds and factions. Compatible with existing dialogue expansions. | Large-scale voice replacer. Test for overlap with FDE series and custom follower dialogue. |

---

## Custom Followers
Custom fully-voiced follower additions with authored dialogue, quest commentary, and personal content. The follower framework decision (NFF vs EFF vs AFT) is owned by → [Followers & Reputation](modlist-expanded-followers.md).

| Follower                                                                                                   | Lines | Notes                                                              | Dependencies / Extras                                                                                                                                                                                                                                                      |
|------------------------------------------------------------------------------------------------------------|-------|--------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Lucien — Immersive Fully Voiced Male Follower](https://www.nexusmods.com/skyrimspecialedition/mods/20035) | 5000+ | Personal quest, LoTD-aware. 30K+ endorsements.                     | See framework notes.                                                                                                                                                                                                                                                       |
| [Remiel — Custom Voiced Dwemer Specialist](https://www.nexusmods.com/skyrimspecialedition/mods/51874)      | ~5000 | Custom framework — do not assign via NFF/AFT.                      | Banter with Inigo, Auri, Kaidan 2.                                                                                                                                                                                                                                         |
| [INIGO](https://www.nexusmods.com/skyrimspecialedition/mods/1461)                                          | 7000+ | 100K+ endorsements.                                                | [Inigo Official Patch SE](https://www.nexusmods.com/skyrimspecialedition/mods/62868) required for 1.6.1170. Visual replacer: [Lulu's INIGO 2.0](https://www.nexusmods.com/skyrimspecialedition/mods/126199).                                                               |
| [Khajiit Will Follow](https://www.nexusmods.com/skyrimspecialedition/mods/2227)                            |       | 4 Khajiit followers. ~8K endorsements.                             | See framework notes.                                                                                                                                                                                                                                                       |
| [Song of the Green (Auri Follower)](https://www.nexusmods.com/skyrimspecialedition/mods/11278)             | 1000+ | Romance option, Inigo banter. Custom framework — do not assign via NFF/AFT 2.0+. | Visual replacer: [Majestic Auri](https://www.nexusmods.com/skyrimspecialedition/mods/72361).                                                                                                                                                                               |
| [Sofia — The Funny Fully Voiced Follower](https://www.nexusmods.com/skyrimspecialedition/mods/2180)        |       | Comic relief. May be cut for tonal mismatch.                       | See framework notes.                                                                                                                                                                                                                                                       |
| [Kaidan 2](https://www.nexusmods.com/skyrimspecialedition/mods/19075)                                      | 1200+ | Romance arc. Custom AI — do not assign via NFF/AFT.                | Use [Immersive Features AIO](https://kaidanmod.com) (Nexus Extended Edition deprecated). Extras: [A Makeover for Kaidan](https://www.nexusmods.com/skyrimspecialedition/mods/100586), [Immersive Kaidan Start](https://www.nexusmods.com/skyrimspecialedition/mods/64064). |
| [Miraak Follower Expansion](https://www.nexusmods.com/skyrimspecialedition/mods/160275)                  | 3200+ | Post-Dragonborn-quest Miraak follower: quest/world awareness, spouse dialogue, NPC banter. | Full ESP slot (not ESL since v1.5). Verify NFF integration and quest-stage conditions against Dragonborn DLC quests. |
| [Caesia Follower — Borne of Magic (Revamped)](https://www.nexusmods.com/skyrimspecialedition/mods/13389) | 730+ | Anbeegod's custom mage follower (Morthal inn). Disposition system, romanceable regardless of sex/race, Shezarrine-lore hints. | Older (v2.0, 2017) — verify 1.6.1170; uses RaceMenu, KS Hairdos, Brows, Ordinary Women/SG textures. |
| [Livia Salvian Revamped — Custom-Voiced Follower](https://www.nexusmods.com/skyrimspecialedition/mods/33318) | 1500+ | Imperial knight in Dragonsreach; personal romance quest, custom armor, singing, banter with Onmund. Anbeegod's "Fate of Tamriel"/Shezarrine universe. | v2.2.1 (2020). Original v1 ([mod 20143](https://www.nexusmods.com/skyrimspecialedition/mods/20143)) superseded — install Revamped only. Verify 1.6.1170. |

### Tone & Genre Fit (anbeegod profile)
anbeegod's profile also hosts Final-Fantasy-styled custom followers (Aerith/Tifa-style characters). These are **not adopted** and flagged as tone mismatches: they contradict the grim-dark, Elder Scrolls-native direction of the list. If the user wants them, they belong as clearly-labeled Optional/off-dial entries, not in the core list.

### Framework Notes

**NFF compatibility per follower:**

| Follower | NFF-Safe? | Notes |
|----------|-----------|-------|
| Lucien | Yes | Tested with NFF, also works standalone. |
| Remiel | **No** | Custom system — banter with Inigo, Auri, Kaidan 2. |
| INIGO | Yes | Use Official Patch for 1.6.1170. |
| Khajiit Will Follow | Yes | Designed for NFF. |
| Auri | **No** | Custom system — has Inigo banter. |
| Sofia | Yes | Works under NFF or standalone. |
| Kaidan 2 | **No** | Custom AI — use built-in track/summon powers. |
| Caesia | Verify | Original uses EFF/AFT-friendly dispos system; Revamped dispositions may work under NFF — verify. |
| Livia Salvian | Verify | No own follower system; original v1 explicitly expects EFF or AFT. Verify NFF driver lines. |

- Verify cross-follower banter: Remiel + Auri have Inigo patches; Kaidan 2 has extended banter with Remiel.
- `Backported Extended ESL Support` listed for Majestic Auri does not apply to AE 1.6.1170 — do not install.

### Additional Mods

- [Keep Up — Follower Locomotion Fix](https://www.nexusmods.com/skyrimspecialedition/mods/169808) — Alternative. Prevents followers from getting stuck behind the player. Evaluate after the follower framework baseline is locked.

---

## Playable Race Additions
Playable race mods enabling new character options at game start. Snow Elf (Ancient Falmer) race mods are the primary focus — adding the option to play as the last surviving Snow Elf in Skyrim.

### Race Framework

| Mod | Notes |
|-----|-------|
| [RaceCompatibility for Skyrim Special Edition](https://www.nexusmods.com/skyrimspecialedition/mods/26869) | Required by several custom race mods. |
| [Race Compatibility SKSE (RCS)](https://www.nexusmods.com/skyrimspecialedition/mods/122592) | Modern replacement for RaceCompatibility — no ESP/ESM file. Required by Lost Races of Nirn. Do not use alongside RaceCompatibility (ESP). |

### Snow Elf Race Options

| Mod | Type | Notes |
|-----|------|-------|
| [The Ancient Falmer - A Snow Elf Race SE](https://www.nexusmods.com/skyrimspecialedition/mods/16854) | Baseline | Most comprehensive snow elf race mod. Adds Snow Elf race, Gelebor/Vyrthur overhaul, optional followers (Valrysa, Ashian), craftable Ancient Falmer weapons. 2,752 endorsements. Requires RaceCompatibility. Last updated Oct 2023. |
| [Lost Races of Nirn](https://www.nexusmods.com/skyrimspecialedition/mods/69467) | Alternative | Modular race pack: Ayleid, Dwemer, Maormer, Snow Elf, Tsaesci. Separate plugins per race via FOMOD. Requires RCS (no-ESP framework). HPH Addon available ([mod 147619](https://www.nexusmods.com/skyrimspecialedition/mods/147619)). |
| [True Snow Elf Race](https://www.nexusmods.com/skyrimspecialedition/mods/7880) | Alternative | Vanilla-faithful standalone Snow Elf race. Last updated 2018. Does not require RaceCompatibility — standalone BSA. |

### Recommended Companions

| Mod | For | Notes |
|-----|-----|-------|
| [Frosty Snow Elf Skin Renewal](https://www.nexusmods.com/skyrimspecialedition/mods/16854?tab=files) | The Ancient Falmer | Hyperborean BnP skin for Ancient Falmer. Download from the Ancient Falmer Patch Center. Core mod per Ancient Falmer requirements. |
| [High Poly Head For Custom Races](https://www.nexusmods.com/skyrimspecialedition/mods/43098) | The Ancient Falmer | Patches High Poly Head to work with 30+ custom races including The Ancient Falmer. 2,306 endorsements. Requires High Poly Head (off-site, vectorplexis) and RaceMenu. |
| [Lost Races of Nirn - High Poly Head Addon](https://www.nexusmods.com/skyrimspecialedition/mods/147619) | Lost Races of Nirn | HPH patches for Lost Races of Nirn 3.0+. ESP-FE. Includes Dwemer, Maormer, Snow Elf, Tsaesci. |
| [Lost Races of Nirn - Female Skin Textures](https://www.nexusmods.com/skyrimspecialedition/mods/90443) | Lost Races of Nirn | High-quality female textures based on Reverie Skin. UNP/CBBE, 4K-2K, ESP-FE. Fixes neck-seam issues with custom body textures. |

### Risks & Compatibility

- **Ancient Falmer vs Lost Races of Nirn:** These are competing race frameworks. The Ancient Falmer is more comprehensive (followers, spells, leveled-list weapons) but has a larger patch footprint (RaceCompatibility, Patch Center). Lost Races of Nirn is modular, uses the lighter RCS framework, and has better HPH support. **Evaluate which to adopt as baseline** — running both is risky.
- **RaceCompatibility vs RCS:** Do not use both simultaneously. RaceCompatibility (ESP/ESM) is required by The Ancient Falmer. RCS (no ESP) is required by Lost Races of Nirn. This is a hard fork — pick one race framework.
- **Race-aware dialogue:** Both race mods support [Snow Elf Dialogue](https://www.nexusmods.com/skyrimspecialedition/mods/155222) — see NPC Dialogue Expansions section.
- **Alternate start synergy:** The Surviving Falmer ([mod 131974](https://www.nexusmods.com/skyrimspecialedition/mods/131974)) and alternate-start frameworks (Skyrim Unbound Reborn — locked) provide Snow Elf-specific starting scenarios.
- **Third-person/gamepad:** Race mods are character-creation content — no third-person impact beyond face/body visuals at character gen.
- **Perk/Combat overhauls:** The Ancient Falmer adds custom sunfire spells and racial abilities. Verify compatibility with the chosen perk overhaul (Simonrim or other) in → `Magic & Perks`.
- **BodySlide:** Followers from The Ancient Falmer (Valrysa, Ashian) require BodySlide builds for the chosen body mod (CBBE/3BA). Factor into → `Performance` BodySlide rebuild cycles.

---

## FacegenBaseline & NPC Stat Patcher Reference

These Synthesis patchers resolve facegen and stat issues introduced by NPC appearance and behavior overhauls. Both run as part of the Synthesis pipeline documented in → [Bashed Patch & Synthesis Configuration](modlist-performance-patches.md).

### FacegenBaseline

**What it does:** Generates missing or corrected facegen data (face morphology `.nif` files and tint layers `.dds`) for NPCs added or changed by appearance mods. Without it, NPCs can display the black-face bug (dark head on light body), mismatched facial features, or incorrect tint layers.

**When to run:**
- After every change to the NPC appearance stack — adding, removing, or reordering appearance overhauls
- After installing any mod that adds new NPCs (quest mods, world content, new lands)
- After running any Synthesis patcher that changes NPC head parts or face morphs
- Every time the load order of NPC-related plugins changes

**How to set up in Synthesis:**

1. Add the `FacegenBaseline` patcher to your Synthesis pipeline (Stage 1 in → [performance-patches.md](modlist-performance-patches.md#stage-1--npc-ai-and-facegen)).
2. Configure the **Source Mods** list — select every NPC appearance overhaul and any mod that adds NPCs with custom facegen. The patcher reads facegen from these source mods and copies it into the output.
3. Set **Output Mod** to a dedicated mod folder (e.g., `FacegenBaseline Output` in the `Output` MO2 separator).
4. Run Synthesis with the full pipeline — FacegenBaseline runs after KS Hairs Bald Helmets Fixer and HP_NPC_WIGS_TO_HEADPART.

**Configuration options:**

| Option | Recommendation | Notes |
|--------|---------------|-------|
| Source Mods | Select all NPC appearance overhauls + any mod listed in this file that ships facegen | Missed source mods are the #1 cause of black-face |
| Output Mod | Dedicated mod in `Output` separator | Do not output into an existing NPC overhaul mod |
| Overwrite Mode | Replace (default) | Keeps output clean on each rebuild |
| Include Tint Layers | Yes | Required for correct NPC skin/ makeup in dialog |

**Troubleshooting:**

| Symptom | Likely Cause | Fix |
|---------|-------------|-----|
| Black face (dark head, light body) | NPC's facegen `.nif` missing from output, or a later mod overwrites it | Add the NPC's source mod to FacegenBaseline Source Mods; verify load order places FacegenBaseline output after all NPC overhauls |
| Face doesn't match appearance mod (wrong morph, wrong hair) | A different mod's facegen is winning the conflict | Reorder mods so the intended appearance mod loads after conflicting overhauls, then re-run FacegenBaseline |
| Grey face (no tint layers) | Tint layers not generated or not found | Verify "Include Tint Layers" is enabled; check that `Textures\actors\character\FacegenTints` exists in the output mod |
| CTD when approaching an NPC | Corrupted facegen data — mismatched head part count or missing assets | Delete FacegenBaseline output, re-verify all source mods are selected, re-run Synthesis from scratch |
| FacegenBaseline fails with "no facegen found" | Source mods list is empty or the patcher can't find compatible face NIFs | Check that at least one source mod is selected and contains `meshes\actors\character\facegendata\facegeom\` |

### NPCStatRescaler

**What it does:** Rescales NPC stats (health, magicka, stamina, level, skills) to match the list's encounter balance. Ensures NPCs added by appearance or content mods don't fall outside the intended power curve.

**When to run:** After any NPC appearance overhaul, new NPC mod, or encounter-zone change. Runs in the same Synthesis stage as FacegenBaseline.

**Configuration:** Set target stat ranges to match the encounter design in → [Survival, Difficulty, and Balance](modlist-survival-combat.md). Default Synthesis profile applies reasonable vanilla+-derived values.

**Key relationship:** NPCStatRescaler runs after FacegenBaseline in the Synthesis pipeline. If both are active, FacegenBaseline runs first so that NPC records have complete facegen data before stats are rescaled.

---

## Open Research

Open research for the NPCs stack is tracked in `TODO.md`.
