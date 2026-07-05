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

- This repo is a markdown planning workspace, not an application codebase. The source of truth is the `modlist*.md` files.
- `modlist.md` is the hub file: project scope, modlist identity pillars, separator mapping table, and the index to numbered section files. The installation guide was split into `install.md` to keep `modlist.md` lean.
- `install.md` contains the full setup guide (pre-installation, toolchain, download instructions, load order build steps, post-install testing).
- There is no build, test, lint, CI, or package-manager workflow to run here.

## File Roles

- `modlist.md` is the hub file: project scope, modlist identity pillars, separator mapping table, and the index to numbered section files.
- `install.md` is the installation guide: pre-installation requirements, toolchain setup, download workflow, load order build sequence, and post-install testing.
- Each numbered `modlist-XX.md` file owns one second-level planning section. Keep the numbering aligned with the index in `modlist.md`.
- Cross-reference convention: use `→`XX`` (arrow, space, backtick section number) as the standard inline cross-reference format across all section files.
- `separators.md` is the canonical ordered reference (111 entries) for `Mod Organizer 2` separators derived from the current modlist structure.
- `TODO.md` is a scratch backlog of ideas and possible future research, not an authoritative recommendation list.

## Current Structure

- `modlist-01.md` through `modlist-16.md` are the active numbered sections.
- Current section titles: `Foundations and Compatibility`, `PGPatcher`, `Community Shaders`, `Textures & Meshes`, `Lighting`, `Weather & Water`, `Terrain & Flora`, `Characters & Creatures`, `LOD & Distant Detail`, `Modernized UI`, `Animations and Movement`, `Third-Person Gameplay`, `Expanded Systems`, `Immersive Scale and World Feel`, `World Content`, `NPCs and Creatures`, `Audio and Feedback`, `Survival, Difficulty, and Balance`, `Legacy of the Dragonborn`, `Modlist Curation Rules and Testing Plan`, `Performance and Technical Workflow`, `Adult Content`, `Main Character Voicing`.
- `modlist-02a.md` through `modlist-02h.md` (Graphics umbrella) cover the full graphics pipeline: PGPatcher, Community Shaders, Textures & Meshes, Lighting, Weather & Water, Terrain & Flora, Characters & Creatures, and LOD & Distant Detail.
- `modlist-02b.md` (Community Shaders) and `modlist-09.md` (NPCs) have been reviewed and rewritten/trimmed. The numbered-section template work in `modlist-09.md` established the repeatable rewrite pattern used across sections.
- `modlist-04.md` (Animations and Movement) and `modlist-05.md` (Third-Person Gameplay) are fully expanded and treated as established baselines.
- `modlist-06.md` (Expanded Systems) is fully expanded and locked.
- `modlist-03.md` (Modernized UI) is locked. Baseline picks: `SkyUI` + `Oathvein UI`, `SkyHUD` + `TrueHUD`, `FWMF` + Mirhayasu paper maps, `Compass Navigation Overhaul`, `COCKS`, `Sovngarde Font`.
- `modlist-07.md` (Immersive Scale and World Feel) is moderately expanded but still an open research area.
- `modlist-08.md` (World Content) has moderate content and is an active development area with recent mod pick additions (Fishing, Evolving Locations, quest content).
- `modlist-10.md` (Audio and Feedback), `modlist-11.md` (Survival, Difficulty, and Balance), and `modlist-14.md` (Performance and Technical Workflow) each have expanded content and are open research areas.
- `modlist-13.md` (Modlist Curation Rules and Testing Plan) is the expanded meta-section combining curation guardrails and testing verification.
- `modlist-01.md` (Foundations and Compatibility) covers the toolchain setup, conflict-resolution strategy, core libraries, SKSE, mesh/texture fixes, and targeted bugfixes.
- `modlist-12.md` (Legacy of the Dragonborn) owns the museum baseline, key companion utilities, and LoTD patch strategy.
- `modlist-15.md` (Adult Content) covers OStim framework, romance quests, adult NPCs, and dialogue expansions with adult content.
- `modlist-16.md` (Main Character Voicing) covers Dragonborn Voice Over framework, voice packs, and MCVO Generator pipeline.

## Third-Person / Gamepad Design Directive

- `Elder Wilds` is built to be completely playable in third-person with a gamepad. Every mod — gameplay, animation, UI, camera, interaction — must be evaluated for third-person usability and gamepad compatibility first.
- No interaction may require switching to first-person or keyboard/mouse: lockpicking, reading, menus, crafting, dialogue, container looting, and favouriting all have third-person gamepad solutions.
- A mod that works well in first-person or with keyboard/mouse but breaks the third-person gamepad experience (broken camera transitions, missing third-person animations, UI elements only in first person, aiming that assumes a centred crosshair, menus requiring mouse input, prompts assuming keyboard keys) is a poor fit regardless of individual quality.
- First-person parity and keyboard/mouse support are bonuses, not substitutes.

## Content Conventions

- Keep section writing decision-oriented: explain recommendation, alternatives when meaningful, why the baseline is right, risks, research tasks, and acceptance criteria.
- Default subsection structure for numbered section files is: `Core Idea`, `Options`, `Recommendation`, `Risks & Compatibility`, `Acceptance Criteria`. Only add extra headings when the subsection genuinely needs unique procedural content that would otherwise be lost.
- Do not use boilerplate headings such as repeated `Why This Is The Right Baseline`, `Working Guidance For Elder Wilds`, or `What Elder Wilds Should Prioritize` blocks when that information can be folded into `Recommendation` or `Risks & Compatibility`.
- Avoid restating the same mod, rationale, or compatibility warning across multiple headings in the same subsection. Each important point should usually be stated once in its owning subsection.
- Keep file-wide governance rules in one owning subsection instead of repeating them everywhere. Example: shared animation-stack rules should live in a single conflict-management or prerequisites subsection, not in every animation category.
- Do not pad sections with generic quality bars or obvious testing language. Acceptance criteria should be specific to the subsection's actual decision, and research tasks should exist only when there is real unresolved research left.
- When a section includes operational workflow content (tool setup, build order, config tables, patcher steps), preserve that functional content, but still remove duplicated framing text around it.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `modlist-04.md` (Animations); broader third-person camera/gameplay framework decisions belong in `modlist-05.md` (Third-Person Gameplay).
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

## Mod Link Verification Rules

- Do not invent or guess Nexus links.
- Use Playwright when necessary to browse and verify pages on NexusMods rather than relying on memory alone.
- Always use Reddit as part of mod research, with `r/skyrimmods` as the primary subreddit for community-signal checks before locking recommendations.
- Prefer canonical base mod pages. Avoid using translation, patch, preset, or add-on pages as the main recommendation unless the section explicitly calls for that type of file.

## Research Workflow

- The repo's planning flow is section-by-section, one category at a time.
- Prefer executable/observable evidence over memory: existing repo content, verified Nexus pages, current file state, and Reddit discussion signal.
- Check `r/skyrimmods` for each active research area as the default Reddit source, and only fall back to broader Reddit searching when `r/skyrimmods` does not provide enough signal.
- Before expanding a numbered section, scan for duplicated ownership, repeated rationale, and boilerplate headings so new writing does not reintroduce the same cleanup problems fixed in sections `01`, `03`, `04`, and `09`.
- When updating repository guidance, align `AGENTS.md` to the actual current `modlist.md` index and numbered section file titles rather than older assumptions about section names or completion state.
- Keep `separators.md` aligned with the current `modlist-XX.md` section and stub structure when separators are added, renamed, or reorganized.
- When reorganizing sections, update `modlist.md` index links and keep numbering consistent.

## Workspace Notes

- `.playwright-mcp/` and `*.log` are ignored in `.gitignore`; they are scratch artifacts from verification work, not project content.
