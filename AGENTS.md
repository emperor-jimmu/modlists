# Repository Guidance

## Mission Statement

Elder Wilds is an opinionated modlist for Skyrim AE 1.6.1170 (Steam) built around five pillars:

- **Modern UI and graphics** — a clean, grim-dark presentation that still reads clearly at 4K.
- **Big, dark, awe-inspiring world** — exploration that makes Skyrim feel vast, threatening, and beautiful.
- **Lots of new content** — quests, dungeons, worldspaces, and encounters that extend the game meaningfully.
- **Modern mechanics** — combat, stealth, movement, and feedback that feel contemporary rather than 2011.
- **Living the world** — survival, side activities, and full disregard for the Dragonborn quest if you choose. Legacy of the Dragonborn anchors the museum-and-collection pillar.

## What This Repo Is

- This repo is a markdown planning workspace, not an application codebase. The source of truth is the `modlist*.md` files plus `mods-checklist.md`.
- There is no build, test, lint, CI, or package-manager workflow to run here.

## File Roles

- `modlist.md` is the hub file only: project scope, setup/install/tooling guidance, research workflow, and the index to numbered section files.
- Each numbered `modlist-XX.md` file owns one second-level planning section. Keep the numbering aligned with the index in `modlist.md`.
- `mods-checklist.md` is the download checklist for concrete mod picks. When a section adds, removes, or changes a recommended mod, sync the checklist in the same pass.
- `separators.md` is the canonical ordered reference for `Mod Organizer 2` separators derived from the current modlist structure.
- `TODO.md` is a scratch backlog of ideas and possible future research, not an authoritative recommendation list.

## Current Structure

- `modlist-01.md` through `modlist-15.md` are the active numbered sections.
- Current section titles are: `Foundations and Compatibility`, `Modern Graphics`, `Animations and Movement`, `Third-Person Gameplay`, `Expanded Systems`, `Modernized UI`, `Immersive Scale and World Feel`, `World Content`, `NPCs and Creatures`, `Audio and Feedback`, `Survival, Difficulty, and Balance`, `Targeted Bugfix Mods`, `Legacy of the Dragonborn`, `Modlist Curation Rules and Testing Plan`, and `Performance and Technical Workflow`.
- `modlist-01.md`, `modlist-02.md`, and `modlist-09.md` have been reviewed and rewritten/trimmed, using a collapsed template approach (fewer redundant headings). The numbered-section template work in `modlist-09.md` established the repeatable rewrite pattern used across sections.
- `modlist-03.md` (`Animations and Movement`) and `modlist-04.md` (`Third-Person Gameplay`) are fully expanded and should be treated as established baselines unless the user asks to revisit them.
- `modlist-05.md` (`Expanded Systems`) is fully expanded.
- `modlist-06.md` (`Modernized UI`) is locked. Baseline picks: `SkyUI` + `Oathvein UI` (grim-dark, preferred over `Norden UI` due to tone fit and dependency chain), `SkyHUD` + `TrueHUD` for HUD, `FWMF` + Mirhayasu paper maps, `Compass Navigation Overhaul`, `COCKS` for crafting menus, `Sovngarde Font` for 4K readability. All mods verified via Nexus and Reddit community signal.
- `modlist-07.md` and `modlist-08.md` have moderate content (~255 lines each) but are still open research areas with no concrete mod picks locked in `mods-checklist.md`.
- `modlist-10.md` (`Audio and Feedback`), `modlist-11.md` (`Survival, Difficulty, and Balance`), and `modlist-15.md` (`Performance and Technical Workflow`) each have 190-270 lines of expanded content and are open research areas.
- `modlist-14.md` (`Modlist Curation Rules and Testing Plan`) is the expanded meta-section that combines the curation guardrails and the testing verification layer.
- `modlist-12.md` (`Targeted Bugfix Mods`) is the separate bucket for concrete vanilla-problem fixes that do not belong in the core foundations layer.
- `modlist-13.md` (`Legacy of the Dragonborn`) owns the museum baseline, key companion utilities, and LoTD patch strategy for content that integrates into the display ecosystem.

## Content Conventions

- Keep section writing decision-oriented: explain recommendation, alternatives when meaningful, why the baseline is right, risks, research tasks, and acceptance criteria.
- Default subsection structure for numbered section files is: `Core Idea`, `Options`, `Recommendation`, `Risks & Compatibility`, `Acceptance Criteria`. Only add extra headings when the subsection genuinely needs unique procedural content that would otherwise be lost.
- Do not use boilerplate headings such as repeated `Why This Is The Right Baseline`, `Working Guidance For Elder Wilds`, or `What Elder Wilds Should Prioritize` blocks when that information can be folded into `Recommendation` or `Risks & Compatibility`.
- Avoid restating the same mod, rationale, or compatibility warning across multiple headings in the same subsection. Each important point should usually be stated once in its owning subsection.
- Keep file-wide governance rules in one owning subsection instead of repeating them everywhere. Example: shared animation-stack rules should live in a single conflict-management or prerequisites subsection, not in every animation category.
- Do not pad sections with generic quality bars or obvious testing language. Acceptance criteria should be specific to the subsection's actual decision, and research tasks should exist only when there is real unresolved research left.
- When a section includes operational workflow content (tool setup, build order, config tables, patcher steps), preserve that functional content, but still remove duplicated framing text around it.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `modlist-03.md`; broader third-person camera/gameplay framework decisions belong in `modlist-04.md`.
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

## Mod Link Verification Rules

- Do not invent or guess Nexus links.
- Use Playwright when necessary to browse and verify pages on NexusMods rather than relying on memory alone.
- Always use Reddit as part of mod research, with `r/skyrimmods` as the primary subreddit for community-signal checks before locking recommendations.
- Prefer canonical base mod pages. Avoid using translation, patch, preset, or add-on pages as the main recommendation unless the section explicitly calls for that type of file.
- `mods-checklist.md` should contain concrete mod downloads with Nexus URLs only after the page has been verified.
- Before adding a mod recommendation to any `modlist*.md` section, check `mods-checklist.md` so you do not add a mod that is already present in the modlist planning set.

## Research Workflow

- The repo’s planning flow is section-by-section, one category at a time.
- Prefer executable/observable evidence over memory: existing repo content, verified Nexus pages, current file state, and Reddit discussion signal.
- Check `r/skyrimmods` for each active research area as the default Reddit source, and only fall back to broader Reddit searching when `r/skyrimmods` does not provide enough signal.
- Use `mods-checklist.md` as the duplicate-check reference before introducing new concrete mod picks into the numbered section files.
- Before expanding a numbered section, scan for duplicated ownership, repeated rationale, and boilerplate headings so new writing does not reintroduce the same cleanup problems fixed in sections `01`, `03`, `04`, and `09`.
- When updating repository guidance, align `AGENTS.md` to the actual current `modlist.md` index and numbered section file titles rather than older assumptions about section names or completion state.
- Keep `separators.md` aligned with the current `modlist-XX.md` section and stub structure when separators are added, renamed, or reorganized.
- When reorganizing sections, update `modlist.md` index links and keep numbering consistent.

## Workspace Notes

- `.playwright-mcp/` and `*.log` are ignored in `.gitignore`; they are scratch artifacts from verification work, not project content.
