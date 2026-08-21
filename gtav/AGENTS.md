# Santos Supreme — Agent Instructions

This project produces a curated GTA V Enhanced modlist and game guide called **Santos Supreme**, organized into progressive waves with roleplaying backstories.

## Project structure
- `guide/wave0/` — Wave 0 "Getting By": vanilla+/first playthrough. UI/QoL mods only.
- `guide/wave1/` — Wave 1 "Untold Stories": builds on Wave 0. Adds graphics, content, mechanics.
- `template.typ` — Typst 0.15 PDF template. Includes all guide `.typ` files.
- `generate.bat` — Batch file: `typst compile template.typ output/santos-supreme.pdf`.
- `conflicts.md` — Known mod conflicts (NOT in PDF).
- `mod-ideas.md` — Future mod ideas (NOT in PDF).

## Mod rules
- All mods must be compatible with GTA V Enhanced 1.0.1158.13 (July 14, 2026 update).
- No conflicting mods (same .rpf or ScriptHookV hook = conflict).
- No porn. Adult/nude allowed where relevant with per-mod user approval.
- No cheating/overpowered/all-knowing mods.
- No redundant mods.
- Wave 0: UI/QoL/bugfix only. Wave 1 keeps Wave 0 and adds graphics, content, mechanics.

## PDF generation
- `generate.bat` rebuilds `output/santos-supreme.pdf` from `template.typ`.

## Foundation tools
- CodeWalker + OpenRPF (mod managers), ScriptHookV, ScriptHookVDotNet Enhanced, Gameconfig.xml
