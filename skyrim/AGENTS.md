# Repository Guidance

## Mission Statement

Elder Wilds is an opinionated modlist for Skyrim AE 1.6.1170 (Steam) built around five pillars:

- **Modern UI and graphics** — a clean, grim-dark presentation that still reads clearly at 4K.
- **Big, dark, awe-inspiring world** — exploration that makes Skyrim feel vast, threatening, and beautiful.
- **Lots of new content** — quests, dungeons, worldspaces, and encounters that extend the game meaningfully.
- **Modern mechanics** — combat, stealth, movement, and feedback that feel contemporary rather than 2011.
- **Full third-person gamepad parity** — every interaction (lockpicking, reading, menus, crafting, dialogue, looting, favouriting) must work in third-person with a gamepad. No first-person or keyboard/mouse requirement is acceptable.
- **Living the world** — survival, side activities, and full disregard for the Dragonborn quest if you choose. Legacy of the Dragonborn anchors the museum-and-collection pillar.

## What This Repo Is

- This repo is a markdown planning workspace, not an application codebase. All planning files live in the `guide/` directory.
- `guide/modlist.md` is the hub file: project scope, modlist identity pillars, separator mapping table, and the index to numbered section files. The installation guide was split into `guide/install.md` to keep `modlist.md` lean.
- `guide/install.md` contains the full setup guide (pre-installation, toolchain, download instructions, load order build steps, post-install testing).
- There is no build, test, lint, CI, or package-manager workflow to run here.
- `tools/build-modlist-pdf.ps1` generates `rendered/elder-wilds.pdf` from all `guide/*.md` section files using Typst. Run from the repo root or the `tools/` directory.

## File Roles

- `guide/modlist.md` is the hub file: project scope, modlist identity pillars, separator mapping table, and the index to numbered section files.
- `guide/install.md` is the installation guide: pre-installation requirements, toolchain setup, download workflow, load order build sequence, and post-install testing.
- `guide/skypatcher.md` is the SkyPatcher usage & authoring guide: installation, config syntax, filters, authoring recipes, and the Elder Wilds authoring workflow. Referenced from the SkyPatcher section in `guide/modlist-foundations.md`.
- Each numbered `guide/modlist-XX.md` file owns one second-level planning section. Keep the numbering aligned with the index in `guide/modlist.md`.
- Cross-reference convention: use `→ \`X\`` (arrow, space, backtick section or separator name) as the standard inline cross-reference format across all section files. When linking to another section file, prefer `→ [Title](modlist-XX.md)` over a backticked reference.
- `TODO.md` is the central scratch backlog for open research and candidate mods not yet adopted. Section files reference it with an `## Open Research` heading rather than carrying their own `## Candidate TODO Additions` stub.
- `STATUS.md` is the canonical decision register. When a mod in `TODO.md` is reviewed and a verdict is reached (adopted, rejected, tentative with conditions, or requires special install instructions), the decision moves to `STATUS.md`. Once a mod is in `STATUS.md`, remove it from `TODO.md`.
- `guide/modlist-restructure-design.md` is the historical design rationale for the current file conventions. It is not a live planning document; keep it for context but do not edit it as if it were active guidance.
- `guide/modlist-curation.md` is the active curation rulebook. When evaluating mods or making additions, cross-reference its curation principles before committing.

## Lighting & Graphics Direction

- **Community Shaders** is the exclusive graphics framework. No ENB, no LUX family (Lux, Lux CS, Lux Orbis, Lux Via). The lighting baseline is the CS-native stack: CS Light + True Light + Window Shadows Ultimate + Ambient Templates, paired with Based Lighting Configs and Standard Lighting Templates (SLT).
- Road and exterior lighting uses Lanterns of Skyrim II + CS Lantern Lights instead of Lux Via.
- All new mod additions must be CS-compatible. A mod that assumes ENB or requires LUX patches is a poor fit.

## Current Structure

- All planning files (`modlist*.md`, `install.md`) live in `guide/`. Active numbered sections span `guide/modlist-foundations.md` through `guide/modlist-voicing.md`, with sub-file suffixes (02a–h, 06a–e, 14a–e) for sections split across multiple files. Parent overview files (`guide/modlist-graphics.md`, `guide/modlist-expanded-systems.md`, `guide/modlist-performance.md`) index their sub-files and own section-level principles.
- Current section titles: `Foundations and Compatibility`, `Graphics Pipeline` (parent, 02), `PGPatcher` (02a), `Community Shaders` (02b), `Textures & Meshes` (02c), `Lighting` (02d), `Weather & Water` (02e), `Terrain & Flora` (02f), `Characters & Creatures` (02g), `LOD & Distant Detail` (02h), `Modernized UI`, `Animations and Movement`, `Third-Person Gameplay`, `Expanded Systems` (parent, 06), `Character & Progression` (06a), `Magic & Perks` (06b), `Survival & Needs` (06c), `Crafting & Economy` (06d), `Followers & Reputation` (06e), `Immersive Scale and World Feel`, `World Content`, `NPCs`, `Enemies & Creatures`, `Audio and Feedback`, `Survival, Difficulty, and Balance`, `Legacy of the Dragonborn`, `Modlist Curation Rules and Testing Plan`, `Performance and Technical Workflow` (parent, 14), `Performance Strategy` (14a), `Optimization & Configuration` (14b), `Tool Pipeline` (14c), `Bashed Patch & Synthesis Configuration` (14d), `Testing & Maintenance` (14e), `Adult Content`, `Main Character Voicing`.
- `guide/modlist-graphics.md` is the Graphics Pipeline parent overview; it indexes sub-files `Graphics - PGPatcher` through `Graphics - LOD & Distant Detail` covering PGPatcher, Community Shaders, Textures & Meshes, Lighting, Weather & Water, Terrain & Flora, Characters & Creatures, and LOD & Distant Detail.
- `guide/modlist-graphics-textures.md` (Community Shaders) and `guide/modlist-npcs.md` (NPCs) have been reviewed and rewritten/trimmed. The numbered-section template work in `guide/modlist-npcs.md` established the repeatable rewrite pattern used across sections.
- `guide/modlist-animations.md` (Animations and Movement) and `guide/modlist-third-person.md` (Third-Person Gameplay) are fully expanded and treated as established baselines.
- `guide/modlist-expanded-systems.md` (Expanded Systems) is a parent overview; the locked original content lives in five sub-files: `guide/modlist-expanded-character.md` (Character & Progression), `guide/modlist-expanded-magic.md` (Magic & Perks), `guide/modlist-expanded-survival.md` (Survival & Needs), `guide/modlist-expanded-crafting.md` (Crafting & Economy), `guide/modlist-expanded-followers.md` (Followers & Reputation).
- `guide/modlist-ui.md` (Modernized UI) is locked. Baseline picks: `SkyUI` + `Oathvein UI`, `SkyHUD` + `TrueHUD`, `FWMF` + Mirhayasu paper maps, `Compass Navigation Overhaul`, `COCKS`, `Sovngarde Font`.
- `guide/modlist-world-feel.md` (Immersive Scale and World Feel) is moderately expanded but still an open research area.
- `guide/modlist-world-content.md` (World Content) has moderate content and is an active development area with recent mod pick additions (Fishing, Evolving Locations, quest content).
- `guide/modlist-audio.md` (Audio and Feedback) and `guide/modlist-survival-combat.md` (Survival, Difficulty, and Balance) each have expanded content and are open research areas.
- `guide/modlist-creatures.md` (Enemies & Creatures) is a top-level section focused on enemy/creature variety, visuals, behavior, and ecology. NPC-specific content lives in `guide/modlist-npcs.md`. The MO2 separator is `Enemies & Creatures` (matches the canonical entry in `guide/separators.md`).
- All `modlist-*.md` files have had their H2 headings brought into alignment with the `## Topic → separator: \`X\`` convention, their `### Notes` boilerplate replaced with `### Risks & Compatibility` (or specific procedural labels), their `## Candidate TODO Additions` stubs removed in favor of `TODO.md`, and their MO2 separator declarations normalized (singular for one separator, plural for parent + sub-separators).
- `guide/modlist-curation.md` (Modlist Curation Rules and Testing Plan) is the expanded meta-section combining curation guardrails and testing verification.
- `guide/modlist-foundations.md` (Foundations and Compatibility) covers the toolchain setup, conflict-resolution strategy, core libraries, SKSE, mesh/texture fixes, and targeted bugfixes.
- `guide/modlist-lotd.md` (Legacy of the Dragonborn) owns the museum baseline, key companion utilities, expanded quest/artifact integration list, and LoTD patch strategy.
- `guide/modlist-performance.md` (Performance and Technical Workflow) is a parent overview; the full content lives in five sub-files: Performance Strategy, Optimization & Configuration, Tool Pipeline, Bashed Patch & Synthesis Configuration, Testing & Maintenance.
- `guide/modlist-adult.md` (Adult Content) covers OStim framework, romance quests, adult NPCs, and dialogue expansions with adult content.
- `guide/modlist-voicing.md` (Main Character Voicing) covers Dragonborn Voice Over framework, voice packs, and MCVO Generator pipeline.

## Third-Person / Gamepad Design Directive

- `Elder Wilds` is built to be completely playable in third-person with a gamepad. Every mod — gameplay, animation, UI, camera, interaction — must be evaluated for third-person usability and gamepad compatibility first.
- No interaction may require switching to first-person or keyboard/mouse: lockpicking, reading, menus, crafting, dialogue, container looting, and favouriting all have third-person gamepad solutions.
- A mod that works well in first-person or with keyboard/mouse but breaks the third-person gamepad experience (broken camera transitions, missing third-person animations, UI elements only in first person, aiming that assumes a centred crosshair, menus requiring mouse input, prompts assuming keyboard keys) is a poor fit regardless of individual quality.
- First-person parity and keyboard/mouse support are bonuses, not substitutes.

## Content Conventions

- Keep section writing decision-oriented: explain recommendation, alternatives when meaningful, why the baseline is right, risks, research tasks, and acceptance criteria.
- Default subsection structure for numbered section files is: `### Baseline`, `### Alternatives`, `### Risks & Compatibility`. Add an `### Install Order` block only when the section's mods genuinely need explicit load-order guidance. Add a procedural `### Notes`, `### Setup Requirements`, or `### Patcher Load Order` block only when the content would otherwise be lost. Avoid `Core Idea`/`Options`/`Recommendation` H2 templates — they are the legacy academic structure.
- Every `## Topic` H2 in a sub-file that contributes to one specific separator must end with `→ separator: \`X\`` (or `→ separators: \`X\` / \`Y\``) so the separator mapping is visible at the heading level. The exception is parent overview files (`modlist.md`,`modlist-graphics.md`,`modlist-expanded-systems.md`,`modlist-performance.md`), which own multiple separators.
- Every sub-file must declare its MO2 separator(s) on the line immediately after the H1 title using the form `**MO2 Separator:** \`X\`` (one separator) or `**MO2 Separators:** \`X\` → \`Y\`, \`Z\`` (parent + sub-separators). The declaration must match the canonical entry in `guide/separators.md`.
- Do not use boilerplate headings such as repeated `Why This Is The Right Baseline`, `Working Guidance For Elder Wilds`, `What Elder Wilds Should Prioritize`, or `### Notes` blocks when that information can be folded into the table row or into `### Risks & Compatibility`. A standalone `### Notes` heading earns its name only when it carries unique procedural content (specific install order, specific framework requirements, specific load-order rules) — not when it is a list of generic trade-off caveats.
- Avoid restating the same mod, rationale, or compatibility warning across multiple headings in the same subsection. Each important point should usually be stated once in its owning subsection.
- Keep file-wide governance rules in one owning subsection instead of repeating them everywhere. Example: shared animation-stack rules should live in a single conflict-management or prerequisites subsection, not in every animation category.
- Do not pad sections with generic quality bars or obvious testing language. Acceptance criteria should be specific to the subsection's actual decision, and research tasks should exist only when there is real unresolved research left.
- When a section includes operational workflow content (tool setup, build order, config tables, patcher steps), preserve that functional content, but still remove duplicated framing text around it.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `guide/modlist-animations.md` (Animations); broader third-person camera/gameplay framework decisions belong in `guide/modlist-third-person.md` (Third-Person Gameplay).
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

## Nexus Mods Search Workflow

When discovering new mods to recommend:

1. Open `https://www.nexusmods.com/skyrimspecialedition/mods/categories/`
2. Choose the relevant category for the research area
3. Sort by **Downloads** or **Endorsements** to surface the most popular/established mods
4. Browse the top results, open promising pages, and evaluate fit against the modlist's design pillars and compatibility constraints

## Mod Link Verification Rules

- Do not invent or guess Nexus links.
- Use Playwright when necessary to browse and verify pages on NexusMods rather than relying on memory alone.
- Always use Reddit as part of mod research, with `r/skyrimmods` as the primary subreddit for community-signal checks before locking recommendations.
- Prefer canonical base mod pages. Avoid using translation, patch, preset, or add-on pages as the main recommendation unless the section explicitly calls for that type of file.

## Mod Placement Rules

When moving mods from `TODO.md` into their section files:

1. **If overriding/conflicting** — add as an `### Alternatives` entry with a note explaining the conflict and which existing mod it overrides.
2. **If multiple main file options exist** — add a note specifying which file to pick (e.g., "Choose 2K", "Choose the SkyPatched version").
3. **If already present** — do not add again. Check the full section file — the mod may already be listed under a different name or in a different table.
4. **If tentative/unresearched** — add with a note flagging the uncertainty (e.g., "Tentative — evaluate visual and gameplay impact") rather than omitting it or leaving it in TODO forever.

## Research Workflow

- The repo's planning flow is section-by-section, one category at a time.
- Prefer executable/observable evidence over memory: existing repo content, verified Nexus pages, current file state, and Reddit discussion signal.
- Check `r/skyrimmods` for each active research area as the default Reddit source, and only fall back to broader Reddit searching when `r/skyrimmods` does not provide enough signal.
- Before expanding a numbered section, scan for duplicated ownership, repeated rationale, and boilerplate headings so new writing does not reintroduce the same cleanup problems fixed in sections `Foundations`, `Animations`, `Third-Person`, and `NPCs`.
- When updating repository guidance, align `AGENTS.md` to the actual current `guide/modlist.md` index and numbered section file titles rather than older assumptions about section names or completion state.
- Keep `guide/separators.md` aligned with the current `guide/modlist-XX.md` section and stub structure when separators are added, renamed, or reorganized.
- When reorganizing sections, update `guide/modlist.md` index links and keep numbering consistent.

## Workspace Notes

- `.playwright-mcp/` and `*.log` are ignored in `.gitignore`; they are scratch artifacts from verification work, not project content.
- `nexus-*-snapshot.md` files in the repo root are scratch artifacts from playwright-based mod research — clean them up after committing.

## Session Decisions & Verified Baselines (2026-07-29)

These are confirmed from the current modlist state. When evaluating armor/body/physics mods, use these as givens.

### Body & Physics

- **FSMP — Faster HDT-SMP (57339):** Baseline in `modlist-animations.md:232`. Required by OStim and physics outfits. All HDT-SMP armor mods are adoptable.
- **HIMBO (74174):** Male body baseline in `modlist-graphics-characters.md:26`. HIMBO refits for armor mods are relevant.
- **CBBE 3BA:** Female body baseline. CBBE 3BA refits for armor mods are relevant.
- **OBody NG:** Body distribution framework. Works with both CBBE 3BA and HIMBO.

### Quest & World Content

- **VIGILANT (11849):** Listed in `modlist-world-content.md:401` (Vicn Trilogy). Patches for VIGILANT (e.g. Ancient Imperial Armor for Vigilant) are adoptable.
- **Moon and Star (4301):** Listed in `modlist-world-content.md:413`. Undeath Moon and Star patches are adoptable.
- **Beyond Skyrim - Bruma (10917):** Listed in `modlist-world-content.md:376`. Bruma-related patches/replacers are adoptable.
- **LoTD:** Anchors the museum/collection pillar. All quest mod displays in `modlist-lotd.md:19-36`. Undeath LoTD patches should be verified.
- **Undeath Remastered (6180):** Adopted. Classical Lichdom (40802) locked as lich gameplay route. GDOS Door Patch (132038), Camera Fix (52950), Conjuration Absorb Fix (18762), and Facegen Data Patch (20046) required.

### Graphics Framework

- **Community Shaders:** Exclusive graphics framework. No ENB, no LUX. PBR texture companions (e.g. Buoyant Armiger PBR, Dark Apprentice PBR) are in-scope.
- **Parallax hard rule — NEVER install Auto Parallax (79473) or Complex Parallax Materials (95134).** PGPatcher (120946) statically patches meshes/plugins for parallax, Complex Material, and PBR and explicitly supersedes Auto Parallax; CPM is absent from the CS v1.8+ supported-feature list and its rendering lives in CS core Extended Materials. Any question about parallax pre-reqs or either of these two is answered the same way: do not install. See `modlist-graphics-shaders.md` → Parallax Framework Dependencies.
- **Embers XD (37085):** Baseline fire/ember mod in `modlist-graphics-lighting.md:37`. Required by Diverse Campfires (109731).
- **GDOS — Glorious Doors of Skyrim (32376):** Baseline in `modlist-graphics-textures.md:29`. Undeath GDOS Door Patch (132038) is REQUIRED if Undeath is adopted.

### Graphics — Landscape & Sky

- **TomatoRim PBR Landscapes AIO (177621):** Locked landscape texture baseline. PBR-native, chosen for shared-author visual coherence with Tomato's PBR Vanilla Trees (locked tree texture companion to NOTWL). Choose 2K.
- **Enhanced Rocks and Mountains - CM and PBR (121336):** Locked mountain/rock identity. Drop Majestic Mountains entirely.
- **Praedy's Night Sky AIO (47530):** Locked night sky baseline (stars, nebula, galaxy, constellations, moons, auroras). FOMOD-tunable. Choose 2K. 5,795 endorsements, v2.1.
- **BDS3 — Better Dynamic Snow 3 (9121, install v3.6.0 main file):** Locked single-pass projected snow baseline (2026-08-11). **Simplicity of Snow (56235) REJECTED** — double-pass snow incompatible with PBR landscapes (Faultier 125308 explicit ban; TomatoRim 177621 requires BDS 3.6). Better Dynamic Ash (54754) kept for Solstheim worldspace edits only, ESP before the PBR landscape ESP. **BDSPatcher REMOVED from Synthesis Stage 6 (2026-08-11)** — source-verified snow-only (requires `Better Dynamic Snow.esp`, maps only `SnowMaterial*`, no keyword/ash options); BDA is standalone, no patcher needed. See `modlist-graphics-terrain.md` → Snow And Support.
- **Shooting Stars SE (73090):** Locked complementary layer. Script-free dynamic shooting star streaks on top of Praedy's static sky.

### Behavior & Animation

- **Pandora:** Behavior engine baseline. Nemesis-format behavior patches are generally backward-compatible.
- **OAR — Open Animation Replacer:** Conditional animation selection baseline.
- **BFCO — Attack Behavior Framework:** Locked combat framework. MCO rejected. See `modlist-animations.md:184`. BFCO provides built-in gamepad support, jump attacks, swim attacks, and charge attacks.
- **Thundertrot Horse Animations (140941):** Locked horse movement animation baseline (walk, trot, gallop). 763 endorsements, v2.1.
- **Horse Animation Overhaul - WIP (140122):** Locked rider animation baseline with directional movement support. Requires Thundertrot for directional patch.
- **RAO (102881):** Fallback if HAO is abandoned. Same author (mxnedula), 3,804 endorsements, v2.0.

### Weather & Travel

- **Azurite III CS (162153):** Locked weather baseline. FOMOD with darker nights and reduced bloom for tunable grim-dark aesthetic. Requires balanced CS tier (SSGI, SSS, Grass Lighting, Wetness Effects).
- **Journeyman (92220):** Locked fast travel system. Restricts fast travel unless Travel Pack is crafted/purchased. SKSE plugin + ESP. CFTO rejected.
- **Seasons of Skyrim SKSE (62861) + Turn of the Seasons (63623):** Locked seasonal baseline (2026-08-07, user instruction). Companion: Shrubs of Snow (63463). Owns the 4× DynDOLOD/grass-cache seasonal LOD workflow. Seasonal Landscapes (66903) stays rejected.

### Armor & Clothing

- **Immersive Armors** is baseline. HIMBO Conversion V2 (76552) is the male path.
- **FSMP physics armors** are adoptable (FSMP is baseline). Include HDT-SMP patches where available.
- **SPID distribution** companions are relevant for NPC integration of armor mods.
- **Artesian Cloaks of Skyrim (17416):** Locked cloak baseline. Higher-detail cloak mesh/texture replacer. Pairs with Dynamic Artisan Cloaks (146438) for OAR-based cloak physics.
- **Dynamic Artisan Cloaks (146438):** Locked cloak physics layer. OAR-based cloak animations.

### Combat & Difficulty

- **Dragon War (51310):** Locked dragon combat overhaul. Structured encounter tempo. Complements Dragons Use Thu'um (87085, baseline dragon AI).

### Creatures — Undead

- **Skeletons SE (124394):** Locked skeleton model replacer by Xtudo. 2,002 endorsements. Consistent undead visual direction with Draugrs SE (123170) and Spider SE (182638) — all Xtudo baselines.
- **Skeletons SE - Expanded (154872):** Locked BOS-based skeleton variety addon. Install after Skeletons SE. Skeleton Replacer HD (52845) adopted for static bone props only (skulls, ribcages, bandit poles, Hearthfire trophies) — loads before Skeletons SE so creature skeletons still use Xtudo's models. See `STATUS.md` for layered approach details.

### Undeath Decisions

- **Undeath Remastered (6180):** Adopted. Classical Lichdom (40802) locked as lich gameplay route. GDOS Door Patch (132038), Camera Fix (52950), Conjuration Absorb Fix (18762), and Facegen Data Patch (20046) required.

### AI Content Gate

- **AI speech/audio is allowed.** AI-generated voice content (ElevenLabs, xVASynth, 11labs, etc.) is treated the same as traditionally voiced content — no special exclusion, scrutiny, or labelling requirement beyond the Nexus tag. Evaluate AI-voiced mods on quality, compatibility, and tonal fit alone, per → [Modlist Curation Rules](guide/modlist-curation.md) (Curation Principles).
- The "AI-content gate" cited in some earlier reviews is retired as a hard exclusion. Instances already following this: AI-voiced FDE follower series, `Dark Destiny`, `Seeking The Cure`, `Snow Elf Dialogue`, `Shouts of Stallholders`, `Autumngate` (xVASynth add-on), and the Simple Inn Bath DDR expansion.
- **Adopted AI-voiced dialogue expansions (2026-08-07, user instruction):** `Dialogue Expansion - Indaryn-Ingun-Asgeir-Alessandra` (92600) and `Dialogue Expansion - Shor's Stone` (97337) by AdamDunmer — see `modlist-npcs.md` NPC Dialogue Expansions.
- **Retiring the gate is not a blanket green-light:** AI content is no longer excluded for being AI, but a mod is still evaluated on its other merits. `Extended Guard Dialogue` (106523) and `New Female Guard Voices` (125124) **remain REJECTED** on niche coverage (guard-flavor already owned by Guard Dialogue Overhaul + Echoes of Oblivion), independent of the retired gate — see `STATUS.md`.
