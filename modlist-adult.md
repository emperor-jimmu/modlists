# Adult Content

**MO2 Separator:** `Adult Content`

## Framework Prerequisites → `Adult Content`

This subsection owns the animation framework that supports the romance, dialogue, and transactional content below. It does not import the SexLab framework or its associated dependency chain. The baseline choice is OStim Standalone — a modern, standalone adult animation framework that does not require OSA, and that the OStim Romance and Amorous Adventures patch layer depend on.

### Baseline

- **OStim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/98163)) — The modern adult animation framework for Skyrim SE/AE. Standalone means it does not require OSA or any legacy dependency. Provides the animation system that OStim Romance and the Amorous Adventures OStim patch build on. The maintained branch after OStim NG. → `Adult Content`
- **OStim Community Resource** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/106519)) — A shared framework and dependency required by various OStim add-on mods. Install alongside OStim Standalone as a prerequisite for the broader OStim ecosystem. → `Adult Content`
- **OARE - Open Animations Romance and Erotica** — Recommended animation pack baseline. → `Adult Content`
- **Additional Leito's Animations for Ostim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/104995)) — Leito's set, ~150 animations. → `Adult Content`
- **Anub's animations for Ostim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/101918)) — ~685 animations. → `Adult Content`
- **PPA - Procedural Penis Animations** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/172002)) — Procedural physics addon that animates and aligns with CBPC collision. Adds physical believability to OStim scenes without replacing the animation framework. → `Adult Content`
- **OSmp - Automatic SMP physics toggle for OStim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/72547)) — Automatically toggles SMP physics on/off for player and NPCs during OStim scenes. ESL-flagged, supports CBBE 3BA and HIMBO. → `Adult Content`
- **Female Moan Voicesets For Ostim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/121383)) — 38 female moan/climax voicesets keyed to voice types, giving different NPCs distinct moans. → `Adult Content`
- **Ostim SA-Sound Replacer-Blowjob** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131890)) — Sound replacement for blowjob scenes. → `Adult Content`
- **Male Orgasm Sounds For Ostim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/132396)) — Male climax moan and cum sound effects. → `Adult Content`
- **OCum Ascended - Cum and Orgasm Mechanics for OStim** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77506)) — Adds cum and orgasm mechanics including visual cum layers, orgasm-tracking, and scene progression based on arousal. Expands OStim's physiological feedback layer beyond sounds into visible consequence. → `Adult Content`
- **Clean Navigation Icons for OStim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/181886)) — 62 navigation icons for OStim Standalone menus. UI polish, zero gameplay impact. → `Adult Content`
- **Animation Pack Icons for OStim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/181880)) — 18 icons for animation packs in the OStim scene menu. Complements Clean Navigation Icons. → `Adult Content`
- **OTooTiredToMove - Experience true exhaustion after climax in OStim Standalone** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/154112)) — Optional gameplay addon. Temporarily immobilises the character after scene climax to simulate exhaustion. Adds a recovery-moment consequence without script overhead. → `Adult Content`

### Alternatives

- **SexLab** — Legacy framework. Not baseline because OStim Standalone is the modern maintained choice and avoids SexLab's dependency chain.
- **OSA** — Legacy dependency. OStim Standalone eliminated the OSA requirement.

### Notes

- OStim Standalone must not be loaded alongside legacy OSA or SexLab. Verify no other mod in the list pulls those in as transitive dependencies.
- OStim Romance and the AA OStim patch must match the same OStim Standalone version.
- OStim can cause script load if too many scenes are triggered rapidly — keep the animation framework's auto-start settings conservative.

## Romance Content → `Adult Content`

This subsection owns the romance-quest and companion-romance content that runs on top of the OStim framework. The picks here are opt-in quest-driven content rather than ambient framework behaviour.

### Baseline

- **OStim Romance** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/107671)) — The primary romance-content baseline. OStim-native romance addon with active maintenance and the clearest integration path. → `Adult Content`
- **Amorous Adventures OStim Standalone Patch** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/150577)) — Companion for classic NPC romance arcs that OStim Romance does not own. Ports the classic Amorous Adventures content to OStim Standalone. Adds voiced romance quests for vanilla marriage-eligible NPCs. → `Adult Content`

### Alternatives

- **Romance Suite** — Additional OStim ecosystem romance addons. Not baseline; evaluate if more depth is needed after the core romance stack is installed.

### Notes

- Romance content addons must match the installed OStim Standalone version. Lock the framework version first, then verify romance mod compatibility.
- Romance quests add dialogue and quest records that may conflict with content from `modlist-world-content.md` or NPC overhauls from `modlist-npcs.md`.
- Amorous Adventures adds dialogue to specific vanilla NPCs. If `Relationship Dialogue Overhaul` or `Serana Dialogue Add-On` (from `modlist-expanded-systems.md`) also add dialogue for the same NPCs, verify load order resolves correctly.

## NPCs And Dialogue → `Adult Content`

This subsection owns NPC overhauls and dialogue expansions that include adult content — companion mods with romantic or sexual dialogue, and character face/body overhauls designed for the adult content audience.

### Baseline

- **Rigma - A male NPC overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/168535)) — Male NPC overhaul with a focus on attractiveness while maintaining lore-friendly aesthetics. Pairs with CBBE-based female overhauls and HIMCO male body. Includes SOS support and vanilla-facegen compatibility. → `Adult Content`
- **Rigma - KS Hairdos patch** — Adds KS Hairdos hairstyles to Rigma NPC records. → `Adult Content`

### Alternatives

- **Shrooms of Solstheim - A Mushroom Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120050)) — Visual upgrade for Solstheim's flora. Adjacent to adult content primarily because of visual style preferences for the adult-content layer. Not a direct NPC replacement. → `Adult Content`

### Notes

- Rigma conflicts with other male NPC overhauls. If `modlist-npcs.md` locks `The Men of Winter`, Rigma must override it on a per-NPC basis or be reconciled via load order and facegen regeneration.
- Rigma relies on SOS body paths; verify the installed SOS and HIMCO versions are compatible.
- Rigma's facegen should not produce dark-face bugs when layered on top of the chosen NPC baseline.

## Dialogue Expansions → `Adult Content`

This subsection owns dialogue-expansion mods that include adult-themed or romantic dialogue content as a core feature.

### Baseline

- **Haelga Reimagined** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/134046)) — Innkeeper-dialogue expansion for Haelga from Riften's Haelga's Bunkhouse. Expands her character with a more modern, romance-suitable dialogue tree. → `Adult Content`
- **Soul-Crushing Romance - A Molag Bal Dialogue Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/161686)) — Fully-voiced romance dialogue expansion for the House of Horrors quest, adding a romance arc with Molag Bal's priest. → `Adult Content`
- **Blood and Bismuth - A Farkas Dialogue Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/171089)) — Fully-voiced Farkas dialogue expansion with romance content for the Companions follower. → `Adult Content`

### Alternatives

- **The Billy The Goat Mod** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131174)) — Novelty companion mod with adult-themed dialogue. Fully-voiced goat companion with a distinct personality. Optional; not part of the core adult-content stack. → `Adult Content`

### Notes

- Dialogue expansions modify the same NPC voice types and dialogue records that `Relationship Dialogue Overhaul` and quest mods from `modlist-world-content.md` touch. Verify load order resolves all dialogue conflicts.
- Haelga Reimagined, Soul-Crushing Romance, and Blood and Bismuth all add dialogue to specific NPCs. If another mod also overhauls the same NPCs, test for broken dialogue trees.

## Additional Content → `Adult Content`

This subsection owns standalone adult-content mods that do not fit neatly into the framework, romance, or NPC categories above.

### Baseline

- **Simple Bathing** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/159442)) — Adds player-initiated bathing animations in any water source. Thematically adjacent to adult content (nudity context) but functionally a downtime-roleplay mod. → `Adult Content`
- **Simple Bathing Soap Addon** — Adds soap items to make bathing feel more intentional.

### Alternatives

- **BeeHH - Hentai Henchman** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/182069)) — Adds follower slots (up to 9) with adult-content-inspired features. Research item only — not locked until it proves useful beyond the Nether's Follower Framework baseline. → `Adult Content`

### Notes

- Simple Bathing may overlap with `Bathing in Skyrim - Renewed` (from `modlist-expanded-systems.md`). If both are active, configure them so they do not double-trigger bathing mechanics.
- BeeHH adds follower slot changes that conflict with NFF. If both are active, the follower framework must win for stability; BeeHH should only be used for features NFF does not provide.
