# Throne of Titans — Civilization IV: Beyond the Sword Modlist & Guide

A structured modlist + game guide/tutorial (and glossary) for **Sid Meier's Civilization IV: Beyond the Sword**, targeting patch **3.19**.

- **Modlist name:** Throne of Titans
- **Mod organizer:** CIV 4 – All Mod Chooser (manual installation into `Beyond the Sword\Mods` + launch options documented as fallback)
- **Structure:** 4 progressive "waves" — Wave 0 is a full beginner how-to-play (vanilla + UI/QoL mods only); Waves 1–3 add strategy depth and richer systems (no pure power spikes)

## Contents

| Path | Purpose |
|---|---|
| `guide/` | Guide sources (Typst 0.15), organized by category: installation, modlist, waves 0–3, glossary |
| `output/` | Generated PDF |
| `STATUS.md` | Living decision log: design notes, open questions, user instructions |
| `conflicts-mods.md` | Conflict tracking (NOT included in the PDF) |
| `mod-ideas.md` | Future mod ideas (NOT included in the PDF) |
| `build-pdf.bat` | Regenerates the PDF |
| `assets/logo.jpg` | Cover artwork |

## Requirements

- Typst 0.15+ — e.g. `winget install Typst.Typst`
- Civilization IV: Beyond the Sword 3.19 installed (Steam / GOG / DVD)

## Build the PDF

```bat
build-pdf.bat
```

Output: `output/Throne-of-Titans.pdf`

Live editing: `typst watch guide/main.typ output/Throne-of-Titans.pdf`

## How to contribute mods

The mod list is owned by the project owner. On 2026-08-21 the owner asked tooling to research and fill waves 0–2 (root TODO #31); every entry was sourced from each mod's own material (CivFanatics threads/resources, SourceForge, official sites) and recorded with a sourcing note in `guide/20-modlist.typ`. The owner remains the final authority and can amend or remove any entry.

To add or change a mod, provide:

1. Mod name + URL
2. Dependencies
3. System / mechanic impact (what it changes)
4. Notes (load order, configuration, etc.)
5. Which wave (0–3) it belongs to

Missing fields are marked **user to provide** — they are never filled in or researched by the tooling unless the owner explicitly asks.
