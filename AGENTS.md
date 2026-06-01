# Repository Guidance

## What This Repo Is

- This repo is a markdown planning workspace, not an application codebase. The source of truth is the `modlist*.md` files plus `mods-checklist.md`.
- There is no build, test, lint, CI, or package-manager workflow to run here.

## File Roles

- `modlist.md` is the hub file only: project scope, setup/install/tooling guidance, research workflow, and the index to numbered section files.
- Each numbered `modlist-XX.md` file owns one second-level planning section. Keep the numbering aligned with the index in `modlist.md`.
- `mods-checklist.md` is the download checklist for concrete mod picks. When a section adds, removes, or changes a recommended mod, sync the checklist in the same pass.
- `TODO.md` is a scratch backlog of ideas and possible future research, not an authoritative recommendation list.

## Current Structure

- `modlist-01.md` through `modlist-14.md` are the active numbered sections.
- `modlist-03.md` (`Animations and Movement`) is fully expanded.
- `modlist-04.md` (`Third-Person Gameplay`) is still mostly bullet stubs; continue there next unless the user redirects.

## Content Conventions

- Keep section writing decision-oriented: explain recommendation, alternatives when meaningful, why the baseline is right, risks, research tasks, and acceptance criteria.
- Do not collapse separate concerns together. Example: animation-side camera awareness belongs in `modlist-03.md`; broader third-person camera/gameplay framework decisions belong in `modlist-04.md`.
- Preserve established ownership decisions unless the user asks to revisit them. Current key animation ownership: `Pandora` for behavior generation, `XPMSSE` for skeleton assumptions, `Open Animation Replacer` for conditional selection.

## Mod Link Verification Rules

- Do not invent or guess Nexus links.
- Prefer canonical base mod pages. Avoid using translation, patch, preset, or add-on pages as the main recommendation unless the section explicitly calls for that type of file.
- `mods-checklist.md` should contain concrete mod downloads with Nexus URLs only after the page has been verified.

## Research Workflow

- The repo’s planning flow is section-by-section, one category at a time.
- Prefer executable/observable evidence over memory: existing repo content, verified Nexus pages, and current file state.
- When reorganizing sections, update `modlist.md` index links and keep numbering consistent.

## Workspace Notes

- `.playwright-mcp/` and `*.log` are ignored in `.gitignore`; they are scratch artifacts from verification work, not project content.
