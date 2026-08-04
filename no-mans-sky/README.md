# Aetherial Purity - No Man's Sky Modlist & Guide

A game guide and modlist scaffold for **No Man's Sky** (version 6.45.1, Steam), organized in
three progressively harder "waves" (0-2), each with its own roleplaying backstory, rendered as
a colorful PDF via Typst.

- Modlist: **mods added by the user** - the guide ships with fillable mod-card scaffolds
  (`guide/wave-*/`); the user pastes mod cards there (rules in `AGENTS.md` / `STATUS.md`)
- Mod organizer: Singularity (see `STATUS.md`)
- Mod source: user-supplied (names + URLs given by the user)
- PDF: run `build.bat` to regenerate `output/Aetherial-Purity.pdf`

## Mods per wave

| Wave | Theme | Status |
|---|---|---|
| 0 - First Light | UI/QoL essentials (vanilla base) | mods pending user addition |
| 1 - The Cartographer | Content + mechanics (no power spikes) | mods pending user addition |
| 2 - The Astral Architect | Richest systems + endgame | mods pending user addition |

## How to add a mod

Mod cards live in the wave's guide files (`modlist.typ`, `mechanics.typ`, `graphics.typ`,
`content.typ` under `guide/wave-*/`). To add a mod:

1. Open the wave's Typst file and replace a *"user to provide"* placeholder card with the mod's
   `mod-entry(...)` call.
2. Fill the card fields: **clickable name + URL**, **dependencies**, **system/mechanic impact**
   (what it changes), **notes** (load order, configuration).
3. Leave any unknown field as *"user to provide"* - never invent data.
4. Run `build.bat` to regenerate the PDF.

Wave 0 is **vanilla + UI/QoL only**. Waves 1-2 may add content and new mechanics but **no pure
power spikes**.

## Target version

The guide is written for No Man's Sky **6.45.1**. Confirm the build number on the main menu
before relying on it - a future patch may shift what the mods do. Compatibility heuristic:
if a specific mod version is unknown, use the patch/release date.

## Structure

- `guide/` - Typst sources (installation, per-wave chapters, glossary)
- `output/` - generated PDF
- `STATUS.md` - live decision log (decisions, open questions, pending user inputs)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
