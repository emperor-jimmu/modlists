# Ace's Realm - X-Plane 12 Modlist & Flight Guide

A flight guide and modlist scaffold for **X-Plane 12** (version 12.4.3), organized in six
progressively harder "waves" (0-5), each with its own roleplaying backstory and aircraft to
study, rendered as a colorful PDF via Typst.

- Modlist: **user-directed and verified mod cards** fill the wave chapters — a curation
  round (2026-08-21, see `STATUS.md`) filled the open slots with training aids, QoL, and
  graphics mods; remaining slots stay "user to provide" and can be added any time
  (rules in `AGENTS.md` / `STATUS.md`)
- Mod organizer: XFast Manager (verified from its official GitHub - see `STATUS.md`)
- Foundational plugins (user-supplied): Navigraph, LittleNavMap, AutoOrtho, X-Camera, AviTab,
  X-ATC-Chatter, openSAM, Better Pushback - fully documented in the Foundational chapter
- PDF: run `build.bat` to regenerate `output/Aces-Realm.pdf`

## Waves

| Wave | Theme | Aircraft | Status |
|---|---|---|---|
| 0 - First Solo | Complete beginners; vanilla + UI/QoL only | Cessna 172 (stock); DA20-SV as optional alternate trainer | complete; modlist filled (training/QoL/graphics) |
| 1 - The Ferry | Glass cockpit, cross-country, weather decisions | SR22 G1000 (Take Command - user addon) | complete; modlist filled (REP, X-KeyPad, X-World, BAAC) |
| 2 - The Charter | Turbofan, FMS, learning IFR | Challenger 650 (Hot Start - user addon) | complete; modlist filled (WebFMC, OpenSceneryX) |
| 3 - The Dash Ace | High-speed turboprop, regional ops | Dash 8 Q400 (FlyJSim Q4XP - user addon) | complete; modlist filled (XChecklist, AEP) |
| 4 - The Line | Airline operations, FMC, automation | 737-800X (Zibo Mod - user addon); A320neo (ToLiss - user addon) | complete; modlist filled (LiveTraffic) |
| 5 - The Heavy Ace | Heavy long-haul, oceanic, night ops | 777-200ERF (FlightFactor 777F - user addon) | complete; modlist filled (SimBrief) |

Waves 1-5 add content and mechanics but **no pure power spikes**.

## How to add a mod

Mod cards live in the wave guide files (`modlist.typ` under `guide/wave-*/`) and in
`guide/foundational.typ`. To add a mod:

1. Open the wave's Typst file and replace a *"user to provide"* placeholder card with the
   mod's `mod-entry(...)` call.
2. Fill the card fields: **clickable name + URL**, **dependencies**, **system/mechanic impact**
   (what it changes), **notes** (load order, configuration).
3. Leave any unknown field as *"user to provide"* - never invent data.
4. Run `build.bat` to regenerate the PDF.

## Target version

The guide is written for X-Plane 12 **12.4.3**. Confirm the version line on the sim's main
menu before relying on it - a future patch may shift what the mods do. Compatibility
heuristic: if a specific mod version is unknown, use the patch/release date.

## Structure

- `guide/` - Typst sources (installation, foundational plugins, per-wave chapters, glossary)
- `output/` - generated PDF
- `STATUS.md` - live decision log (decisions, open questions, pending user inputs)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
