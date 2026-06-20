# Adult Content

## Framework Prerequisites

### Core Idea

This subsection owns the animation framework that supports the romance, dialogue, and transactional content below. It does not import the SexLab framework or its associated dependency chain. The baseline choice is OStim Standalone — a modern, standalone adult animation framework that does not require OSA, and that the OStim Romance and Amorous Adventures patch layer depend on.

### Options

- **OStim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/98163> (v7.5 Apr 2026) — the modern adult animation framework for Skyrim SE/AE. Standalone means it does not require OSA or any legacy dependency. It provides the animation system that OStim Romance and the Amorous Adventures OStim patch build on. The maintained branch after OStim NG.
- **OStim Community Resource** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106519> — a shared framework and dependency required by various OStim add-on mods. Install alongside OStim Standalone as a prerequisite for the broader OStim ecosystem.
- **Animation packs for OStim Standalone**: the recommended baseline is `Open Animations Romance and Erotica (OARE)`. Additional coverage from **Additional Leito's Animations for Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/104995> (Leito's set, ~150 animations) and **Anub's animations for Ostim Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/101918> (~685 animations). Both expand scene variety substantially beyond the baseline OARE pack.
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

- OStim Standalone runs on Steam 1.6.1170 without crashes at initialisation.
- OStim Romance and the AA OStim patch load without missing master errors.
- The stack does not require or load OSA or SexLab.

## Romance Quests

### Core Idea

This subsection owns structured romance content — quests with dialogue, relationship progression, and adult scenes built on the OStim framework. The Amorous Adventures ecosystem is the anchor: a fully voiced, multi-quest romance expansion for vanilla NPCs, modernised through a dialogue rewrite, an AI revoice, and an OStim bridge patch. OStim Romance adds broader romance mechanics for any eligible NPC.

### Options

- **Amorous Adventures** (Nexus 7305) — the base mod. Fully voiced romance quests for a wide cast of vanilla NPCs, written as romantic comedy. The writing tone is uneven — some quests land well, some lean into cringe — which the Dialogue Rewritten patch addresses.
- **Amorous Adventures - Player Dialogue Rewritten** (Nexus 38989, updated Sep 2024) — a full rewrite of all player dialogue lines, item descriptions, and quest messages in AA. Fixes the cringe problem while preserving the quest structure. Required companion to the base AA.
- **Amorous Adventures Revoiced Complete** (Nexus 127289) — AI-revoice of all AA dialogues using ElevenLabs for consistent quality. Optional on top of Dialogue Rewritten; replaces original audio with higher-quality AI-generated VO.
- **Amorous Adventures OStim Standalone - Rewrite and MCM Patch with Fixes** (Nexus 150577, May 2025) — bridges AA into OStim Standalone. Works with Dialogue Rewritten. This is the key compatibility piece: without it, AA uses its own scene system instead of OStim.
- **OStim Romance** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/107671> — adds romance dialogue and interactions for any eligible NPC using the OStim system. Separate from AA — provides sandbox romance mechanics.
- **OStim Romance - No Time Skip** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/108419> (updated Dec 2024) — simple edit that stops OStim Romance from skipping in-game time after interactions.
- **A Warm Embrace** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/182072> — adds kiss and hug interactions for NPCs the player has a strong relationship with. A lightweight affection layer that pairs with OStim Romance and AA without requiring its own quest framework.
- **Amorous Adventures for OStim Standalone - Patch and Fixes** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69248> — an earlier OStim Standalone patch for AA. The newer rewrite (Nexus 150577) is preferred, but this is listed as an alternative or supplementary option if the newer patch has version gaps with specific AA versions.
- **Amorous Adventures - Curse of the Dead Bride - Bug Fix** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/155972> — fixes an uncommon bug where Elisif's AA quest "Curse of the Dead Bride" fails to start. Install alongside the AA stack if that quest is important to the playthrough.

- **Amorous Adventures OStim Standalone - OStim Sequences** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/106773> — adds hand-picked OStim sequences to AA unique romance encounters with furniture awareness (beds, tables, chairs). Companion to the AA OStim patch that upgrades scene choreography.
- **Amorous Adventures for Ostim - Script Fix** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/90570> — adds a vampire-status check to Sybille Stentor's AA quest scene, preventing a vanilla bug where vampire players contract Sanguinare Vampiris. 1,888 endorsements. Install as an overwrite after the AA OStim patch.
- **More Adventures For OStim** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/66313> — 7 mini-quests/dialogues to befriend female NPCs with kissing and sexual scenes. Port of the Flower Girls version to OStim. Adds short-form romance content for NPCs not covered by AA.
- **Smooches of Skyrim** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/81304> — adds kissing dialogue and scenes for followers and spouses. A lightweight affection layer that pairs with A Warm Embrace and OStim Romance.
- **Ostim Resolutions (Solutions 2.0) Standalone** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/157328> — expands on OStim Solutions with fully voiced lines and new interactions. Adds OStim-based resolutions to various quests and situations.

### Recommendation

Start with the full **Amorous Adventures stack**: base AA + Player Dialogue Rewritten + AA OStim Standalone patch. The OStim patch is the lock-in dependency since it makes AA use the chosen framework rather than its own legacy scene system. Add Revoiced Complete as a quality-of-life layer on top rather than a core requirement.

Add **OStim Romance** separately as the sandbox romance layer — it covers NPCs that AA does not have quests for, and gives the player a general romance system. The No Time Skip tweak is recommended for immersion, since skipping hours after each scene conflicts with the survival pacing established elsewhere in the list.

Add **A Warm Embrace** as a lightweight affection layer on top of both AA and OStim Romance — kiss/hug interactions are a low-cost way to make relationships feel physical without full scenes.

Add **Amorous Adventures - Curse of the Dead Bride - Bug Fix** as a precautionary install alongside the AA stack to prevent a known Elisif quest blocker.

Do not treat OStim Romance as a replacement for AA. Their tone and coverage differ: AA is authored questlines with specific NPCs; OStim Romance is a generic system for any NPC.

### Risks & Compatibility

- The AA OStim Standalone patch requires OStim Standalone as a master. Install in the right order (OStim Standalone first, AA patch second).
- Confirm AA OStim Standalone patch sequences match the current Dialogue Rewritten version — the patch description explicitly targets that combination.
- OStim Romance and AA may overlap on the same NPCs. Decide which system takes priority per NPC, or accept that both dialogue trees appear.
- Revoiced Complete replaces AA audio files; ensure it is compatible with the Dialogue Rewritten and OStim patch versions.
- Confirm all mods work on Steam 1.6.1170 before locking the stack.
- 2-year age rule: Amorous Adventures (2017) is older than 2 years, but its continued maintenance, the Dialogue Rewritten update (Sep 2024), the AA OStim Standalone patch (May 2025), and the Revoiced Complete update all keep the ecosystem within the active-modernisation window.

### Acceptance Criteria

- AA quests run through OStim rather than the legacy scene system.
- Player dialogue from Dialogue Rewritten displays correctly alongside AA quests.
- No missing master errors or script conflicts at load.
- OStim Romance interactions do not break AA quest scenes on the same NPCs.

## Transactional/Prostitution Content

### Core Idea

This subsection owns the "choosing to be a whore, being with a whore" pillar — dialogue-driven transactional sex work that fits the tone of a grim-dark world where survival sometimes means selling your body. The content should be dialogue-first, playable through speechcraft and choice, and compatible with OStim Standalone. Explicit animation is not required; fade-to-black is acceptable. No exploitative, BDSM, or punitive mechanics.

### Options

- **Simple Player Prostitution** (LoversLab, updated May 2025) — the primary candidate. Dialogue-based prostitution with tavern and Dibella temple mechanics. Speechcraft-based payments, NPC approach system, configurable fade-to-black. Built for OStim Standalone compatibility. No SexLab dependency. The mod's tone is transactional rather than exploitative: the player chooses to engage, negotiates a price, and the act fades to black or plays through OStim.
- **OStim Profession** (Patreon, May 2025 by VersuchDrei) — a newer profession system from the broader OStim ecosystem. May become a future alternative if it matures, but currently less proven than Simple Player Prostitution. Worth tracking as a potential upgrade path.
- **OStim - OCrime** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/64150> — adds crime consequences for public sex acts. Guards intervene, fines apply. Adds a risk-reward layer to transactional and romance content in public spaces.

### Recommendation

Use **Simple Player Prostitution** as the baseline. It fits the design constraints: OStim Standalone compatible, dialogue-driven, no exploitation mechanics, configurable fade-to-black. The tavern and Dibella temple integration gives the player natural in-world places to engage with the system rather than a generic menu.

Keep **OStim Profession** as a tracked alternative for future evaluation, but do not include it in the current list until it has broader community signal and stability reports.

### Risks & Compatibility

- LoversLab mods require manual download — they are not on Nexus. Document the install steps clearly in the guide.
- Simple Player Prostitution may have name or file changes over time. Verify the current LoversLab page before locking the version.
- The mod's OStim Standalone compatibility should be confirmed against the specific OStim Standalone version in the list.
- Ensure the mod does not trigger scenes in inappropriate contexts (e.g., public areas, children present). The mod's configuration should allow fine-grained location and NPC filtering.
- The "no exploitation" rule means verifying the mod does not include non-consensual scenarios, even as optional content.

### Acceptance Criteria

- Transactions are initiated through dialogue, not through a menu or hotkey.
- The player can set prices, refuse clients, and control when scenes trigger.
- The mod does not add non-consensual or punitive mechanics.
- The mod works with OStim Standalone without requiring SexLab.
- The system integrates naturally into taverns and temples rather than feeling like a standalone activity hub.

## Ambient Adult NPCs And Tavern Content

### Core Idea

This subsection owns ambient adult NPCs added to taverns and inns — not followers, not quest-specific romance targets, but background characters with adult dialogue and services.

### Options

- **Immersive Wenches** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/595> — adds wenches (serving wenches, barmaids, maid wenches) to every inn in Skyrim with custom scenes, dialogue, barmaid services, and quests. Visible community signal includes troubleshooting reports; evaluate stability before locking into the load order. Previously flagged as rejected in `modlist-09.md` due to support concerns; added here per explicit user request.
- **Immersive Wenches SE 2 - Ostim Patch** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/152991> — bridges Immersive Wenches scenes to play through OStim Standalone instead of fade-to-black. Requires both Immersive Wenches and OStim Standalone.
- **Immersive Wenches Dialogue Boost** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/120307> — adds 1,000+ custom voice lines for the ten most-used voice types in Immersive Wenches, tweaks player dialogue, and expands written content (buff/description/quest text). Plug-and-play add-on with no conflicts with the OStim patch or Buxom Wench Yuriana.

### Recommendation

Add **Immersive Wenches** as an ambient tavern layer. It populates inns with NPCs that have more to do than sit at tables, and the OStim patch ensures scenes use the chosen framework. Treat stability as the gate: test in a fresh save through multiple inn visits before locking into the load order.

### Risks & Compatibility

- Immersive Wenches has documented compatibility notes with inn-overhaul mods, AI packages, and city overhauls. Check against the locked city and interior list.
- The mod adds NPCs and AI packages that increase script load in populated cells. Test in riften and solitude inns specifically.
- The OStim patch must match both the Immersive Wenches version and the OStim Standalone version.
- 2-year age rule: Immersive Wenches (original 2017, but still maintained — latest files as of 2024) is within the active-modernisation window because the OStim patch (2024) keeps the ecosystem current.

### Acceptance Criteria

- Inn wenches appear and function without breaking vanilla inn AI.
- OStim patch triggers scenes through OStim rather than fade-to-black.
- No crashes or script lag in populated inns after multiple visits.
- The OStim patch loads without missing master errors.

## Dialogue Expansions With Adult Content

### Core Idea

This subsection owns follower dialogue expansions that include romance content, marriage options, or adult-adjacent dialogue — separate from but complementary to the Amorous Adventures quest layer. These mods expand specific NPCs with deeper, more reactive dialogue that acknowledges the player relationship and can include romantic or sexual content.

### Options

- **Follower Dialogue Expansion - Jenassa** (Nexus 120255, by anbeegod, updated Mar 2026, v7.0) — adds 1,785 lines to Jenassa with quest awareness, location awareness, an approval system, and a **romance quest** (added in v5.0). The romance content includes family life and banter with the player's children. The mod frames Jenassa as a hardened mercenary whose trust the player can earn — consistent with the grim-dark tone.
- **Serana Dialogue Expansion** (Nexus 121920, by Garmagic, updated Jan 2026, v1.2) — adds 3,409 voice files for Serana across all three main questlines. The **Romance addon** (separate file, 1,272 voice files) adds a full romance quest chain with scenes, a circlet, and a ring. The mod keeps Serana's personality close to vanilla and does not allow marriage — the romance arc is about healing and trust, not a wedding.
- **Follower Dialogue Expansion series (other NPCs)** — anbeegod's broader series covers other followers (e.g., FDE - Aela, FDE - Mjoll, FDE - Uthgerd, etc.) with varying levels of romance content. Evaluate per-NPC rather than blanket inclusion.

### Recommendation

Include **Serana Dialogue Expansion + Romance addon** as the baseline for Serana content. It has strong community signal (3,056 endorsements, 3,387 posts), active maintenance, and a clear romance arc that does not force marriage. It is also a natural pair with the Dawnguard content in the list.

Include **Follower Dialogue Expansion - Jenassa** as a complementary dialogue expansion for a hireable follower with a romance quest. Jenassa's tone as a cynical mercenary fits the grim-dark world feel.

For the broader anbeegod FDE series, add per-NPC on a case-by-case basis rather than bulk-including the entire series. Evaluate based on whether the NPC is already in the modlist, whether the romance content adds meaningful depth, and whether AA already covers that NPC.

### Risks & Compatibility

- Serana Dialogue Expansion has documented incompatibilities with **Immersive Citizens** (can prevent scenes), **Palaces and Castles Enhanced** (breaks romance quest), and **EEKs Whiterun Interiors** (clipping with alchemy table). Verify which of these are in the list and create load-order guidance or patches.
- FDE Jenassa is 100% compatible with any other mod including other dialogue expansions. No known conflicts.
- Both mods use AI-generated voice. Disclose this in the guide for players who may object.
- Serana Dialogue Expansion should be installed **before** meeting Serana in Dimhollow Crypt — document this install timing in the guide.
- FDE Jenassa is safe to add mid-save (per author).
- If AA covers the same NPC as a FDE mod, check for narrative duplication rather than technical conflict — the mods do not conflict technically but may tell contradictory stories.
- The 2-year age window: Serana Dialogue Expansion (Jul 2024) and FDE Jenassa (May 2024) are both within or near the window, and both are actively maintained.

### Acceptance Criteria

- Serana Dialogue Expansion romance quest completes without scene-breaking bugs on 1.6.1170.
- FDE Jenassa romance quest triggers and completes alongside Jenassa's hireling dialogue.
- No voice overlap or dialogue desync between AA, FDE, and SDE on shared NPCs.
- Install timing requirements documented in the guide.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
