# F1 25 Apex Alchemy — AGENTS.md

This document defines the vision, constraints, and working conventions for the Apex Alchemy F1 25 modlist. Every session working on this project must align with the principles below.

---

## Core Vision

A progressive modlist + game guide for F1 25 that teaches complete beginners how to play racing games while introducing modding in later waves. Wave 0 is a standalone "how to play F1 25" tutorial. Waves 1 and 2 layer on strategy depth, mod content, and new mechanics.

## Wave Structure (3 waves)

| Wave | Audience | Content Focus | Mod Philosophy |
|------|----------|---------------|----------------|
| 0 | Complete beginners | Full how-to-play guide | Vanilla + Simplified Launcher only |
| 1 | Intermediate | Strategy, telemetry, cameras | Content mods + new mechanics |
| 2 | Advanced | Setup mastery, custom championships | Rich systems + full customization |

## Mod Rules

- **Allowed:** Graphics/visuals, new content, new mechanics (Wave 1+), adult/nude if thematically relevant
- **Forbidden:** Conflicting mods, meme/joke mods, explicit porn, redundant mods, cheats/overpowered mods, anything incompatible with F1 25 v1.24
- **No fabrication** — only real, verified mods with working OverTake.gg URLs
- **Primary source:** OverTake.gg

## Mod Entry Format

Every mod entry must use this consistent table format:

```markdown
#### [Mod Name](verified-overtake-url)

| Detail | Value |
|--------|-------|
| **Version** | X.Y.Z |
| **Author** | Author Name |
| **Dependencies** | List or None |
| **What It Changes** | Description of the mod's impact on the game. |
| **Installation** | Any special installation notes. |
```

## Technical Standards

```
Game Version         F1 25 v1.24 (July 13, 2026)
Mod Organizer        Simplified Launcher v3.2.10 (by Team Simplified)
PDF Engine           Typst 0.15.1
Markdown Parser      cmarker 0.1.10

File Layout          guide/              — guide + modlist organized by wave
                     templates/          — Typst document templates
                     output/             — generated PDFs
                     AGENTS.md           — this file
                     STATUS.md           — living decision log
                     GUIDE.md            — compiled single-source markdown
                     conflicts-mods.md   — known conflicts (not in PDF)
                     mod-ideas.md        — future ideas (not in PDF)
```

## Session Navigation

1. Read STATUS.md — understand what's in progress, blocked, done
2. Pick one chunk — one completed unit of work per session
3. Update STATUS.md — mark completed, note blockers, set next chunk

## Mod Research Protocol

When searching OverTake.gg for mods:
1. Use Playwright browser to navigate the site (Cloudflare protection blocks direct HTTP)
2. Search the F1 25 categories: F1 25 Skins, F1 25 My Team, F1 25 Helmets, F1 25 Track updates, F1 25 Plugins, F1 25 Misc
3. For each candidate mod, verify: version compatibility with v1.24, last update date, dependencies
4. Record all findings in STATUS.md — accepted AND rejected
