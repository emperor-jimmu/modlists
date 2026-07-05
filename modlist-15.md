# Adult Content

**MO2 Separator:** `15 Adult Content`

## Framework Prerequisites → `15`

### Core Idea

This subsection owns the animation framework that supports the romance, dialogue, and transactional content below. It does not import the SexLab framework or its associated dependency chain. The baseline choice is OStim Standalone — a modern, standalone adult animation framework that does not require OSA, and that the OStim Romance and Amorous Adventures patch layer depend on.

### Options

- **OStim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/98163> (v7.4 Apr 2026) — the modern adult animation framework for Skyrim SE/AE. Standalone means it does not require OSA or any legacy dependency. It provides the animation system that OStim Romance and the Amorous Adventures OStim patch build on. The maintained branch after OStim NG.
- **OStim Community Resource** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106519> — a shared framework and dependency required by various OStim add-on mods. Install alongside OStim Standalone as a prerequisite for the broader OStim ecosystem.
- **Animation packs for OStim Standalone**: the recommended baseline is `Open Animations Romance and Erotica (OARE)`. Additional coverage from **Additional Leito's Animations for Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/104995> (Leito's set, ~150 animations) and **Anub's animations for Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101918> (~685 animations). Both expand scene variety substantially beyond the baseline OARE pack. → `15`
- **PPA - Procedural Penis Animations** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/172002> — procedural physics addon that animates and aligns the penis with visual collision. Designed to work with CBPC. Adds physical believability to OStim scenes without replacing the animation framework.
- **OSmp - Automatic SMP physics toggle for OStim** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/72547> — automatically toggles SMP physics on/off for player and NPCs during OStim scenes. ESL-flagged, supports CBBE 3BA and HIMBO. Keeps physics active without manual management.
- **Female Moan Voicesets For Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/121383> — 38 female moan/climax voicesets keyed to voice types, giving different NPCs distinct moans.
- **Ostim SA-Sound Replacer-Blowjob** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131890> — sound replacement for blowjob scenes.
- **Male Orgasm Sounds For Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/132396> — adds male climax moan and cum sound effects.
- **OCum Ascended - Cum and Orgasm Mechanics for OStim** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77506> — adds cum and orgasm mechanics to OStim scenes, including visual cum layers, orgasm-tracking, and scene progression based on arousal. Expands OStim's physiological feedback layer beyond sounds and exhaustion into visible consequence.
- **Clean Navigation Icons for OStim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/181886> — 62 navigation icons for OStim Standalone menus. UI polish, zero gameplay impact.
- **Animation Pack Icons for OStim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/181880> — 18 icons for animation packs in the OStim scene menu. Complements Clean Navigation Icons.
- **OTooTiredToMove - Experience true exhaustion after climax in OStim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/154112> — optional gameplay addon. Temporarily immobilises the character after scene climax to simulate exhaustion. Adds a recovery-moment consequence to OStim scenes without script overhead.

### Recommendation

Use **OStim Standalone** as the framework baseline, paired with **OStim Community Resource** as a required dependency. Both have active maintenance, clear 1.6.1170 support, and a growing patch ecosystem. The Amorous Adventures OStim Standalone patch (Nexus 150577) and OStim Romance (Nexus 107671) both depend on OStim Standalone, making it the lock-in pick before any romance content.

Bundle the recommended animation packs (OARE, Additional Leito's Animations, or equivalent) at the same time so the framework has animations to play.

Add **OCum Ascended** as the orgasm-mechanics layer on top of the framework. It gives OStim scenes visible progression and consequence, pairing naturally with the existing sound replacers and the OTooTiredToMove exhaustion mechanic.

### Risks & Compatibility

- OStim Standalone should not be loaded alongside legacy OSA or SexLab. Verify no other mod in the list pulls those in as transitive dependencies.
- OStim Romance and the AA OStim patch must match the same OStim Standalone version.
- OStim can cause script load if too many scenes are triggered rapidly — keep the animation framework's auto-start settings conservative.

### Acceptance Criteria

- OStim Standalone loads cleanly on 1.6.1170 without missing-dependency errors.
- OStim Romance and the AA OStim patch (if used) find the correct framework version.
- Animation packs populate the scene list.
- Sound replacers, physics toggles, and orgasm mechanics layer correctly.
- Script load from the framework stays low enough that normal combat and travel are unaffected.

## Romance Content → `15`

### Core Idea

This subsection owns the romance-quest and companion-romance content that runs on top of the OStim framework. The picks here are opt-in quest-driven content rather than ambient framework behaviour.

### Options

- **OStim Romance** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107671> — adds fully-voiced romance content using the OStim framework. Designed as the OStim-native romance addon. → `15`
- **Amorous Adventures OStim Standalone Patch** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/150577> — ports the classic Amorous Adventures content to OStim Standalone. Adds voiced romance quests for vanilla marriage-eligible NPCs. → `15`
- **Romance Suite** — additional romance framework addons from the OStim ecosystem.

### Recommendation

Use **OStim Romance** as the primary romance-content baseline. It is the OStim-native romance addon with active maintenance and the clearest integration path.

Add **Amorous Adventures OStim Standalone Patch** as the classic-quests companion if the list wants coverage for vanilla NPC romance arcs that OStim Romance does not own.

### Risks & Compatibility

- Romance content addons must match the installed OStim Standalone version. Lock the framework version first, then verify romance mod compatibility.
- Romance quests add dialogue and quest records that may conflict with content from `modlist-08.md` or NPC overhauls from `modlist-09.md`. Check for overlapping NPC coverage.
- Amorous Adventures adds dialogue to specific vanilla NPCs. If `Relationship Dialogue Overhaul` or `Serana Dialogue Add-On` (from `modlist-06.md`) also add dialogue for the same NPCs, verify the load order resolves correctly.

### Acceptance Criteria

- Romance quests start and progress correctly on 1.6.1170.
- Dialogue and scene transitions work in third-person with gamepad.
- No quest-breaking conflicts with dialogue or NPC overhauls from other sections.

## NPCs And Dialogue → `15`

### Core Idea

This subsection owns NPC overhauls and dialogue expansions that include adult content — companion mods with romantic or sexual dialogue, and character face/body overhauls designed for the adult content audience.

### Options

- **Rigma - A male NPC overhaul** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/168535> — a male NPC overhaul with a focus on attractiveness while maintaining lore-friendly aesthetics. Designed to pair with the CBBE-based female overhauls already in the list and the HIMCO male body. Includes SOS support and vanilla-facegen compatibility. → `15`
- **Rigma - KS Hairdos patch** — adds KS Hairdos hairstyles to the Rigma NPC records. → `15`
- **Shrooms of Solstheim - A Mushroom Overhaul** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120050> — visual upgrade for Solstheim's flora. Adjacent to adult content primarily because the niche overlaps with the user's visual style preferences for the adult-content layer. → `15`

### Recommendation

Use **Rigma** as the male NPC overhaul for the adult-content section. It provides the visual baseline for male NPCs in romantic contexts, complementing the female NPC baseline from `modlist-09.md`. Add the KS Hairdos patch for hairstyle variety.

### Risks & Compatibility

- Rigma conflicts with other male NPC overhauls. If `modlist-09.md` locks a broad male overhaul such as `The Men of Winter`, Rigma must override it on a per-NPC basis, or the two must be reconciled via load order and facegen regeneration.
- Rigma relies on SOS body paths; verify the installed SOS and HIMCO versions are compatible with the Rigma body records.
- Rigma's facegen should not produce dark-face bugs when layered on top of the chosen `modlist-09.md` NPC baseline.

### Acceptance Criteria

- Rigma NPCs display correctly without dark-face bugs.
- The male NPC visual baseline supports romantic and social scenes without aesthetic mismatch with the female NPC baseline.
- SOS compatibility is verified for the installed body framework.

## Dialogue Expansions → `15`

### Core Idea

This subsection owns dialogue-expansion mods that include adult-themed or romantic dialogue content as a core feature.

### Options

- **The Billy The Goat Mod** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131174> — a novelty companion mod with adult-themed dialogue. Adds a fully-voiced goat companion with a distinct personality and commentary on events. → `15`
- **Haelga Reimagined** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/134046> — a dialogue overhaul for Haelga from Riften's Haelga's Bunkhouse that expands her character and gives her a more modern, romance-suitable dialogue tree. Fits the adult-content layer's goal of making NPC interactions in inns and social spaces less shallow. → `15`
- **Soul-Crushing Romance - A Molag Bal Dialogue Mod** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/161686> — a fully-voiced romance dialogue expansion for the House of Horrors quest, adding a romance arc with Molag Bal's priest. → `15`
- **Blood and Bismuth - A Farkas Dialogue Mod** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/171089> — a fully-voiced Farkas dialogue expansion with romance content for the Companions follower. → `15`

### Recommendation

Lock **Haelga Reimagined** as the innkeeper-dialogue expansion. Lock **Soul-Crushing Romance** and **Blood and Bismuth** as quest-linked romance dialogue expansions. These three add dialogue depth to existing NPCs and quests that the adult-content side of the list builds on.

Treat **The Billy The Goat Mod** as an optional novelty companion rather than part of the core adult-content stack.

### Risks & Compatibility

- Dialogue expansions modify the same NPC voice types and dialogue records that `Relationship Dialogue Overhaul` (from `modlist-06.md`) and quest mods from `modlist-08.md` touch. Verify load order resolves all dialogue conflicts.
- Haelga Reimagined, Soul-Crushing Romance, and Blood and Bismuth all add dialogue to specific NPCs. If another mod in the list also overhaul the same NPC's dialogue, test for broken dialogue trees.

### Acceptance Criteria

- Dialogue expansions for Haelga, Molag Bal's priest, and Farkas play correct audio and advance quest stages correctly.
- No broken dialogue trees from dialogue-record conflicts.
- All content is accessible in third-person with gamepad.

## Additional Content → `15`

### Core Idea

This subsection owns standalone adult-content mods that do not fit neatly into the framework, romance, or NPC categories above.

### Options

- **Simple Bathing** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/159442> — adds player-initiated bathing animations in any water source. Thematically adjacent to adult content (nudity context) but functionally a downtime-roleplay mod. → `15`
- **Simple Bathing Soap Addon** — adds soap items to make bathing feel more intentional.
- **BeeHH - Hentai Henchman** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182069> — adds follower slots (up to 9) and features inspired by adult-content follower frameworks. (Optional, research if this adds stable utility beyond the NFF baseline from `modlist-06.md`.) → `15`

### Recommendation

Add **Simple Bathing** as a downtime-roleplay companion. It gives the player a reason to use water sources and inn bath areas in a way that connects with the adult-content layer's visual and roleplay themes. Keep the Soap Addon as an optional extra.

Keep **BeeHH** as a research item only; do not lock until it proves useful beyond the `Nether's Follower Framework` baseline.

### Risks & Compatibility

- Simple Bathing may overlap with `Bathing in Skyrim - Renewed` (from `modlist-06.md`). If both are active, configure them so they do not double-trigger bathing mechanics.
- BeeHH adds follower slot changes that conflict with NFF. If both are active, the follower framework must win for stability; BeeHH should only be used for features NFF does not provide.

### Acceptance Criteria

- Simple Bathing animations play in third-person with gamepad.
- No conflict with the survival-layer bathing mod from `modlist-06.md`.
- BeeHH (if adopted) does not break NFF follower management.
