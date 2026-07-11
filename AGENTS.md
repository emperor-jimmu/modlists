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
- Each numbered `guide/modlist-XX.md` file owns one second-level planning section. Keep the numbering aligned with the index in `guide/modlist.md`.
- Cross-reference convention: use `→ \`X\`` (arrow, space, backtick section or separator name) as the standard inline cross-reference format across all section files. When linking to another section file, prefer `→ [Title](modlist-XX.md)` over a backticked reference.
- `guide/separators.md` is the canonical ordered reference (111 entries) for `Mod Organizer 2` separators derived from the current modlist structure. When a section file declares its MO2 separator(s), the declaration must match this file.
- `guide/modlist-design-philosophy.md` is the authoritative design-philosophy source for world progression — leveling, encounter zones, loot distribution, difficulty, XP/leveling, and perks as an interlocked dial. Adopted combination: **#1 Static with Hard Threat** + "Living the World" layer (player home, family, slow questing). Mods in section files are tagged in a `Dial` column that indicates which combination(s) they serve.
- `TODO.md` is the central scratch backlog for open research and candidate mods not yet adopted. Section files reference it with an `## Open Research` heading rather than carrying their own `## Candidate TODO Additions` stub.
- `guide/modlist-restructure-design.md` is the historical design rationale for the current file conventions. It is not a live planning document; keep it for context but do not edit it as if it were active guidance.

## Lighting & Graphics Direction

- **Community Shaders** is the exclusive graphics framework. No ENB, no LUX family (Lux, Lux CS, Lux Orbis, Lux Via). The lighting baseline is the CS-native stack: CS Light + True Light + Window Shadows Ultimate + Ambient Templates, paired with Based Lighting Configs and Standard Lighting Templates (SLT).
- Road and exterior lighting uses Lanterns of Skyrim II + CS Lantern Lights instead of Lux Via.
- All new mod additions must be CS-compatible. A mod that assumes ENB or requires LUX patches is a poor fit.

## Current Structure

- All planning files (`modlist*.md`, `install.md`) live in `guide/`. Active numbered sections span `guide/modlist-foundations.md` through `guide/modlist-voicing.md`, with sub-file suffixes (02a–h, 06a–e, 14a–e) for sections split across multiple files. Parent overview files (`guide/modlist-graphics.md`, `guide/modlist-expanded-systems.md`, `guide/modlist-performance.md`) index their sub-files and own section-level principles.
- Current section titles: `Foundations and Compatibility`, `Graphics Pipeline` (parent, 02), `PGPatcher` (02a), `Community Shaders` (02b), `Textures & Meshes` (02c), `Lighting` (02d), `Weather & Water` (02e), `Terrain & Flora` (02f), `Characters & Creatures` (02g), `LOD & Distant Detail` (02h), `Modernized UI`, `Animations and Movement`, `Third-Person Gameplay`, `Expanded Systems` (parent, 06), `Character & Progression` (06a), `Magic & Perks` (06b), `Survival & Needs` (06c), `Crafting & Economy` (06d), `Followers & Reputation` (06e), `Immersive Scale and World Feel`, `World Content`, `NPCs`, `Enemies & Creatures`, `Audio and Feedback`, `Survival, Difficulty, and Balance`, `Legacy of the Dragonborn`, `Modlist Curation Rules and Testing Plan`, `Performance and Technical Workflow` (parent, 14), `Performance Strategy` (14a), `Optimization & Configuration` (14b), `Tool Pipeline` (14c), `Bashed Patch & Synthesis Configuration` (14d), `Testing & Maintenance` (14e), `Adult Content`, `Main Character Voicing`.
- `guide/modlist-graphics.md` is the Graphics Pipeline parent overview; it indexes sub-files `Graphics - PGPatcher` through `Graphics - LOD & Distant Detail` covering PGPatcher, Community Shaders, Textures & Meshes, Lighting, Weather & Water, Terrain & Flora, Characters & Creatures, and LOD & Distant Detail.
- `guide/modlist-graphics-shaders.md` (Community Shaders) and `guide/modlist-npcs.md` (NPCs) have been reviewed and rewritten/trimmed. The numbered-section template work in `guide/modlist-npcs.md` established the repeatable rewrite pattern used across sections.
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
- Every `## Topic` H2 in a sub-file that contributes to one specific separator must end with `→ separator: \`X\`` (or `→ separators: \`X\` / \`Y\``) so the separator mapping is visible at the heading level. The exception is parent overview files (`modlist.md`, `modlist-graphics.md`, `modlist-expanded-systems.md`, `modlist-performance.md`), which own multiple separators.
- Every sub-file must declare its MO2 separator(s) on the line immediately after the H1 title using the form `**MO2 Separator:** \`X\`` (one separator) or `**MO2 Separators:** \`X\` → \`Y\`, \`Z\`` (parent + sub-separators). The declaration must match the canonical entry in `guide/separators.md`.
- Do not use boilerplate headings such as repeated `Why This Is The Right Baseline`, `Working Guidance For Elder Wilds`, `What Elder Wilds Should Prioritize`, or `### Notes` blocks when that information can be folded into the table row or into `### Risks & Compatibility`. A standalone `### Notes` heading earns its name only when it carries unique procedural content (specific install order, specific framework requirements, specific load-order rules) — not when it is a list of generic trade-off caveats.
- Avoid restating the same mod, rationale, or compatibility warning across multiple headings in the same subsection. Each important point should usually be stated once in its owning subsection.
- Keep file-wide governance rules in one owning subsection instead of repeating them everywhere. Example: shared animation-stack rules should live in a single conflict-management or prerequisites subsection, not in every animation category.
- Do not pad sections with generic quality bars or obvious testing language. Acceptance criteria should be specific to the subsection's actual decision, and research tasks should exist only when there is real unresolved research left.
- When a section includes operational workflow content (tool setup, build order, config tables, patcher steps), preserve that functional content, but still remove duplicated framing text around it.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `guide/modlist-animations.md` (Animations); broader third-person camera/gameplay framework decisions belong in `guide/modlist-third-person.md` (Third-Person Gameplay).
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

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
