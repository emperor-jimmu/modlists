# Elder Wilds

An opinionated modlist for Skyrim AE 1.6.1170 (Steam) built around five pillars: modern UI and graphics, big dark world, lots of new content, modern mechanics, and living the world.

## What This Is

This repo is a markdown planning workspace for the Elder Wilds modlist. All planning files live in the `guide/` directory, with each numbered file owning one category of mod research and decision-making.

## Quick Links

| File                               | Purpose                                         |
|-----------------------------------|-------------------------------------------------|
| `guide/modlist.md`                | **Canonical hub**: scope, section index, pillars|
| `guide/separators.md`             | MO2 separator layout reference                  |
| `guide/install.md`                | Setup and installation guide                    |
| `TODO.md`                         | Scratch backlog and future research ideas       |
| `tools/build-modlist-pdf.ps1`     | Generates `rendered/elder-wilds.pdf` from all section files via Typst |
| `rendered/elder-wilds.md`         | Single-page rendered view of all section files  |

See [`guide/modlist.md`](guide/modlist.md) for the full planning section index and project scope.

## Target Build

- Skyrim Special Edition / Anniversary Edition runtime `1.6.1170` (Steam)
- No paid Anniversary Edition Creation Club content
- Mod Organizer 2 as the mod manager
- Legacy of the Dragonborn as a major collection and museum pillar

## Graphics Direction

- **Community Shaders** is the exclusive graphics framework — no ENB, no LUX family.
- Lighting baseline: CS Light + True Light + Window Shadows Ultimate + Ambient Templates, with Based Lighting Configs and Standard Lighting Templates (SLT).
- Road lights: Lanterns of Skyrim II + CS Lantern Lights (no Lux Via).
