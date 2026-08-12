# Aetherial Purity - No Man's Sky Modlist & Guide

A game guide and modlist for **No Man's Sky** (version 6.45.1, Steam), organized in
three progressively harder "waves" (0-2), each with its own roleplaying backstory, rendered
as a colorful PDF via Typst.

- Modlist: **curated and verified** (2026-08-12) — every mod card is grounded in its Nexus
  Mods page (exact URL, last-updated date, impact, conflicts). A few slots remain open
  (see the table); they are marked *"user to provide"* because no maintained mod fits the
  wave rules.
- Mod organizer: Singularity (see `STATUS.md`)
- Mod source: Nexus Mods (all cards link directly to their pages)
- PDF: run `build.bat` to regenerate `output/Aetherial-Purity.pdf`

## Mods per wave

| Wave | Theme | Mods |
|---|---|---|
| 0 - First Light | Graphics + QoL only (vanilla values untouched) | 14 curated |
| 1 - The Cartographer | Content + mechanics (no power spikes) | 8 curated + 2 open slots |
| 2 - The Astral Architect | Richest systems + endgame | 2 curated + 6 open slots |

The two-phase addition the user requested: **Phase 1** filled Wave 0 with graphics and
QoL mods only; **Phase 2** filled Waves 1-2 with the fully modded experience — content
and mechanics judged for suitability, non-redundancy, and the no-power-spike rule. The
full decision trail is in `STATUS.md`.

## How to add a mod

Mod cards live in the wave's guide files (`modlist.typ`, `mechanics.typ`, `graphics.typ`,
`content.typ` under `guide/wave-*/`). To add or replace a mod:

1. Open the wave's Typst file and find the card (or an open *"user to provide"* slot).
2. Fill the card fields with the `mod-entry(...)` helper: **clickable name + URL**,
   **dependencies**, **system/mechanic impact** (what it changes), **notes** (load order,
   configuration, last-updated date).
3. Keep the wave rules in mind: Wave 0 admits only appearance/operation/planning changes;
   waves 1-2 admit new systems and decisions but no pure power spikes.
4. Run `build.bat` to regenerate the PDF.

Wave 0 is **vanilla + UI/QoL + graphics only**. Waves 1-2 may add content and new
mechanics but **no pure power spikes**.

## Target version

The guide is written for No Man's Sky **6.45.1**. Confirm the build number on the main menu
before relying on it - a future patch may shift what the mods do. Compatibility heuristics:
if a specific mod version is unknown, use the patch/release date; and no mod last updated
before 29 January 2025 works with modern builds (Worlds Part II modding rework) — every
card in this guide was verified to be newer than that cutoff on 2026-08-12.

## Structure

- `guide/` - Typst sources (installation, per-wave chapters, glossary)
- `output/` - generated PDF
- `STATUS.md` - live decision log (decisions, open questions, pending user inputs)
- `conflicts-mods.md` / `mod-ideas.md` - not included in the PDF
