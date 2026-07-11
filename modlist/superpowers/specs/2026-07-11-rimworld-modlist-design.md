# RimWorld Modlist & Learning Guide — Design Spec

## Purpose

A git-tracked, versioned project that produces a PDF guide for a first-time RimWorld player. The guide teaches vanilla RimWorld, installs a curated modlist via RimPy, and documents performance impact. The modlist focuses on content expansion (no cheating/overpowered mods).

## Tooling

| Tool                  | Role                               | Why                                                                                     |
|-----------------------|------------------------------------|-----------------------------------------------------------------------------------------|
| **RimPy Mod Manager** | Mod organizer & load-order sorting | Windows-native, auto-sort, community standard                                           |
| **mdbook**            | Doc→PDF generation                 | Single markdown source → website + PDF. Book.toml configures version metadata on cover. |
| **Pandoc**            | PDF rendering (via mdbook)         | Underlying engine, mdbook handles invocation                                            |

## Project Structure

```md
rimworld-modlist/
  version.json                  # { "version": "1.0.0", "gameVersion": "1.6.4633", "gameVersionMin": "1.6", "date": "2026-07-11" }
  # modlist.json               # (deferred — guide text is sufficient for v1)
  missing-mods.md               # Mods the user envisions but don't exist yet, with pseudo-specs
  README.md                     # Project overview, quick-start, badges
  AGENTS.md                     # AI assistant instructions for this repo
  modlist/
    chapter-01-what-is-rimworld.md
    chapter-02-setup.md
    chapter-03-framework.md
    chapter-04-bugfixes-performance.md
    chapter-05-ui-hud.md
    chapter-06-graphics.md
    chapter-07-gameplay-enhancements.md
    chapter-08-weapons-combat.md
    chapter-09-world-variety.md
    chapter-10-monsters-creatures.md
    chapter-11-npc-interactions.md
    chapter-12-alien-breeding.md
    chapter-13-gameplay-guide.md
    chapter-14-troubleshooting.md
    appendix-modlist-reference.md
    appendix-resources.md
  performance/                  # Performance testing methodology & templates
    methodology.md              # How to benchmark TPS, controlled colony save, procedure
    template.ods                # Spreadsheet: category, mod count, avg TPS, min TPS, RAM, load time
    results/                    # gitignored — user's own benchmarks
  book.toml                     # mdbook configuration
  .gitignore
```

## Versioning

- `version.json` at repo root stores semver + target game version
- Git tags (`v1.0.0`, `v1.1.0`, ...)
- mdbook configured to read version into PDF cover/title page
- PDF output filename: `rimworld-modding-guide-v{MAJOR}.{MINOR}.{PATCH}.pdf`

## Chapter Design & Learning Path

The guide is ordered as a **progression for a first-time player**. Each chapter:

1. Explains **what problem** the mods in this category solve
2. Lists each mod with a short **why this, not OP** explanation
3. Ends with a **"install now" or "wait until..."** recommendation

### Chapter-by-chapter

| #  | Chapter                | Content                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|----|------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 01 | What is RimWorld       | **Extensive tutorial.** Core game loop explained. Choosing crash-landed vs other starts. Colonist selection guide (passions, traits to avoid, skill priorities). Biome comparison (temperate forest vs arid vs tundra vs extreme). How to pick a landing tile (geothermal, soil, road access). Storyteller & difficulty breakdown. Early-game priorities (shelter, food, defense). Mid-game goals (research, raids, caravan). Late-game win conditions (ship, royal ascent, archonexus). DLC overview (Royalty, Ideology, Biotech, Anomaly) — what each adds, whether to enable on first run. What modding is, risks, save-game compatibility. |
| 02 | Setup                  | Install RimWorld, install RimPy, subscribe to mods, configure load order, profiles                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 03 | Framework              | Core libraries required by everything (Harmony, HugsLib, Mod Manager, etc.)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| 04 | Bugfixes & Performance | Vanilla bugs fixed, RocketMan, Performance Fish, etc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| 05 | UI / HUD               | Better tooltips, work tab enhancements, Mint Menus, etc.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| 06 | Graphics               | Clean Textures, Show Hair With Hats, pawn rendering fixes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 07 | Gameplay Enhancements  | Allow Tool, Replace Stuff, Common Sense, Pick Up And Haul — deeper mechanics, not easier                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| 08 | Weapons & Combat       | New weapon types, combat AI improvements, balance-focused                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 09 | World Variety          | Factions, biomes, events, exploration — VE series where appropriate                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 10 | Monsters & Creatures   | Alpha Animals, new threats, expanded fauna                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 11 | NPC Interactions       | Storytelling, faction diplomacy, quest expansion                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| 12 | Alien Breeding         | Genetic Rim, Alpha Genetics — genetic engineering mechanics                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| 13 | Gameplay Guide         | How to actually play a modded run with this list — early/mid/late game                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 14 | Troubleshooting        | Load order conflicts, compatibility, performance fixes, RimPy tips                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| A  | Modlist Reference      | Full table: name, category, author, Steam ID, dependencies                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| B  | Resources              | Links to forums, Discord servers, YouTubers, wiki                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

## Mod Selection Philosophy

### Included

- Bugfixes & performance optimizers
- Content expansions (weapons, creatures, biomes, events, factions)
- UI polish and HUD improvements
- Graphics/texture enhancements
- Gameplay depth (hauling logic, work priorities, crafting QoL)
- Genetic engineering / alien breeding mechanics
- Expanded NPC interactions

### Excluded

- Cheat/developer/debug mods
- Overpowered weapons that break vanilla balance
- Mods that trivialize core survival mechanics
- Anything the community labels "OP" or "cheaty"

## Performance Testing

- **Methodology doc** (`performance/methodology.md`):
    - Controlled colony save file (same map, same time, same population)
    - Measure: TPS (ticks per second), RAM usage, load time
    - Procedure: baseline (vanilla) → add categories incrementally → record deltas
- **Spreadsheet template** (`performance/template.ods`): columns for category, cumulative mod count, avg TPS, min TPS, RAM, load time, notes
- **Results** (`performance/results/`): gitignored — user's own benchmarks

## Output

- mdbook builds to `modlist/guide/` (website) and `modlist/guide/output/rimworld-modding-guide-v{version}.pdf`
- Guide is self-contained — reader needs only RimWorld + RimPy + the PDF

## Baseline Resolution

The guide targets **4K (3840×2160)** as the baseline resolution. Chapter 05 (UI/HUD) and Chapter 06 (Graphics) should prioritize mods that scale well at 4K. Screenshots in the guide must be taken at 4K resolution unless otherwise noted.

## Tooling Note: Playwright

Use the Playwright browser tool for any web research that requires rendered JavaScript (Steam Workshop pages, mod documentation sites, forum threads). Plain HTTP fetch (WebFetch) should be tried first for simple pages; fall back to Playwright when content doesn't load.

## Missing Mods

`missing-mods.md` at repo root catalogs mods the user envisions but that don't exist yet on Steam Workshop. Each entry includes:

- Name
- Category
- Problem it would solve / gap it would fill
- Pseudo-spec: gameplay mechanics, UI, dependencies, approximate scope

## Future Considerations (out of scope for v1)

- Multi-language support (mdbook i18n)
- CI/CD auto-build PDF on tag
- Separate "lightweight" and "full" modlist profiles
