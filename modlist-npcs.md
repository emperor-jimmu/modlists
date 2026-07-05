# NPCs

**MO2 Separator:** `NPCs` → `NPCs - Appearance`, `NPCs - Population`, `NPCs - Followers`

> Creature/enemy content (Enemy Variety, Creature Visual Overhauls, Creature Behavior, Wildlife Balance) moved to → [Creatures and Enemies](modlist-creatures.md).

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
- **Pandorable's NPCs (AIO)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/78524)) — Beauty-forward branch if the project later accepts the stronger aesthetic shift and patch burden. → `NPCs - Appearance`
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

## Civilian And Traveler Population Additions → `NPCs - Population`

This subsection owns the extra background people who make towns, inns, and roads feel used — without re-deciding the city feel, outskirts texture, and roadside atmosphere already handled in section → `07`. The goal is believable incidental presence, not more clutter or bigger settlements.

### Baseline

- **Crowded Streets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/127723)) — Compatibility-first crowd route. More civilian presence in cities, towns, and inns via zero-cell-edit, dynamic-cleanup, configurable-density design. → `NPCs - Population`

### Alternatives

- **Travellers of Skyrim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1973)) — Road-traveler route for busier roads. Coexists with Crowded Streets in principle. LE-era port — verify 1.6.1170 compatibility. → `NPCs - Population`

### NPC Name Variety

This subsection owns NPC name randomization and distribution, making named NPCs feel more regionally distinct and diverse without changing their appearance or dialogue. The goal is name immersion — guards, bandits, merchants, and commoners should have names that reflect their race, culture, and region.

- **NPCs Names Distributor** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/73081)) — SKSE plugin framework that distributes name variations to NPCs based on race, faction, and location. The engine that powers the name packs below. → `NPCs - Population`
- **Tamrielic Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/73153)) — Adds racially appropriate names to all human NPCs (Nord, Imperial, Redguard, Breton). → `NPCs - Population`
- **Reachmen Tribes Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/73312)) — Reachman-specific name pack for Forsworn and Reach-aligned NPCs. → `NPCs - Population`
- **Ashlander Nomads Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/73315)) — Ashlander-specific name pack for Dunmer NPCs in Solstheim and Morrowind-flavored content. → `NPCs - Population`
- **Dovah Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74053)) — Dragon-name pack. Gives named dragons lore-friendly Dovahzul names. → `NPCs - Population`
- **Daedric Names** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74055)) — Daedra-name pack. Gives spawned daedra (Dremora, etc.) lore-appropriate names. → `NPCs - Population`
- **Player Name Randomizer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/92438)) — SKSE plugin that randomizes the player character's display name from a configurable list on new game start. Independent (no dependency on NPCs Names Distributor). → `NPCs - Population`
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

## Custom Followers → `NPCs - Followers`

This subsection owns custom fully-voiced follower additions — new NPCs with authored dialogue, quest commentary, and personal content that expand the companion layer beyond vanilla followers.

### Baseline

- **Lucien - Immersive Fully Voiced Male Follower** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/20035)) — Primary custom-follower baseline. 5000+ lines, personal quest, commentary on vanilla and AE content. Anniversary Edition Creation Club patch available. LoTD-aware. 30K+ endorsements. → `NPCs - Followers`
- **Remiel - Custom Voiced Dwemer Specialist** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51874)) — Breton engineer with ~5000 lines on dwemer ruins, cities, weather. Custom follower framework — do not use with NFF/AFT. Found in Markarth's Silverblood Inn. → `NPCs - Followers`
- **INIGO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/1461)) — Fully voiced Khajiit follower. 7000+ lines, personal quest, extensive world commentary, banter with multiple custom followers (Lucien, Auri, Remiel). Community-canonical (100K+ endorsements). → `NPCs - Followers`
    - **Inigo Official Patch SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62868)) — Official compatibility patch for AE and Creation Club content. Required for 1.6.1170. → `NPCs - Followers`
    - **Lulu's INIGO 2.0** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126199)) — High-poly visual replacer for INIGO. Modernizes his appearance while staying faithful to the original design. Requires the base mod. → `NPCs - Followers`
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

### NPC AI → `NPCs - Population`

- `Immersive Citizens - AI` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/173>) — known conflict with AI Overhaul SSE → `NPCs - Population`

### NPC Framework → `NPCs - Followers`

- `Keep Up - Follower Locomotion Fix` (Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/169808>) → `NPCs - Followers`
