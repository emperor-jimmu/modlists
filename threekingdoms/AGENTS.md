# Total War: Three Kingdoms — Beneath a Crimson Banner Modlist

## Project
A curated modlist and game guide for **Total War: Three Kingdoms v1.7.2**.
Organized into 3 progressive waves of difficulty. Named "Beneath a Crimson Banner".

## Game Version Constraint
ALL mods added must target game version 1.7.2 (or 1.7.x — use patch release dates as heuristic). Do NOT add mods for other versions.

## Mod Addition Rules
- No conflicting mods. Check conflicts.yaml before adding.
- No porn mods. Adult/nude content is okay where thematically relevant. If in doubt, ask the user.
- No redundant mods. Don't add two mods that do the same thing.
- No cheating/overpower/all-knowing mods.
- Graphics, content, and mechanic mods belong in Wave 1+ only. Wave 0 is UI/QoL only.

## File Organization
- `guide/00-wave0/` — Wave 0: intro, how-to-play, mods.yaml
- `guide/01-wave1/` — Wave 1: intro, strategy, mods.yaml
- `guide/02-wave2/` — Wave 2: intro, strategy, mods.yaml
- Each mods.yaml follows the schema in the spec doc.
- `template/` — Typst files for PDF generation
- `conflicts.yaml` — reference only, NOT in PDF
- `mod-ideas.yaml` — ideas for future mods, NOT in PDF

## PDF Build
Run `build.bat` from the repo root to compile the PDF.
Requires Typst 0.15+ installed and fonts in `fonts/`.

## Reference
See `docs/superpowers/specs/2026-07-25-beneath-a-crimson-banner-design.md` for full design spec.

## Verified Mod IDs (v2026-07-30)

All Workshop IDs below verified via Playwright page title checks. Regex-based extraction from collection HTML proved unreliable (produced false mappings like "Han Character Hoarding Nerf" → Chibi Start Date mod).

### Wave 0
| Mod | ID |
|-----|----|
| 1.7.2 Bug Fix | 2423136085 |
| Improved Campaign Map Performance | 2804293305 |
| Overlay Map Alternate (English) | 1821556122 |
| Enhanced Battle Camera | 1775523368 |
| Respec Character Skills When They Join You | 1803671821 |

### Wave 1
| Mod | ID |
|-----|----|
| Units Model Historical Reskin | 1835352612 |
| New and Better Horse Armors for Generals | 1909079735 |
| Better Faces Plus | 1871547800 |
| Horse Armor For Generals | 1829289830 |
| Make Them Unique 3.3 | 1812159400 |
| MTU Characters Remodeled | 2025406762 |
| MTU Event Add-on 1.0 | 2428920358 |
| Better Diplomacy | 1866034304 |
| Relationships Matter | 2501505472 |
| Battlefield Conversations EXPANDED! | 2465977086 |
| Power and Politics | 2681138403 |
| Han Character Hoarding Nerf | 1791586648 |

### Wave 2
| Mod | ID |
|-----|----|
| Radious Total War Mod - Part 1 | 1791367091 |
| Radious Total War Mod - Part 2 | 1791368928 |
| Radious + MTU Compatibility Patch | 2072763823 |
| 100% Matched Combat Mod | 2040616468 |
| Way of the Sword - Cinematic Combat | 2040267017 |
| Kelstr's Realistic Battle Blood | 2437515689 |

### Sources
- **Steam Collection "1.7.1 Ultimate Modlist"** (ID 2823665106): 66 mods, used for candidate pool. URLs extracted from accessibility tree (Playwright snapshot), NOT from regex scraping — regex produced wrong pairings.
- **Reddit r/totalwar (u/Oraye, 2024)**: Curated list used as quality filter. Several recommendations (Ink Selection Markers, Arrow Trails Redux) were verified on Workshop despite initial search failures.
- **Steam API (GetPublishedFileDetails/v1)**: Used for bulk description lookup. Returns titles reliably but author names may be blank. Author field should be manually verified via Playwright.

### Mod-ideas.yaml entries verified on Workshop
- Ink Selection Markers (ID 2001745196, by Little_Fighter)
- Arrow Trails Redux (ID 1786410120, by Petellius) — standalone, NOT part of The Gathering
- More Flag Variations in Battle (ID 1954481438, by contactnovuspc)
- Han Dynasty Brick Style Unit Cards (ID 1888638797 by Alex Zhao, ID 2223282115 by King of Wei)
- Dynamic Reforms (ID 2145105296, by Timekeeper)
- The Gathering: Core Object (ID 2281892119, by Inter-object), Heroes (ID 2418752803), Sandbox (ID 1843327136)
- TROM Pack 1 (ID 1977631962) + Pack 2 (ID 1998760417, by hooveric)
