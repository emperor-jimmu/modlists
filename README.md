# RimWorld Modlist & Learning Guide

A curated, beginner-friendly RimWorld modlist with a comprehensive learning guide — from your first crash landing to a heavily modded colony. Built for **RimWorld 1.6.4633** with **all DLC** on **Windows** at **4K resolution**.

## Quick Start

1. **Install RimWorld** (Steam) — ensure you own all DLC (Royalty, Ideology, Biotech, Anomaly, Odyssey)
2. **Install [RimPy Mod Manager](https://github.com/rimpy-custom/RimPy/releases)**
3. **Read the guide** — start with [Chapter 1: What is RimWorld](modlist/chapter-01-what-is-rimworld.md)
4. **Subscribe to mods** — each chapter links mods on Steam Workshop
5. **Sort with RimPy** — auto-sort handles load order
6. **Play!**

## Guide Structure

The guide is ordered as a **learning progression**. Install mods as you go — don't dump 100+ mods on day one.

| # | Chapter | What You'll Learn |
|---|---------|-------------------|
| 01 | What is RimWorld | Core game loop, storyteller, difficulty, starting choices, DLC overview |
| 02 | Setup | Installing RimWorld + RimPy, organizing mods |
| 03 | Framework | Core libraries (Harmony, HugsLib, etc.) |
| 04 | Bugfixes & Performance | Vanilla bugfixes, RocketMan, performance optimization |
| 05 | UI / HUD | Better tooltips, work tab, Mint Menus |
| 06 | Graphics | Clean Textures, visual enhancements |
| 07 | Audio & Music | Music packs, sound QoL tweaks |
| 08 | Gameplay Enhancements | Allow Tool, Common Sense, hauling logic |
| 09 | Weapons & Combat | New weapons, combat AI, balance |
| 10 | World Variety | Biomes, factions, events, exploration |
| 11 | Monsters & Creatures | Alpha Animals, new threats |
| 12 | NPC Interactions | Faction diplomacy, quest expansion |
| 13 | Alien Breeding | Genetic Rim, Alpha Genetics |
| 14 | Gameplay Guide | Full modded run — early/mid/late game |
| 15 | Troubleshooting | Load order fixes, compatibility |

## Building the PDF

Requires [Pandoc](https://pandoc.org/) and [Typst](https://typst.app/).

```bash
node scripts/build-pdf.mjs
# Output: output/Home-Among-the-Stars-v{version}.pdf
```

## Performance Testing

See [`performance/methodology.md`](performance/methodology.md) for how to benchmark mod impact on TPS, RAM, and load times. A spreadsheet template is provided at [`performance/template.ods`](performance/template.ods).

## Modlist Philosophy

**Included:** Bugfixes, content expansions, UI/UX polish, graphics, gameplay depth, alien breeding, NPC interaction
**Excluded:** Cheat/OP mods, anything that removes survival challenge

## License

This guide is provided for educational purposes. RimWorld is owned by Ludeon Studios. Mods are property of their respective authors.
