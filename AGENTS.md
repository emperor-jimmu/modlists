# AGENTS.md -- Cyberpunk 2077 Modlist

## Project Purpose

A curated, performance-conscious modlist and guide for Cyberpunk 2077 (v2.31,
v2.3-compatible), organized via Mod Organizer 2. Focused on RPG depth, living
world, collectibles, and meaningful relationships.

## File Structure

- `modlist/` -- 19 categorized mod guides with install order
- `research/` -- Candidate mods under investigation
- `mods-to-develop.md` -- Original mod ideas (mods that don't exist yet)
- `scripts/` -- PDF generator and utilities

## Mod Entry Rules

Every mod added to a category file MUST include all these fields:

```markdown
### Mod Name
- **Nexus:** URL
- **Version:** x.y.z
- **Released:** YYYY-MM-DD
- **Summary:** One-line description
- **Why:** How it serves the modlist goals
- **Conflicts:** Known conflicts
- **Dependencies:** Required mods and load-order position
- **MO2 Notes:** Install instructions, FOMOD choices, merge guidance
- **Performance:** None | Light | Moderate | Heavy
```

Rules:
- Every mod entry MUST include a direct link (Nexus URL) — never list a mod without its link
- Always search Nexus Mods for the latest version before adding a mod
- Conflicts and dependencies MUST be cross-referenced across category files
- Mods are listed in recommended install order within each category
- Performance tags must be accurate -- test if unsure
- **DO NOT ADD any mod whose version compatibility cannot be verified for 2.31 (or at minimum 2.3) — this is a hard block, not a preference**

## Terminology

- **MO2** -- Mod Organizer 2
- **CET** -- Cyber Engine Tweaks
- **REDmod** -- CDPR's official modding toolkit
- **RED4ext** -- Native plugin loader
- **ArchiveXL** -- Archive expansion framework
- **TweakXL** -- TweakDB modification framework
- **Codeware** -- UI scripting runtime

## Design Philosophy

- **Baseline: 4K resolution** -- all mods are evaluated and tested at 4K
- **No "cheat" mods** -- no free items, no vendor price hacks, no unlimited carry
  weight, no mechanics removal
- Mods must enhance depth, not remove friction
- Survival/immersion features should add challenge, not bypass it
- When a mod offers both cheat and balanced options, only the balanced config is
  used and documented
- Prefer mods that are actively maintained and version-compatible with v2.31

## Research Workflow

1. Discover mods on Nexus Mods — navigate to https://www.nexusmods.com/cyberpunk2077/mods/categories/, pick a relevant category, sort by Downloads or Endorsements, then browse for fitting mods
2. Add to `research/mods-to-investigate.md` with status `candidate`
3. Research: check comments, bug reports, compatibility, design fit
4. Update status: `testing` -> `approved` or `rejected`
5. Approved mods move from research to the correct category file
6. Rejected mods STAY in the research file -- add rejection reason, never delete

## Tool Usage

- **Web fetching:** Use `webfetch` for standard web pages. If a page doesn't render properly (e.g., JavaScript-rendered content), use Playwright (`browser_navigate`) as fallback.

## Commit Conventions

- `feat:` -- new mod added to a category
- `research:` -- mod added/updated in research file
- `idea:` -- new entry in mods-to-develop.md
- `chore:` -- infrastructure, formatting, template changes
- `fix:` -- correction to mod info, conflicts, versions
