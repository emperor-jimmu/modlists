# GRID Control — Motorsport Manager Modlist & Guide (AGENTS.md)

This document defines the vision, constraints, and working conventions for the **GRID Control** modlist — a "Motorsport Management" experience built on **Motorsport Manager** (Playsport Games / Miniclip). Every session working on this project must align with the principles below.

---

## Core Vision

A curated modlist + game guide for **Motorsport Manager** that:

- **Modernizes** the experience to the real-world 2026 season (real drivers, teams, calendars, sponsors).
- **Deepens** the management challenge (AI, balance, race-craft depth) — never makes it easier.
- **Improves the graphics** (HD models, post-processing, modern car models, liveries, logos) and **adds detail** (real sponsors, flags, track partners, intros).
- Teaches the player **how to play the modded game** end to end.
- Offers **playable personas** — roleplay-ready manager archetypes with background stories and concrete game-creation choices.

## Locked Baseline

```
Game               Motorsport Manager (Steam app 415200)
Game Version       Patch 1.6 — the FINAL version created for the game (2026-02-10).
                   Note: 1.6 was initially rolled out via Steam's beta branch
                   (Properties → Betas / "Game Version"). 1.53 is the previous version.
                   1.6-native mods CRASH on 1.53 and vice versa — never mix.
DLC                All five: Livery Pack, Create Your Own Team, GT Series,
                   Challenge Pack, Endurance Series
Mod Management     Steam Workshop (subscribe) + Unity Mod Manager (Nexus plugins)
                   + documented manual file placement (MM_Data / Resources.assets)
PDF Engine         Typst 0.15+
Markdown Parser    cmarker 0.1.10
```

## Mod Rules

- **Allowed:** Season/database modernization, balance & AI depth mods (that make the game HARDER or richer, never easier), HD graphics, modern car models, liveries, logos, sponsors, camera/QoL tools that do not trivialize play.
- **Forbidden:** Cheats, money/performance boosts (e.g. "Better Sponsors", "Max Fuel"), auto-pilot tools (e.g. "Auto Setup", "Assistant"), meme/joke mods, mods that conflict with the locked baseline, **1.53-only mods**, anything unverified.
- **No fabrication** — every entry is a real, verified mod with a working URL (Steam Workshop, Nexus Mods) and checked version compatibility with Patch 1.6.
- **No mixing 1.53 and 1.6 content.** The modlist targets 1.6 exclusively; 1.53-only content goes to `mod-ideas.md`/STATUS as rejected-out-of-scope.

## Mod Entry Format

Every mod entry uses this consistent table format:

```markdown
#### [Mod Name](verified-url)

| Detail | Value |
|--------|-------|
| **Author** | Author Name |
| **Version / Update** | X.Y / date |
| **Source** | Steam Workshop (ID) or Nexus Mods (ID) |
| **Compatibility** | Patch 1.6 only / 1.6 OK |
| **Dependencies** | List or None |
| **What It Changes** | Impact on the game (grounded in the mod description). |
| **Installation** | Subscribe / UMM / manual file step. |
```

## Technical Standards

```
File Layout   guide/              — guide + modlist sources, split by section
              templates/          — Typst document templates (style.typ, guide.typ)
              output/             — generated PDFs (deliverable)
              AGENTS.md           — this file
              STATUS.md           — living decision register
              GUIDE.md            — compiled single-source markdown (build artifact)
              conflicts-mods.md   — known conflicts & incompatibilities (not in PDF)
              mod-ideas.md        — candidate/future ideas (not in PDF)
```

## Session Navigation

1. Read STATUS.md — understand what's in progress, done, rejected.
2. Pick one chunk — one completed unit of work per session.
3. Update STATUS.md — mark completed, note blockers, set next chunk.
4. Rebuild the PDF (`.\generate-pdf.ps1`) whenever guide sources change.

## Mod Research Protocol

1. Primary sources: **Steam Workshop** (steamcommunity.com/app/415200/workshop) and **Nexus Mods** (nexusmods.com/motorsportmanager).
2. For each candidate: verify author, update date, subscription/endorsement counts, dependencies, and **Patch 1.6 compatibility** from the mod page itself.
3. Check conflicts: season DB mods are mutually exclusive (one "New Game Mod" database at a time); 3D-model mods are version-locked (1.53 vs 1.6).
4. Record every verdict — adopted AND rejected — in STATUS.md.
