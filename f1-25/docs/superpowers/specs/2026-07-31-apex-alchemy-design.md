# Apex Alchemy — Design Spec

**Date:** 2026-07-31 | **Game:** F1 25 v1.24 (July 13, 2026) | **Mod Organizer:** Simplified Launcher (by Team Simplified, *unverified*)

## 1. Core Vision

A progressive modlist + game guide for F1 25. Wave 0 is a standalone "how to play F1 25" tutorial requiring zero prior racing game knowledge. Waves 1 and 2 layer on strategy depth, mod content, and new systems — each wave is a new-game start with its own roleplaying backstory.

## 2. Wave Content Outlines

### Wave 0 — "First Lap" (Complete Beginners)

**Story:** A rookie driver's first season. You've never turned a wheel in anger — the team will teach you everything.
**Mods:** Simplified Launcher + vanilla F1 25. Zero gameplay mods.

| Section        | Topics                                                                                                        |
|----------------|---------------------------------------------------------------------------------------------------------------|
| Game Setup     | Installing F1 25, Simplified Launcher setup, verifying v1.24                                                  |
| Controls       | Controller vs wheel, basic bindings, calibration                                                              |
| Assists        | Every assist explained; recommended beginner preset (ABS on, TC medium, racing line corners only, auto gears) |
| Driving Basics | Steering, throttle, braking — the racing line, not setups                                                     |
| Race Weekend   | FP1/FP2/FP3 flow, Qualifying (Q1/Q2/Q3), Sprint weekends, Race                                                |
| Tyres 101      | Compounds (soft/medium/hard/inter/wet), degredation, pit stops                                                |
| ERS 101        | What it is, deployment modes, when to use overtake                                                            |
| Career Mode    | Starting a career, choosing a team, R&D basics, contract system                                               |
| UI Tour        | Every screen explained — MFD, timing screen, strategy screen                                                  |

### Wave 1 — "Building Speed" (Intermediate)

**Story:** You've completed a season. Now you understand the car isn't just a throttle pedal — it's a machine with hundreds of dials. Time to learn what some of them do.
**Mods:** Telemetry dashboards, camera mods, livery mods, AI tweaks, audio mods.

| Section            | Topics                                                                  |
|--------------------|-------------------------------------------------------------------------|
| Driving Technique  | Trail braking, corner exits, throttle modulation, weight transfer       |
| Intermediate Setup | Wing levels, differential (on/off throttle), brake bias, brake pressure |
| ERS Strategy       | Deployment maps per track, harvest vs deploy zones, manual deployment   |
| Fuel Management    | Fuel mix modes, lift-and-coast, fuel-saving strategies                  |
| Tyre Management    | Temperature windows, graining vs blistering, pace management            |
| AI Calibration     | AI difficulty scaling, finding the right level, per-track adjustment    |
| Race Strategy      | Undercut/overcut, safety car windows, weather calls                     |
| Mods               | SimHub dashboards, custom cameras, livery packs, AI difficulty mods     |

### Wave 2 — "Apex Predator" (Advanced)

**Story:** You don't just drive the car — you define it. Every click of wing, every psi of pressure is deliberate. You don't react to strategy — you build it before the lights go out.
**Mods:** Physics tweaks, enhanced career depth, custom championships, full visual overhaul.

| Section              | Topics                                                                             |
|----------------------|------------------------------------------------------------------------------------|
| Advanced Setup       | Full aero map, suspension kinematics, ARBs, ride height rake, corner weights       |
| Qualifying Mastery   | Tow strategy, track evolution timing, one-lap pace optimization                    |
| Wet Weather          | Inter vs full wet crossover, drying line, setup compromises                        |
| Custom Championships | Building custom seasons, calendar editing, regulation changes                      |
| Data Analysis        | Reading telemetry, comparing laps, identifying time loss                           |
| Mods                 | Physics overhaul mods, career enhancement mods, custom season tools, graphics mods |

## 3. Mod Categories (F1 25)

| Category             | Description                                             | First Allowed |
|----------------------|---------------------------------------------------------|---------------|
| Launcher & Tools     | Mod managers, file backup/restore tools                 | Wave 0        |
| UI / HUD / Telemetry | Dashboards, overlays, MFD replacements                  | Wave 1        |
| Cameras              | Custom camera angles, replay cams, onboard views        | Wave 1        |
| Liveries & Visuals   | Car skins, helmet designs, showroom mods                | Wave 1        |
| Audio                | Engine sounds, commentary packs, ambient audio          | Wave 1        |
| AI & Difficulty      | AI behavior tweaks, difficulty scaling mods             | Wave 1        |
| Physics              | Handling, damage, tyre model tweaks                     | Wave 2        |
| Career & Gameplay    | Custom championships, calendar mods, regulation changes | Wave 2        |
| Graphics             | Reshade presets, graphics configuration mods            | Wave 2        |

## 4. Project Structure

```bash
f1-25/
├── AGENTS.md                # Vision, constraints, working conventions
├── README.md                # Overview, quick start
├── VERSION                   # Semantic version (e.g. "0.1.0")
├── STATUS.md                # Living decision log
├── GUIDE.md                 # Single source of truth (markdown, parsed by cmarker)
├── guide/                   # Guide + modlist organized by category
│   ├── wave-0/              # Per-wave breakdown
│   │   ├── how-to-play.md
│   │   └── mods.md
│   ├── wave-1/
│   │   ├── strategy.md
│   │   └── mods.md
│   └── wave-2/
│       ├── advanced.md
│       └── mods.md
├── templates/
│   ├── guide.typ            # Typst document: cover + TOC + body
│   └── style.typ            # F1 theme: colors, fonts, table/code/quote styling
├── generate-pdf.ps1         # Powershell: dependency check + typst compile
├── output/                  # Generated PDFs
├── conflicts-mods.md        # Known conflicts (not in PDF)
├── mod-ideas.md             # Future ideas, rejected-but-interesting (not in PDF)
└── assets/
    └── logo.jpg             # Apex Alchemy cover logo
```

## 5. Typst Theme — "Carbon & Crimson"

**Typst version:** 0.15.1 | **cmarker:** `@preview/cmarker:0.1.10`

### Color Palette

| Role          | Hex       | Usage                                         |
|---------------|-----------|-----------------------------------------------|
| Racing Red    | `#E10600` | H1 headings, links, accent borders            |
| Dark Carbon   | `#15151E` | Body text, dark elements                      |
| Mid Gray      | `#38383F` | Secondary text, table strokes                 |
| Light Gray    | `#B0B0B8` | Muted text, captions                          |
| Near White    | `#F0F0F0` | Body background, table alt rows               |
| White         | `#FFFFFF` | Header text on dark backgrounds               |
| Electric Blue | `#00A3E0` | H2 subheadings, inline code, telemetry accent |
| Gold          | `#C4A800` | Callout borders, TOC accents                  |

### Fonts

- **Body:** `"Inter"` (sans-serif, clean modern F1 feel) with `"Segoe UI"` fallback
- **Code:** `"JetBrains Mono"` with `"Consolas"` fallback
- **Heading weight:** Bold for H1, Semibold for H2/H3

### Layout

- A4 paper, 2.5cm margins all around
- Cover page: logo centered, title in Racing Red, subtitle in Electric Blue, version in Light Gray
- TOC: roman numeral page numbering, depth 2, dotted leaders
- Body: arabic page numbering, center-aligned
- Tables: dark header row (Dark Carbon background, White text), alternating row tints
- Blockquotes: styled as callout boxes with Gold left border
- Code blocks: Dark Carbon background, Electric Blue text

### Cover Page Layout

```
  [blank 1.5cm]
  [logo.jpg — 60% width, centered]
  [blank 1cm]
  "Apex Alchemy" — 36pt Bold, Racing Red
  [blank 0.5cm]
  "F1 25 — Setup & Mod Guide" — 18pt, Electric Blue
  [blank 0.8cm]
  [horizontal rule — 40% width]
  [blank 0.4cm]
  "F1 25 v1.24 — Simplified Launcher" — 13pt, Light Gray
  [blank 1.5cm]
  "Version X.Y.Z" — 11pt, Mid Gray
```

## 6. Simplified Launcher — Verification Required

This must be step zero of implementation. If Simplified Launcher doesn't support F1 25 v1.24, the entire tooling choice changes.

**Fallback options if Simplified Launcher is unavailable:**

1. Manual mod installation with file backup (documented step-by-step)
2. Vortex (Nexus Mods) — if it supports F1 25
3. Custom Powershell script for mod management

## 7. AGENTS.md Content Plan

Following the Minecraft pattern:

- Core Vision (progressive learning, no power spikes, real mods only)
- Wave structure summary
- Mod integration rules (no conflicts, no redundancy, no fabrication)
- Technical standards (F1 25 v1.24, Simplified Launcher, Typst 0.15.1)
- Session navigation (check STATUS.md first, pick one chunk, update STATUS.md)
- File layout reference

## 8. Success Criteria

**Minimum Viable (v0.1.0):**

- [ ] Simplified Launcher verified + installation instructions written
- [ ] Wave 0 full how-to-play guide complete (all 9 topic sections)
- [ ] Wave 1 complete (8 topic sections + at least 5 verified mods)
- [ ] Wave 2 complete (6 topic sections + at least 5 verified mods)
- [ ] Typst templates written, PDF compiles cleanly
- [ ] AGENTS.md, README.md, STATUS.md, VERSION all present
- [ ] All mod entries have verified clickable URLs

**Out of scope for v0.1.0 (mod-ideas.md):**

- Additional waves
- Adult/nude mods (can be added later if requested)
- Per-wave config files / save files
- Video tutorial links

## 9. Implementation Order

1. Research Simplified Launcher (verify existence, F1 25 support)
2. Create project skeleton (all empty files + directories + AGENTS.md)
3. Research OverTake.gg for F1 25 mods
4. Write Wave 0 — how-to-play guide (no mods, pure tutorial)
5. Write Wave 1 — strategy guide + mod list
6. Write Wave 2 — advanced guide + mod list
7. Create Typst templates (style.typ + guide.typ)
8. Generate PDF, verify output
9. Commit + final STATUS.md update
