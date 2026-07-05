# NPCs and Creatures

**MO2 Separator:** `NPCs` → `NPCs - Appearance`, `NPCs - Enemies & Creatures`, `NPCs - Population`, `NPCs - Followers`

## NPC Appearance Overhauls → `NPCs - Appearance`

This subsection owns the face, hair, and presentation direction for Skyrim's named NPCs. It does not re-decide the body, skin, and baseline character-visual stack already owned by → `02g`; it decides how far the list pushes NPC-specific styling on top of that baseline. The real question is whether Elder Wilds should lean toward grounded modernization, clearly stylized beauty, or a vanilla-faithful refresh.

### Baseline

- **Northbourne NPCs of Whiterun Hold** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/35404)) — Grounded route. Modern, regionally textured look that current r/skyrimmods signal treats as higher-quality but still grounded. → `NPCs - Appearance`
- **The Men of Winter SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/10902)) — Dedicated male coverage to keep the cast consistent with the female-weighted baseline. Last updated August 2020 — verify 1.6.1170 compatibility before locking. → `NPCs - Appearance`
- **AI Overhaul SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21654)) — NPC schedule and behavior layer. Pairs with any appearance route. → `NPCs - Appearance`
- **Children of the First - An Altmer NPC Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122167)) — Race-specific modular overlay. Applies only to Altmer, stacks cleanly on top of whichever broad baseline is chosen. → `NPCs - Appearance`
- **Children of the Ash - A Dunmer NPC Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122165)) — Race-specific modular overlay. Applies only to Dunmer, stacks cleanly on top of whichever broad baseline is chosen. → `NPCs - Appearance`

### Alternatives

- **High Poly True to Vanilla NPC Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74226)) — Vanilla-faithful fallback if Northbourne drifts too far from familiar identity. → `NPCs - Appearance`
- **Pandorable's NPCs** (AIO) ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78524)) — Beauty-forward branch if the project later accepts the stronger aesthetic shift and patch burden. → `NPCs - Appearance`
- **DIbella's Blessing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82606)) — Modular female-side branch for more authored women without fully replacing the grounded baseline. Covers 233 female characters. → `NPCs - Appearance`
- **Males Of Skyrim by zzjay** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37485)) — Secondary male alternative, actively maintained as of April 2024. → `NPCs - Appearance`
- **The Wolven Widow - SerketHetyt's Elisif Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62209)) — Targeted named-NPC companion for Jarl Elisif. One of the most-seen social scenes. Layer on top of whichever broad route is chosen. → `NPCs - Appearance`
- **Pride of Skyrim** — Later modular target if the project chooses a deeper mixed modular route. → `NPCs - Appearance`

### Notes

- Choosing an overhaul because screenshots look impressive rather than because the world stays coherent in ordinary play is a known trap.
- Letting glamour-forward design overpower the grounded tone, or letting female-weighted packs leave male NPCs visibly mismatched.
- Confirm Northbourne, The Men of Winter, Pandorable's, and High Poly True to Vanilla behave cleanly on Steam 1.6.1170. Check blackface/facegen, dependency, and AI Overhaul SSE load-order pressure before locking.
- Children of the First / Ash are race-specific overhauls — test for facegen/blackface conflicts with whichever broad route is chosen, especially if that route already covers Altmer or Dunmer NPCs.
- Do not duplicate the body/skin baseline already owned by → `02g`.

## Enemy Variety → `NPCs - Enemies & Creatures` → `NPCs - Enemies & Creatures`

This subsection owns how hostile enemy groups feel less repetitive across ordinary play — cleaner bandit variety, better undead variety, or a heavier enemy-overhaul route — without collapsing into an all-purpose creature package. Stays separate from wildlife ecology (→ `07`), combat-system ownership, and later creature-visual/behavior subsections.

### Baseline

- **Lawless - A Bandit Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/88080)) — Cleanest modern vanilla-plus answer to repetitive bandit encounters. Bandits are the most overexposed enemy family; Lawless expands archetypes, tiers, and freshness without the legacy baggage of older packages. → `NPCs - Enemies & Creatures`

### Alternatives

- **OBIS SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4145)) — Heavier legacy bandit route. Bigger compatibility and maintenance burden. → `NPCs - Enemies & Creatures`
- **Haugbui - A Draugr Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/26188)) — Lighter undead route for ancient Nordic ruins. → `NPCs - Enemies & Creatures`
- **The Restless Dead** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94100)) — High-commitment undead redesign with stronger dungeon identity. → `NPCs - Enemies & Creatures`
- **Skyrim Revamped - Complete Enemy Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/14598)) — List-wide enemy rebalance. Accept the combat-balance reach that comes with it before choosing this route. → `NPCs - Enemies & Creatures`
- **Skyrim Immersive Creatures** — Out of scope; overlaps later creature subsections. → `NPCs - Enemies & Creatures`

### Notes

- Lawless and OBIS are not interchangeable (maintenance/design tradeoffs differ). Same for Haugbui vs The Restless Dead (light adjustment vs major redesign).
- Skyrim Revamped can quietly become a combat-balance rewrite the whole list must serve. Verify pressure around encounter zones, dungeon overhauls, quest mods, and spawn additions.
- Confirm all picks behave cleanly on Steam 1.6.1170 with the current quest, dungeon, and world-content stack.

## Creature Visual Overhauls → `NPCs - Enemies & Creatures`

This subsection owns creature-specific visual direction layered on top of the broad baseline in → `02g`. Bellyaches Animal and Creature Pack SSE remains the texture foundation. The question is which additional presentation layers make animals, dragons, and region-specific undead more striking.

### Baseline

- **Fluffworks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56361)) — Broad presentation layer for furred animals. One of the most noticeable broad creature upgrades. → `NPCs - Enemies & Creatures`
- **Bears of the North** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47541)) — Species standout for one of Skyrim's most common large wildlife threats. → `NPCs - Enemies & Creatures`
- **Iconic's Dragon Retexture** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/101712)) — Clean dragon presentation upgrade. → `NPCs - Enemies & Creatures`
- **Draugrs - New models and textures** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123170)) — Mainland draugr visual upgrade, improving the most-seen undead enemy. → `NPCs - Enemies & Creatures`
- **Spider SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182638)) — Spider visual upgrade. Common dungeon enemies with notably dated vanilla models. → `NPCs - Enemies & Creatures`
- **Deer Reworked - Ultimate** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/155433)) — Deer visual upgrade. One of the most common wilderness wildlife sightings. → `NPCs - Enemies & Creatures`
- **Cannibal Draugr on Solstheim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21238)) — Regional specialty giving Solstheim's undead a Bloodmoon-flavored identity. → `NPCs - Enemies & Creatures`
- **Hagraven - New models and Textures** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/160407)) — Hagraven visual upgrade inspired by Adam Adamowicz concept art. Not compatible with other hagraven mesh replacers. → `NPCs - Enemies & Creatures`
- **Butterfly Improved by zzjay - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/37302)) — Lightweight ambient insect upgrade for butterflies and moths. 3K+ endorsements. → `NPCs - Enemies & Creatures`

### Alternatives

- **Fusa Fusa Project - Fluffy Animals** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/5514)) — Older fluffy animal alternative. Compare, don't casually stack both with Fluffworks. → `NPCs - Enemies & Creatures`
- **Splendor - Dragon Variants** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/9670)) — Dragon variety comparison. Last updated September 2017. → `NPCs - Enemies & Creatures`
- **Diverse True Wolves and Dogs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/38058)) — Targeted species follow-up for domestic/wilderness animals. → `NPCs - Enemies & Creatures`
- **Real Rabbits HD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29223)) — Targeted species follow-up. → `NPCs - Enemies & Creatures`
- **Rally's Shaggy Cows of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/47742)) — Targeted species follow-up. → `NPCs - Enemies & Creatures`
- **Realistic Horse Breeds by KrittaKitty** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/7685)) — Targeted species follow-up. Verify 1.6.1170 compatibility before including. → `NPCs - Enemies & Creatures`

### Notes

- Re-solving the creature baseline (→ `02g`) instead of building on it is counterproductive.
- Stacking Fluffworks, Fusa Fusa, and multiple targeted replacers without a clear layering plan will cause fur-shell and shader conflicts.
- Confirm all picks behave cleanly on Steam 1.6.1170 with the current creature baseline. Record pressure around creature meshes, fur shells, horse patches, and overlap with later creature-behavior or enemy-variety picks.

## Creature Behavior Improvements → `NPCs - Enemies & Creatures`

This subsection owns encounter-side creature behavior: how creatures attack, react, and express identity once combat starts. Section → `07` owns ecology, distribution, and wilderness-danger tone; this subsection only decides which behavior-side upgrades make encounters smarter and more distinct.

### Baseline

- **Dragons Use Thu'um** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87085)) — Clean dragon-behavior upgrade. Makes dragons act more intelligently through better shout usage and encounter AI. → `NPCs - Enemies & Creatures`
- **The Restless Dead** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/94100)) — Undead-behavior baseline. Replaces the abandoned `Draugr Upgrades and Improvements` (whose author recommends The Restless Dead). Varies draugr and skeleton AI, combat roles, and threat profiles. → `NPCs - Enemies & Creatures`

### Alternatives

- **Dragon War - A Dragon Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51310)) — Heavier dragon route if the problem is the structure and tempo of dragon fights rather than merely under-AI'd behavior. → `NPCs - Enemies & Creatures`
- **Draugr Upgrades and Improvements** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/21775)) — **Abandoned** (last updated August 2021). Do not use — author recommends The Restless Dead instead. Mentioned only for reference. → `NPCs - Enemies & Creatures`
- **SkyTEST Lite ESL** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84539)) / **Animal Tweaks** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1532)) / **Pelagius's Wildlife AI** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/144909)) — Context-only animal-side mods that drift into section-07 ecology territory. Keep out of baseline unless section-07 overlap is made explicit. → `NPCs - Enemies & Creatures`

### Notes

- Re-opening section-07 wildlife/ecology under the label of creature behavior is a known scope creep risk.
- Letting dragon-overhaul choices stack until visual identity, behavior, and difficulty become one muddy decision.
- Choosing behavior mods that mostly inflate difficulty rather than making behavior more interesting.
- Confirm Dragons Use Thu'um, Dragon War, and The Restless Dead behave cleanly on Steam 1.6.1170. Review compatibility with dragon visual picks (Iconic's Dragon Retexture, Splendor) and undead picks (Haugbui, Cannibal Draugr).

## Civilian And Traveler Population Additions → `NPCs - Population`

This subsection owns the extra background people who make towns, inns, and roads feel used — without re-deciding the city feel, outskirts texture, and roadside atmosphere already handled in section → `07`. The goal is believable incidental presence, not more clutter or bigger settlements.

### Baseline

- **Crowded Streets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127723)) — Compatibility-first crowd route. More civilian presence in cities, towns, and inns via zero-cell-edit, dynamic-cleanup, configurable-density design. → `NPCs - Population`

### Alternatives

- **Travellers of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1973)) — Road-traveler route for busier roads. Coexists with Crowded Streets in principle. LE-era port — verify 1.6.1170 compatibility. → `NPCs - Population`
- **Populated Skyrim Reborn SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/32190)) — Heavier legacy route with higher risk of over-crowding and older compatibility baggage. → `NPCs - Population`
- **MINPCs** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29483)) — Broader world-alive option if the project later wants adventurer-style incidental content rather than pure background population. → `NPCs - Population`
- **Immersive Citizens - AI Overhaul SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/173)) — AI/schedule overhaul. Named as out-of-scope boundary note (known conflict with AI Overhaul SSE in Appearance subsection). → `NPCs - Population`
- **Interesting NPCs SE (3DNPC)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29194)) — Authored content NPCs. Named as out-of-scope boundary note. → `NPCs - Population`

### Notes

- Re-solving section-07 city-feel and roadside-atmosphere by stuffing in more NPCs is a known antipattern.
- Letting roads or inns become conspicuously overfilled is a real risk.
- Confirm Crowded Streets, Travellers of Skyrim, and Populated Skyrim Reborn SSE behave cleanly on Steam 1.6.1170. Record pressure around settlement overhauls, inns, city expansions, navmesh, follower mods, and encounter mods.

## NPC Dialogue Expansions → `NPCs - Appearance`

This subsection owns targeted dialogue additions for existing NPCs — expanding what vanilla characters say without rewriting their identity or adding new voice actors. The goal is more responsive, less repetitive NPC conversations in key social and faction contexts.

### Baseline

- **Dialogue Expansion - Windhelm** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/112415)) — Vanilla-plus dialogue for Windhelm citizens, guards, and jarl court. 180+ lines using existing vanilla voice assets. **Discontinued** (author ceased AI-voice work), but existing downloads function. → `NPCs - Appearance`
- **Dialogue Expansion - Imperial Soldiers** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113208)) — Dialogue for Imperial soldiers across camps, forts, and cities. Also discontinued for the same reason. → `NPCs - Appearance`
- **Bandit Lines Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87961)) — New voiced bandit dialogue using spliced vanilla assets. Pairs naturally with Lawless. → `NPCs - Appearance`
- **Civil War Lines Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139920)) — New voiced dialogue for Imperial and Stormcloak soldiers using spliced vanilla assets. → `NPCs - Appearance`
- **Forsworn and Thalmor Lines Expansion** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/130880)) — Completes the jayserpa enemy-dialogue trilogy. → `NPCs - Appearance`
- **Shouts of Stallholders** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/139025)) — New voiced dialogue for market stall sellers across Skyrim and Solstheim. Tagged AI-Generated Content — evaluate voice quality during playtesting. → `NPCs - Appearance`
- **Follower Dialogue Expansion (FDE) series** by Anbeegod — AI-voiced follower expansions. Start with the full publicly available set of 10 expansions, each ESL-flagged: → `NPCs - Appearance`
  - **FDE - Aela the Huntress** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/114801)) — 2700+ lines, full quest commentary, approval system, romance arc, werewolf mechanics.
  - **FDE - Brelyna Maryon** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/113359)) — 400+ lines, College apprentice focus.
  - **FDE - Lydia** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/119226)) — 400+ lines exploring duty, loyalty, and frustration.
  - **FDE - Roggi Knot-Beard** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134694)) — Kynesgrove miner expanded with quest awareness and personal story.
  - **FDE - Aranea Ienith** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/141907)) — 495 lines, Priestess of Azura with religious commentary.
  - **FDE - Borgakh the Steel Heart** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/133571)) — 478 lines, personal quest, Orc-culture commentary, banter with Illia.
  - **FDE - Uthgerd the Unbroken** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/122487)) — 233 lines, Companions reconciliation arc, banter with Aela.
  - **FDE - Ysolda** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/124787)) — 180 lines, Whiterun merchant-to-follower with darker backstory.
  - **FDE - Jenassa** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120255)) — 500+ lines, Dunmer mercenary with quest awareness and cultural commentary.
  - **FDE - Olfina Gray-Mane** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172562)) — 578 lines, Civil War commentary, approval system.
- Author's official FDE collection: <https://next.nexusmods.com/skyrimspecialedition/collections/uu3kpb>

### Alternatives

- **Extended NPC Dialogue Hub** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/179341)) — Central dialogue hub with expanded generic NPC conversation options. Evaluate after core dialogue stack is locked. → `NPCs - Appearance`
- **Small Talk** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/168228)) — Contextual NPC-to-NPC ambient dialogue in towns and cities. SKSE plugin, no ESP. Complements the dialogue stack. → `NPCs - Appearance`

### Notes

- Dialogue additions can conflict with mods that replace the same NPC records or quest aliases.
- Confirm compatibility with AI Overhaul SSE, Crowded Streets, and any city overhaul touching Windhelm NPCs or Imperial soldier faction assignments.
- FDE series uses AI voice acting. Each is ESL-flagged — verify against chosen NPC appearance overhaul to avoid facegen/blackface issues. 10 mods adds 10 lightweight plugins (well within limit).
- FDE - Olfina Gray-Mane explicitly conflicts with IDE Whiterun (not in current modlist — flag if added later).
- Shouts of Stallholders uses SPID for NPC blocking. Verify SPID is fully functional in the current stack.

## Wildlife Density And Rarity Balance → `NPCs - Enemies & Creatures`

This subsection owns how common wildlife should feel on the landscape once ecology, danger, and creature-identity decisions are handled elsewhere. Section → `07` already answered the ecology side; the question here is whether the province feels too crowded with animals to preserve scale and rarity.

### Baseline

- **True Hunter - fewer animals per square meter** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/25628)) — Straightforward spawn-chance reduction so wildlife sightings feel less constant and more deliberate. → `NPCs - Enemies & Creatures`

### Alternatives

- **No Predators on roads** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11901)) — Route-distribution comparison. Coexists with True Hunter (one solves abundance, the other placement). **Abandoned** (last updated August 2017, LE-era port). Verify 1.6.1170 compatibility. → `NPCs - Enemies & Creatures`
- **Real Wildlife Skyrim SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/17466)) — Broader wildlife rework cautionary reference. Spills into section-07 ecology, behavior, and content scope. → `NPCs - Enemies & Creatures`

### Notes

- Re-opening section-07 wildlife/ecology under the narrower label of rarity tuning is a scope-creep risk.
- Reducing wildlife so aggressively the world feels empty rather than spacious.
- Confirm True Hunter and No Predators on roads behave cleanly on Steam 1.6.1170 with the current section-07/09 wildlife stack.

## Custom Followers → `NPCs - Followers`

This subsection owns custom fully-voiced follower additions — new NPCs with authored dialogue, quest commentary, and personal content that expand the companion layer beyond vanilla followers.

### Baseline

- **Lucien - Immersive Fully Voiced Male Follower** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20035)) — Primary custom-follower baseline. 5000+ lines, personal quest, commentary on vanilla and AE content. Anniversay Edition Creation Club patch available. LoTD-aware. 30K+ endorsements. → `NPCs - Followers`
- **Remiel - Custom Voiced Dwemer Specialist** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51874)) — Breton engineer with ~5000 lines on dwemer ruins, cities, weather. Custom follower framework — do not use with NFF/AFT. Found in Markarth's Silverblood Inn. → `NPCs - Followers`
- **Song of the Green (Auri Follower)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/11278)) — Fully voiced Bosmer archer with 1000+ lines, approval system, mini-quest, romance option, Inigo banter. 19K+ endorsements. → `NPCs - Followers`
  - **Majestic Auri** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72361)) — High-poly visual replacer for Auri. 224K+ unique downloads. → `NPCs - Followers`
- **Sofia - The Funny Fully Voiced Follower** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/2180)) — Comic-relief follower option. Professional voice acting by Christine Slagman. MCM, drunk mechanic, horse summoning. May be cut if playtesting shows tonal mismatch. → `NPCs - Followers`
- **Kaidan 2** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/19075)) — Dedicated romance-arc follower. 1200+ lines, custom home, mini-quests. Custom AI system (does not add to follower count). Use the Immersive Features all-in-one installer from kaidanmod.com (supersedes the deprecated Nexus Extended Edition). → `NPCs - Followers`
  - **A Makeover for Kaidan** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/100586)) — Visual replacer using COtR-inspired assets. → `NPCs - Followers`
  - **Immersive Kaidan Start** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/64064)) — Alternate starting scenario. → `NPCs - Followers`

**Follower framework notes:** Remiel and Auri work best outside NFF (custom systems). Sofia works under NFF or standalone. Lucien tested with NFF but works standalone. Kaidan 2 has a custom AI system — use built-in track-summon powers instead of NFF management.

### Notes

- Custom followers add ~9 ESL-flagged plugins (Lucien + AE patch, Remiel, Sofia, Auri, Majestic Auri, Kaidan 2 + IF, A Makeover for Kaidan, Immersive Kaidan Start) — minimal impact on 254 limit.
- Lucien's Creation Club patch is required for AE content awareness.
- Remiel WILL BREAK under NFF/AFT. Same caution for Auri 2.0+.
- Kaidan 2 Extended Edition has two distribution paths: Nexus (deprecated) and kaidanmod.com AIO (supersedes). Use the AIO path.
- Confirm all custom followers are compatible with the chosen NPC appearance overhaul to avoid facegen issues.
- Coordinate with → `08` if other custom followers (Val Serano) are locked — follower-banter patches may be needed.
- Sofia's comedic tone may clash with the grim-dark presentation pillar.
- Remiel and Auri have Inigo banter patches. Kaidan 2 has extended banter with Remiel. Verify cross-follower banter works.
- Backported Extended ESL Support is listed as a requirement for Majestic Auri but does not apply to Steam 1.6.1170 — do not install.

## Candidate TODO Additions

### NPC Dialogue → `NPCs - Appearance`

- `Naked Comments Overhaul` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/142249>) → `NPCs - Appearance`
- `Collision Dialogue Overhaul` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/115079>) → `NPCs - Appearance`
- `Extended NPC Dialogue` series → `NPCs - Appearance`
- `Chattier Hunters and Fishermen` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/179154>) → `NPCs - Appearance`

### Enemies & Creatures → `NPCs - Enemies & Creatures`

- `Next Gen Dragon VFX` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/176433>) → `NPCs - Enemies & Creatures`
- `Diverse 4thUnknown Dragons` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/162886>) → `NPCs - Enemies & Creatures`
- `Dragons actually fall down` → `NPCs - Enemies & Creatures`
- `Epic Dwarven Centurion Combat - Diverse Centurions` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/181405>) → `NPCs - Enemies & Creatures`
- `Skyrim Bandit Expansion` → `NPCs - Enemies & Creatures`
- `Sleep of the Dead - A Draugr Leather and Shroud Replacer` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/178057>) → `NPCs - Enemies & Creatures`
- `Frozen Electrocuted Combustion` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/3532>) → `NPCs - Enemies & Creatures`
- `Better Butterflies` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/79332>) → `NPCs - Enemies & Creatures`

### NPC AI → `NPCs - Population`

- `Immersive Citizens - AI` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173>) — known conflict with AI Overhaul SSE → `NPCs - Population`

### NPC Framework → `NPCs - Followers`

- `Keep Up - Follower Locomotion Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/169808>) → `NPCs - Followers`

Note: `Lawless` (#124) already in `NPCs - Enemies & Creatures` as baseline pick. `Steal off scoundrels` (#74) already in `Expanded Systems - Followers & Reputation`. `Streamlined Fishing` (#103) already mentioned in `World Content - Quests`.
