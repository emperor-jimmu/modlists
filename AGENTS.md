# Repository Guidance

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
- Current section titles are: `Foundations and Compatibility`, `Modern Graphics`, `Animations and Movement`, `Third-Person Gameplay`, `Expanded Systems`, `Modernized UI`, `Immersive Scale and World Feel`, `World Content`, `NPCs and Creatures`, `Audio and Feedback`, `Survival, Difficulty, and Balance`, `Performance and Technical Workflow`, `Modlist Curation Rules`, `Testing Plan`, and `Targeted Bugfix Mods`.
- `modlist-03.md` (`Animations and Movement`) and `modlist-04.md` (`Third-Person Gameplay`) are fully expanded and should be treated as established baselines unless the user asks to revisit them.
- `modlist-05.md` (`Expanded Systems`) has concrete candidate mod content but is less finalized than the fully expanded gameplay sections; continue there next unless the user redirects.
- `modlist-06.md` through `modlist-14.md` currently exist as section files but several still have little or no concrete mod-pick content in `mods-checklist.md`; treat them as open research areas.
- `modlist-15.md` (`Targeted Bugfix Mods`) is the separate bucket for concrete vanilla-problem fixes that do not belong in the core foundations layer.

## Content Conventions

- Keep section writing decision-oriented: explain recommendation, alternatives when meaningful, why the baseline is right, risks, research tasks, and acceptance criteria.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `modlist-03.md`; broader third-person camera/gameplay framework decisions belong in `modlist-04.md`.
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

## Mod Link Verification Rules

- Do not invent or guess Nexus links.
- Use Playwright when necessary to browse and verify pages on NexusMods rather than relying on memory alone.
- Prefer canonical base mod pages. Avoid using translation, patch, preset, or add-on pages as the main recommendation unless the section explicitly calls for that type of file.
- `mods-checklist.md` should contain concrete mod downloads with Nexus URLs only after the page has been verified.
- Before adding a mod recommendation to any `modlist*.md` section, check `mods-checklist.md` so you do not add a mod that is already present in the modlist planning set.

## Research Workflow

- The repo’s planning flow is section-by-section, one category at a time.
- Prefer executable/observable evidence over memory: existing repo content, verified Nexus pages, and current file state.
- Use `mods-checklist.md` as the duplicate-check reference before introducing new concrete mod picks into the numbered section files.
- When updating repository guidance, align `AGENTS.md` to the actual current `modlist.md` index and numbered section file titles rather than older assumptions about section names or completion state.
- Keep `separators.md` aligned with the current `modlist-XX.md` section and stub structure when separators are added, renamed, or reorganized.
- When reorganizing sections, update `modlist.md` index links and keep numbering consistent.

## Workspace Notes

- `.playwright-mcp/` and `*.log` are ignored in `.gitignore`; they are scratch artifacts from verification work, not project content.
