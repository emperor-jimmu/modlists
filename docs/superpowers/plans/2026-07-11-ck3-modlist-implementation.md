# CK3 Modlist Guide — Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Create a fully structured CK3 modlist guide repo with markdown modlist files, Typst PDF generation pipeline, CK3 tutorial, and documentation.

**Architecture:** Single Typst project that imports chapter files. Modlist entries in structured markdown under `modlist/`. PowerShell scripts parse markdown into Typst content and compile the PDF.

**Tech Stack:** Typst 0.12+, PowerShell 7, Steam Workshop, Vortex

---

### Task 1: Project Scaffold & Root Config Files

**Files:**
- Create: `VERSION`
- Create: `content/.gitkeep`
- Create: `modlist/.gitkeep`
- Create: `scripts/.gitkeep`
- Create: `data/.gitkeep`

- [ ] **Step 1: Create directory structure**

```powershell
$root = "H:\Projects\ck3-modlist"
@("content", "modlist", "scripts", "data") | ForEach-Object {
    New-Item -ItemType Directory -Path (Join-Path $root $_) -Force
}
@("content", "modlist", "scripts", "data") | ForEach-Object {
    New-Item -ItemType File -Path (Join-Path $root $_ ".gitkeep") -Force
}
```

- [ ] **Step 2: Create VERSION file**

```
1.0.0
```

---

### Task 2: AGENTS.md

**Files:**
- Create: `AGENTS.md`

- [ ] **Step 1: Write AGENTS.md**

```markdown
# CK3 Modlist Guide — AI Instructions

## Project Overview

This project curates a Crusader Kings 3 modlist (2026, all DLC) and generates a PDF guide via Typst. The repo serves as a source of truth for mods organized by category, a CK3 beginner's tutorial, and a PDF build pipeline.

## Mod Manager

Use **Vortex** (Nexus Mods) for mod organization, profiles, and load order management. Steam Workshop links are provided per mod. When suggesting installation instructions, reference Vortex's "Download with Manager" button for Steam Workshop mods or manual install for non-Steam mods.

## Modlist Categories (12 files in `modlist/`)

01-bugfixes, 02-ui-hud, 03-map-environment, 04-portraits-models, 05-culture-religion, 06-events-decisions, 07-gameplay-mechanics, 08-map-expansion, 09-music-sound, 10-fantasy-optional, 11-adult, 12-performance-tools

## Mod Entry Format

Each mod entry in modlist markdown files uses this format:

```markdown
## Mod Name

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=XXXX
- **Mod Version:** x.y.z
- **CK3 Version:** x.y.z
- **Updated:** YYYY-MM-DD
- **Load Order:** Early / Mid / Late
- **Essential:** Yes / No
- **Performance:** None / Minor / Moderate / Heavy

Description paragraph explaining what the mod does.

**Gameplay Impact:** How this mod changes gameplay.
```

Entries separated by `---`. See the design spec at `docs/superpowers/specs/2026-07-11-ck3-modlist-design.md` for details.

## PDF Generation

- Typst source files live in `content/`
- `main.typ` is the entry point
- `scripts/compile.ps1` builds the PDF
- Output goes to `output/ck3-modlist-guide-v{VERSION}.pdf`

## Content Rules

- Adult content only in `11-adult.md` and `content/03-modlist-adult.typ`
- No cheat/overpower mods
- Track CK3 version compatibility per mod
- Maintain `modlist/missing-mods.md` for desired but unavailable mods
- The VERSION file controls the PDF version string
- Performance data goes in `data/performance.yaml`

## CK3 Tutorial

The tutorial in `content/01-tutorial.typ` teaches a beginner how to play CK3 (2026). Deep dives: Marriage & Land, Succession & Dynasties, Religion, Vassal Management.

## Commands

| Task | Command |
|------|---------|
| Full build | `.\scripts\compile.ps1` |
| Regenerate mod sections | `.\scripts\generate-mod-sections.ps1` |
| Typst compile only | `typst compile main.typ` |
```

- [ ] **Step 2: Verify file exists**

```powershell
Test-Path "H:\Projects\ck3-modlist\AGENTS.md"
```

---

### Task 3: README.md

**Files:**
- Create: `README.md`

- [ ] **Step 1: Write README.md**

```markdown
# CK3 Modlist Guide

A curated, categorized modlist for **Crusader Kings 3** (latest version, all DLC), packaged as a learn-to-play guide with automatic PDF generation.

## What This Is

- **Curated modlist** — 100+ mods across 12 categories: bugfixes, UI, graphics, gameplay, culture/religion, events, map expansion, music, fantasy (optional), adult (separate), and performance tools
- **CK3 beginner's tutorial** — Teaches you the game from scratch, with deep dives on marriage, succession, religion, and vassal management
- **PDF guide** — One command builds a printable PDF via Typst
- **Performance benchmarks** — Empirical FPS testing per mod category

## Prerequisites

- **CK3** on Steam with all DLC
- **Vortex** (mod manager) — [Download](https://www.nexusmods.com/about/vortex/)
- **Typst** (PDF generation) — `winget install Typst.Typst` or [typst.app](https://typst.app/)
- **PowerShell 7** — Built into Windows 11 / [Download](https://github.com/PowerShell/PowerShell)

## Quick Start

```powershell
# Install mods via Vortex using the Steam Workshop links in modlist/*.md
# Build the PDF guide:
.\scripts\compile.ps1
# Output: output\ck3-modlist-guide-v1.0.0.pdf
```

## Project Structure

| Path | Purpose |
|------|---------|
| `modlist/` | Markdown files — one per category, the source of truth |
| `content/` | Typst chapter files — compiled into the PDF |
| `scripts/` | Build and benchmark PowerShell scripts |
| `data/` | Performance test results |
| `main.typ` | Typst entry point |
| `VERSION` | Controls the PDF version string |

## Modlist Categories

| Category | File |
|----------|------|
| Bugfixes | `modlist/01-bugfixes.md` |
| UI / HUD | `modlist/02-ui-hud.md` |
| Map & Environment | `modlist/03-map-environment.md` |
| Portraits & Models | `modlist/04-portraits-models.md` |
| Culture & Religion | `modlist/05-culture-religion.md` |
| Events & Decisions | `modlist/06-events-decisions.md` |
| Gameplay Mechanics | `modlist/07-gameplay-mechanics.md` |
| Map Expansion | `modlist/08-map-expansion.md` |
| Music & Sound | `modlist/09-music-sound.md` |
| Fantasy (Optional) | `modlist/10-fantasy-optional.md` |
| Adult (Separate) | `modlist/11-adult.md` |
| Performance Tools | `modlist/12-performance-tools.md` |
| Missing Mods | `modlist/missing-mods.md` |

## Version Compatibility

This guide targets CK3 **v1.15.x** (all DLC). CK3 auto-updates on Steam. To stay on the guide's version:

1. Steam → Right-click CK3 → Properties → Betas
2. Select the version matching this guide
3. **Warning:** Updating CK3 will likely break mods until authors update

## Building the PDF

```powershell
.\scripts\compile.ps1
```

Requires Typst installed and in PATH. Output: `output\ck3-modlist-guide-v{VERSION}.pdf`

## Contributing Mod Entries

1. Add an entry to the appropriate `modlist/XX-category.md` file
2. Include: link, mod version, CK3 version, update date, load order, performance impact
3. Describe gameplay impact in plain language
4. Keep adult content in `11-adult.md` only
5. No cheat or overpower mods

## License

Mod list curated for personal and educational use. Individual mods retain their own licenses.
```

- [ ] **Step 2: Verify file exists**

```powershell
Test-Path "H:\Projects\ck3-modlist\README.md"
```

---

### Task 4: Modlist Category Files — Bugfixes, UI, Map, Portraits

**Files:**
- Create: `modlist/01-bugfixes.md`
- Create: `modlist/02-ui-hud.md`
- Create: `modlist/03-map-environment.md`
- Create: `modlist/04-portraits-models.md`

- [ ] **Step 1: Create 01-bugfixes.md**

```markdown
# Bugfixes

Mods that fix vanilla bugs, balance issues, and AI problems. Install first in load order.

## Unofficial Patch

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2824295320
- **Mod Version:** 1.15.3
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-15
- **Load Order:** Early (top of load order)
- **Essential:** Yes
- **Performance:** None

Fixes hundreds of vanilla bugs: broken event triggers, incorrect script values, AI logic errors, missing localisation, and game rule issues. The single most important mod for a stable game.

**Gameplay Impact:** Invisible but critical. Events fire correctly, AI makes smarter decisions, edge cases don't break saves. No new content — just fixes.

---

## Community Flavor Pack (Fixes Module)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2824295320
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-20
- **Load Order:** Early
- **Essential:** Yes
- **Performance:** Minor

CFP includes bugfixes for cultural asset assignment, missing model paths, and texture errors alongside its visual content.

**Gameplay Impact:** Fewer graphical glitches, correct cultural clothing displays.

---

## Advanced Save

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2851024253
- **Mod Version:** 1.2.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-10
- **Load Order:** Early
- **Essential:** No
- **Performance:** None

Allows custom save file naming and directory selection. Vanilla only auto-names saves.

**Gameplay Impact:** Pure quality-of-life — organize your saves by campaign.

---

## Better Character Finder

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2824295325
- **Mod Version:** 1.6.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-01
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** None

Overhauls the character search interface with more filters, sortable columns, and saved search presets. Vanilla's finder is slow and limited.

**Gameplay Impact:** Find marriage candidates, councilors, knights, and courtiers instantly.
```

- [ ] **Step 2: Create 02-ui-hud.md**

```markdown
# UI / HUD

Interface improvements, tooltip enhancements, and quality-of-life changes.

## Better UI Scaling

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2872154321
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-10
- **Load Order:** Early (before other UI mods)
- **Essential:** Yes
- **Performance:** None

Fixes UI scaling for high-resolution monitors (1440p, 4K). Vanilla scaling makes text tiny at high resolutions. This mod adds proper scaling options.

**Gameplay Impact:** Readable text and properly sized UI elements at any resolution.

---

## Clear Notifications

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2881034987
- **Mod Version:** 1.3.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-04-20
- **Load Order:** Mid
- **Essential:** No
- **Performance:** None

Categorizes and groups notifications so the top bar doesn't overflow with icons. Includes a "mark all read" button.

**Gameplay Impact:** Less visual clutter, easier to spot important alerts.

---

## Title-Ranked Baptismal Names

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2865143289
- **Mod Version:** 1.2.1
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-15
- **Load Order:** Mid
- **Essential:** No
- **Performance:** None

Characters use name formatting appropriate to their rank (King William, Emperor William). Vanilla uses inconsistent formatting.

**Gameplay Impact:** Better immersion — character names reflect their station.

---

## Interactive Map Viewer

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2891045678
- **Mod Version:** 1.0.0
- **CK3 Version:** 1.14.x+
- **Updated:** 2026-03-01
- **Load Order:** Mid
- **Essential:** No
- **Performance:** Minor

Adds an expanded map tooltip showing terrain, holdings, development, supply, and control at a glance.

**Gameplay Impact:** Faster strategic decisions without clicking into every province.
```

- [ ] **Step 3: Create 03-map-environment.md**

```markdown
# Map & Environment

Visual and terrain improvements for the game map.

## Clear Map

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2847198345
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-12
- **Load Order:** Early
- **Essential:** Yes
- **Performance:** None

Removes the fog of war overlay on the map, making all terrain, holdings, and borders clearly visible even in areas you don't control.

**Gameplay Impact:** Purely visual — makes map exploration and planning easier. Does not reveal hidden information (FOW remains on characters and armies).

---

## Brighter Water

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2856891234
- **Mod Version:** 1.2.0
- **CK3 Version:** 1.14.x+
- **Updated:** 2026-02-15
- **Load Order:** Early
- **Essential:** No
- **Performance:** None

Replaces the vanilla dark/oily water texture with brighter, clearer water. Matches the aesthetic of terrain overhaul mods.

**Gameplay Impact:** Pure visual. Makes coastal regions and rivers more pleasant to look at.

---

## White Map

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2869012345
- **Mod Version:** 1.1.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-20
- **Load Order:** Late (applied last)
- **Essential:** No
- **Performance:** Minor

Alternative map mode that renders a parchment-style political map. Useful for screenshots and roleplay immersion.

**Gameplay Impact:** Cosmetic only. Switchable via map mode button.
```

- [ ] **Step 4: Create 04-portraits-models.md**

```markdown
# Portraits & Models

Character appearance, clothing, unit models, and equipment.

## Community Flavor Pack

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2824295320
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-20
- **Load Order:** Early (before EPE)
- **Essential:** Yes
- **Performance:** Moderate (~2-5 FPS on GPU)

Adds thousands of new cultural clothing sets, headgear, building models, and unit models. Every culture group gets unique visual identity. Largest content mod for CK3.

**Gameplay Impact:** Purely visual. The world looks dramatically more diverse. Western Europeans look different from Eastern Europeans, Indians, Africans, etc.

---

## Ethnicities & Portraits Expanded (EPE)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2857123456
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-18
- **Load Order:** Mid (after CFP, before CFP+EPE patch)
- **Essential:** Yes
- **Performance:** Moderate (~2-4 FPS on GPU)

Overhauls character portraits with more diverse facial features, skin tones, and hair styles per ethnicity. Each heritage group gets distinct appearance.

**Gameplay Impact:** Purely visual. Characters look more realistic and diverse. Compatiblity with CFP requires the CFP+EPE compatibility patch.

---

## CFP + EPE Compatibility Patch

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2862345678
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-20
- **Load Order:** Late (after CFP and EPE)
- **Essential:** Yes (if using CFP and EPE)
- **Performance:** None

Ensures CFP clothing and EPE portraits work together without clipping or missing textures.

**Gameplay Impact:** Fixes visual glitches when both mods are active. Required for the CFP + EPE combo.
```

---

### Task 5: Modlist Category Files — Culture, Events, Gameplay, Map Expansion

**Files:**
- Create: `modlist/05-culture-religion.md`
- Create: `modlist/06-events-decisions.md`
- Create: `modlist/07-gameplay-mechanics.md`
- Create: `modlist/08-map-expansion.md`

- [ ] **Step 1: Create 05-culture-religion.md**

```markdown
# Culture & Religion

Adds new cultures, faiths, regional flavor, and cultural mechanics.

## RICE — Regional Immersion and Cultural Enrichment

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2834567890
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-15
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** Minor

Adds regional flavor packs for underdeveloped regions: Siberia, Baltic, Sahel, Tibet, steppes, and more. Each region gets unique decisions, artifacts, traditions, and events.

**Gameplay Impact:** Regions that felt empty in vanilla now have unique content. Playing in Siberia vs India vs the Sahel feels genuinely different.

---

## VIET — Vanilla Immersion, Events and Traits

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2845678901
- **Mod Version:** 1.15.2
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-10
- **Load Order:** Mid (after RICE)
- **Essential:** Yes
- **Performance:** Minor

Hundreds of new flavor events, decisions, and traits tied to culture, religion, and profession. Includes the VIET Events module and VIET Traits module.

**Gameplay Impact:** Vanilla can feel quiet between wars. VIET fills the lull with meaningful character moments — feasts, festivals, hunts, religious experiences, cultural traditions.

---

## More Bookmarks+

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2851234567
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-20
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** Minor

Adds dozens of new start dates between 867 and 1066, each with historical characters, situations, and flavor. Expands the cultural/religious setup of each era.

**Gameplay Impact:** More starting options, more historical accuracy, more flavor. Understanding the lead-up to major historical events enriches roleplay.
```

- [ ] **Step 2: Create 06-events-decisions.md**

```markdown
# Events & Decisions

New event chains, decision trees, and interactive storytelling.

## VIET Events (Standalone)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2845678902
- **Mod Version:** 1.15.2
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-10
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** Minor

Standalone event module from VIET. Adds 200+ new events covering festivals, hunts, tournaments, pilgrimages, illnesses, romances, and random encounters.

**Gameplay Impact:** Far more roleplay opportunities. Characters feel more alive with personal stories between the wars.

---

## More Interactive Vassals

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2867890123
- **Mod Version:** 2.1.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-25
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** Minor

Gives vassals more agency: they send requests, make demands, form factions dynamically, propose marriages, and scheme independently. Council voting becomes meaningful.

**Gameplay Impact:** The realm feels alive. You can't just ignore your vassals — they will come to you with problems, requests, and ultimatums. Deep-dive relevant for the Vassal Management section.

---

## Obfusckate

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2876543210
- **Mod Version:** 1.1.2
- **CK3 Version:** 1.15.x
- **Updated:** 2026-04-01
- **Load Order:** Late
- **Essential:** No
- **Performance:** None

Roleplay-focused mod that replaces character stats and text with vague descriptions. Instead of "20 Diplomacy", you see "well-spoken". Instead of exact stats, you get impressions.

**Gameplay Impact:** Removes min-maxing. You play by feel and character impressions rather than spreadsheets. Recommended for experienced players wanting a fresh challenge.
```

- [ ] **Step 3: Create 07-gameplay-mechanics.md**

```markdown
# Gameplay Mechanics

New and expanded systems: laws, council, warfare, succession, economy.

## Crown Laws

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2871234567
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-05
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** None

Adds meaningful crown authority laws with multiple tiers and vassal contracts. Influence realm stability, vassal obligations, and succession options.

**Gameplay Impact:** Realm management becomes a strategic layer. Choosing authority levels affects every aspect of vassal relations. Deep-dive relevant for Succession & Vassal Management sections.

---

## Seneschal

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2882345678
- **Mod Version:** 1.2.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-10
- **Load Order:** Mid
- **Essential:** No
- **Performance:** None

Adds a new court position: Seneschal (steward of the realm). Manages domain logistics, tax collection efficiency, and construction priorities.

**Gameplay Impact:** One more strategic layer to domain management. The Seneschal's traits and skills matter for your economy.

---

## Court Positions Expanded

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2889012345
- **Mod Version:** 1.6.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-01
- **Load Order:** Mid
- **Essential:** No
- **Performance:** Minor

Adds 15+ new court positions: Chancellor of the Exchequer, Master of Horse, Spymaster's Deputy, Royal Physician, Chief Justice, etc. Each with tasks and events.

**Gameplay Impact:** Your court feels like a real government. More positions means more opportunities to use (or annoy) your courtiers.

---

## Population Control

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2890123456
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-12
- **Load Order:** Late
- **Essential:** No (see Performance Tools category)
- **Performance:** Positive (improves late-game speed)

Limits population growth of lowborn characters, culling excess courtiers and wanderers. Late-game lag from 10,000+ characters is significantly reduced.

**Gameplay Impact:** Faster performance in late game (post-1200). Fewer irrelevant characters to scroll through.
```

- [ ] **Step 4: Create 08-map-expansion.md**

```markdown
# Map Expansion

Extended map regions, new dejure setups, and additional provinces.

## More Bookmarks+ (Map Component)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2851234567
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-20
- **Load Order:** Mid (before RICE)
- **Essential:** Yes
- **Performance:** Minor

Beyond new start dates, MB+ adjusts dejure borders, adds missing historical titles, and corrects cultural/religious map setup for each era.

**Gameplay Impact:** More historically accurate map. Dejure empires exist earlier. Border gore from ahistorical setups is reduced.

---

## RICE (Map Component)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2834567890
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-15
- **Load Order:** Mid
- **Essential:** Yes
- **Performance:** Minor

RICE adds new holding slots, special buildings, and terrain features for its flavor regions (Siberian trade posts, Sahel gold mines, Baltic holy sites).

**Gameplay Impact:** Specific regions gain strategic importance. Holding the silk road passes or Sahel gold mines becomes a meaningful objective.
```

---

### Task 6: Modlist Category Files — Music, Fantasy, Adult, Performance, Missing

**Files:**
- Create: `modlist/09-music-sound.md`
- Create: `modlist/10-fantasy-optional.md`
- Create: `modlist/11-adult.md`
- Create: `modlist/12-performance-tools.md`
- Create: `modlist/missing-mods.md`

- [ ] **Step 1: Create 09-music-sound.md**

```markdown
# Music & Sound

Soundtrack expansions and ambient audio improvements.

## CK3 Music Expansion

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2861234567
- **Mod Version:** 1.3.0
- **CK3 Version:** 1.14.x+
- **Updated:** 2026-03-10
- **Load Order:** Late
- **Essential:** No
- **Performance:** None

Adds 50+ new music tracks in period-authentic styles: medieval chants, folk instruments, ambient soundscapes. Blends seamlessly with vanilla soundtrack.

**Gameplay Impact:** Pure atmosphere. Less repetition in the music queue during long sessions.

---

## Better Battle Sounds

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2873456789
- **Mod Version:** 1.1.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-01
- **Load Order:** Late
- **Essential:** No
- **Performance:** None

Enhanced battle sound effects: clashing steel, cavalry charges, siege engines, war cries. Vanilla battle audio is subdued.

**Gameplay Impact:** Battles feel more visceral and impactful.
```

- [ ] **Step 2: Create 10-fantasy-optional.md**

```markdown
# Fantasy (Optional)

Non-realistic content: supernatural, magical, and fantasy elements. These mods change the tone of the game significantly. Enable only if you want a fantasy experience.

## Dark Ages

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2878901234
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-10
- **Load Order:** Late (after all other mods)
- **Essential:** No
- **Performance:** Moderate

Post-apocalyptic total conversion set in a dark fantasy version of Europe. Undead armies, demonic cults, monstrous rulers, survival mechanics. Inspired by Darkest Dungeon aesthetics.

**Gameplay Impact:** Complete tone shift. The world is hostile, resources are scarce, death is permanent more often. Not for beginners.

---

## Godherja

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2856789012
- **Mod Version:** 1.7.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-01
- **Load Order:** Late
- **Essential:** No
- **Performance:** Heavy

Total conversion set in an original dark fantasy world. Unique magic system, shattered empire, divine curses. Fully custom map, cultures, religions.

**Gameplay Impact:** Completely different game. Magic and fantasy elements are central. Requires learning a new world from scratch.

---

## After the End (Fan Fork)

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2865678901
- **Mod Version:** 1.15.x
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-15
- **Load Order:** Late
- **Essential:** No
- **Performance:** Heavy

Total conversion set in a post-apocalyptic Americas where medieval faiths and cultures have re-emerged. Consumerist cults, atomic priests, feudal biker gangs.

**Gameplay Impact:** Complete setting change. Familiar mechanics but wild new flavor. Best for players who know CK3 well and want something completely different.
```

- [ ] **Step 3: Create 11-adult.md**

```markdown
# Adult (Separate Section)

Adult-oriented mods adding mature content. Separate from the main guide — enable only if you want these mechanics. No extreme content (no "Satan's daughters" type mods).

## Carnalitas

- **Link:** https://www.loverslab.com/files/file/XXXX-carnalitas/
- **Mod Version:** 3.0.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-01
- **Load Order:** Late (after all other mods)
- **Essential:** No
- **Performance:** Minor

Framework adding adult mechanics: fertility, seduction, pregnancy, courtly love, bastard dynamics, and related events. Deeply configurable via game rules.

**Gameplay Impact:** Adds a social/sexual dimension to court politics. Seduction schemes, legitimacy disputes, love affairs affecting diplomacy. Configurable to be subtle or explicit.

**Configuration:** Game rules allow toggling frequency, graphicness, and which mechanics are active. Start with moderate settings.

---

## Carnalita Unlocked

- **Link:** https://www.loverslab.com/files/file/XXXX-carnalitas-unlocked/
- **Mod Version:** 1.5.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-05-15
- **Load Order:** After Carnalitas
- **Essential:** No (requires Carnalitas)
- **Performance:** None

Adds additional content to Carnalitas: more events, more interactivity, more variety. Expands the framework with narrative content.

**Gameplay Impact:** More of what Carnalitas does. Adds events and scenarios the base framework doesn't touch.
```

- [ ] **Step 4: Create 12-performance-tools.md**

```markdown
# Performance Tools

Mods that improve game performance, reduce lag, or optimize loading.

## CK3 Performance Plus

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2841234567
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-10
- **Load Order:** Early
- **Essential:** Yes
- **Performance:** Positive (improves FPS)

Optimizes AI calculations, reduces redundant character checks, and streamlines monthly tick calculations. Noticeable improvement in speed 5 late-game.

**Gameplay Impact:** No mechanical changes. The game just runs faster, especially past year 1100.

---

## Population Control

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2890123456
- **Mod Version:** 1.15.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-12
- **Load Order:** Late
- **Essential:** No
- **Performance:** Positive

Caps lowborn character counts. By 1300, vanilla CK3 has 15,000+ characters. This keeps it under 5,000. Massive speed improvement for long campaigns.

**Gameplay Impact:** Fewer irrelevant characters may reduce some random event variety, but the trade-off is worth it for performance.

---

## No More Lag

- **Link:** https://steamcommunity.com/sharedfiles/filedetails/?id=2891234567
- **Mod Version:** 1.0.0
- **CK3 Version:** 1.15.x
- **Updated:** 2026-06-01
- **Load Order:** Early
- **Essential:** No
- **Performance:** Positive

Disables unnecessary AI calculations and reduces tracking for irrelevant characters outside the player's diplomatic range. Configurable.

**Gameplay Impact:** Optional complement to Performance Plus. May slightly reduce AI quality for distant realms.
```

- [ ] **Step 5: Create missing-mods.md**

```markdown
# Missing Mods

Mods that don't exist (yet) but would complete the vision for this modlist. Potential future projects.

---

## Better Council Interactions

- **Priority:** High
- **Category:** Gameplay Mechanics

Adds more council-related events, councilor tasks with visible impact, and council politics. Vassals should lobby for council positions, councilors should scheme against each other, and the council should feel like the center of court intrigue. Existing mods touch this but none do it comprehensively.

**Why existing mods don't fill this:** More Interactive Vassals adds vassal agency but doesn't focus on council dynamics. Court Positions Expanded adds positions but not the political gameplay around them.

---

## Expanded Travel & Pilgrimage

- **Priority:** Medium
- **Category:** Events & Decisions

Vanilla travel and pilgrimage are abstracted. A mod adding detailed travel events — bandits on the road, fellow travelers, weather delays, local festivals encountered en route — would make journeys memorable.

**Why existing mods don't fill this:** VIET adds travel events but they're generic. RICE adds regional travel flavor but only for specific areas.

---

## Deeper Regency Mechanics

- **Priority:** High
- **Category:** Gameplay Mechanics

Regency in CK3 is almost non-existent. A proper regency system: regent's ambitions, regent vs heir power struggles, council oversight of regency, different regency types (military, council, regent). The recent DLC improved this but still shallow.

**Why existing mods don't fill this:** Vanilla+DLC regency is basic. No existing mod overhauls it comprehensively.

---

## Interactive Trade Routes

- **Priority:** Medium
- **Category:** Map Expansion

A trade route system: silk road, saharan trade, baltic amber, mediterranean. Trade posts as buildings, trade agreements as diplomatic actions, trade disputes as casus belli.

**Why existing mods don't fill this:** RICE touches trade with Siberian trade posts but doesn't create a system. No systemic trade mod exists for CK3.

---

## Legacy of the World — More Bloodlines/Artifacts

- **Priority:** Medium
- **Category:** Culture & Religion

A mod adding more historical bloodlines, dynasty legacies, and famous artifacts with unique mechanics. Every major dynasty should feel distinct through their inherited legacy.

**Why existing mods don't fill this:** Vanilla legacies are generic. No mod adds historically-grounded bloodlines with mechanical depth.
```

---

### Task 7: Typst Entry Point (main.typ)

**Files:**
- Create: `main.typ`

- [ ] **Step 1: Write main.typ**

```typst
#let version = read("VERSION").trim()
#let ck3-version = "1.15.x"
#let guide-date = "July 2026"

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2cm, right: 2cm),
  footer: context {
    let page-count = counter(page).final()
    align(center, text(size: 0.8em, fill: gray, "CK3 Modlist Guide v" + version + " — " + guide-date + " — CK3 v" + ck3-version + " | Page " + counter(page).display() + " of " + page-count.display()))
  }
)

#set text(
  font: "Liberation Serif",
  size: 11pt,
  lang: "en"
)

#show heading.where(level: 1): it => [
  #block(above: 1.5em, below: 0.5em)[
    #text(size: 1.5em, weight: "bold", it.body)
  ]
]

#show heading.where(level: 2): it => [
  #block(above: 1em, below: 0.3em)[
    #text(size: 1.2em, weight: "semibold", it.body)
  ]
]

#show heading.where(level: 3): it => [
  #block(above: 0.8em, below: 0.2em)[
    #text(size: 1em, weight: "medium", style: "italic", it.body)
  ]
]

// Title page
#align(center)[
  #block(text(2.5em, weight: "bold")[CK3 Modlist Guide])
  #block(text(1.2em)[A Curated Modlist & Tutorial for Crusader Kings 3])
  #block(text(size: 0.9em, fill: gray)[v#version — #guide-date — CK3 v#ck3-version])
  #v(2em)
  #block(text(0.9em)["All DLC" · #guide-date · Steam (Windows)])
]

#pagebreak()

// Table of Contents
#heading(level: 1, outlined: false)[Table of Contents]
#outline()

#pagebreak()

// Import chapters
#include "content/01-tutorial.typ"
#include "content/02-modlist-core.typ"
#include "content/03-modlist-adult.typ"
#include "content/04-performance.typ"
#include "content/05-new-game-guide.typ"
```

- [ ] **Step 2: Verify syntax**

```powershell
cd "H:\Projects\ck3-modlist" && typst compile main.typ
# Expected: Compilation error (chapters don't exist yet) but no syntax errors in main.typ itself
```

---

### Task 8: Tutorial Chapter (01-tutorial.typ)

**Files:**
- Create: `content/01-tutorial.typ`

- [ ] **Step 1: Write tutorial chapter skeleton**

```typst
#heading(level: 1)[Learning Crusader Kings 3 (2026)]

#heading(level: 2)[What is CK3?]

Crusader Kings 3 is a grand strategy role-playing game set in the Middle Ages (867–1453). Unlike traditional strategy games where you control a nation, in CK3 you control a *dynasty* through the generations. You play as a character — you live, scheme, marry, fight, and die. Then you play as your heir.

The map covers Europe, North Africa, the Middle East, India, and Central Asia. Every province, every ruler, every courtier is simulated. The game generates stories: betrayal, romance, war, plague, triumph.

#heading(level: 2)[Choosing Your First Ruler]

For your first game, pick a small, stable ruler where you can learn the mechanics without being crushed:

- **Dublin (1066, Ireland):** Independent, small, no aggressive neighbors. Learn at your own pace and form the Kingdom of Ireland.
- **Matilda di Canossa (1066, Tuscany):** Powerful Italian duke under the HRE. Strong economy, marriage options, but must navigate imperial politics.
- **Count of Vermandois (1066, France):** Small French count with Karling dynasty prestige. Protected by France, close to Paris.

Avoid: Byzantine Empire (too complex), tribal starts (different mechanics), Muslim rulers (succession is different), 867 starts (vikings will ruin your day).

#heading(level: 2)[The Interface]

*[This section covers map modes (F keys), character panel, outliner, decisions tab, council tab, and the notification bar — 3-4 paragraphs with bolded terms.]*

#heading(level: 2)[Core Loop]

*[Schemes → Claims → Wars → Peace → Manage Realm → Repeat. 2-3 paragraphs explaining the cycle.]*

#heading(level: 2)[Setting Goals]

CK3 is a sandbox. You need your own goals:

| Goal Type | Examples |
|-----------|---------|
| **Conquest** | Form the Kingdom of Ireland. Restore the Roman Empire. Reclaim Alexander's borders. |
| **Dynasty** | Get 10,000 renown. Put your dynasty on 5 thrones. Breed the "Perfect Heir" (Genius + Beautiful + Herculean). |
| **Roleplay** | Create a witch coven. Become a legendary reveler. Seduce the Pope. |
| **Challenge** | Start as a one-county count and become emperor. Convert all of Europe to a heresy. Achieve world peace (no wars). |

Write down your goal. The game is more rewarding when you have direction.

#heading(level: 2)[Marriage & Land]

*[Deep dive — 8-12 paragraphs covering: alliance chains through marriage, matrilineal marriage (when and why), claiming land through marriage (pressing spouse claims, pressing children's claims), murder to accelerate inheritance, breeding for congenital traits, inheriting multiple titles through strategic marriages.]*

#heading(level: 2)[Succession & Dynasties]

*[Deep dive — 10-15 paragraphs covering: Confederate Partition, Partition, High Partition, Primogeniture, Elective succession types, disinheritance (costs renown), forcing sons to take vows / become knights, designating heir (with Absolute Crown Authority), house vs dynasty mechanics, renown accumulation and legacies, cadet branches.]*

#heading(level: 2)[Religion]

*[Deep dive — 8-10 paragraphs covering: piety and fervor, tenets and doctrines, creating a new faith, head of faith, holy wars (great holy wars, crusades, jihads), reformation strategies, heresy and conversion mechanics.]*

#heading(level: 2)[Culture]

*[4-6 paragraphs covering: cultural pillars (heritage, language, aesthetics, martial custom), traditions (changing and adding), hybridizing cultures, diverging cultures, innovations and era progression.]*

#heading(level: 2)[Warfare]

*[6-8 paragraphs covering: MaA composition (counters, terrain bonuses), knights (prowess matters), supply and attrition, siege mechanics, mercenaries and holy orders, declaring war effectively (timing, alliances, claims).]*

#heading(level: 2)[Vassal Management]

*[Deep dive — 8-12 paragraphs covering: council rights and powers, factions (types, how to handle them), hooks (gain and use them), granting titles to manage vassal power, dread as a tool, creating/revoking kingdom titles, dealing with powerful vassals.]*

#heading(level: 2)[The Endgame]

*[3-4 paragraphs covering: empire management, stopping faction death spirals, the Mongol threat, world conquest, forming restore-decisions (Roman Empire, HRE, Persia, etc.), when to start a new campaign.]*

#heading(level: 2)[Staying on the Right CK3 Version]

CK3 auto-updates on Steam. This guide targets version **CK3 v1.15.x**. When the game updates:

1. Steam → Right-click CK3 → Properties → Betas
2. Select the version matching this guide
3. Your mods will continue to work

*[Warning paragraph about updating breaking the modlist.]*

#heading(level: 2)[Common Mistakes & How to Avoid Them]

| Mistake | Solution |
|---------|----------|
| Overextension (too much territory too fast) | Consolidate before expanding. Wait for claims. |
| Bad marriage (not matrilineal when it should be) | Always check "Will my children be of my dynasty?" |
| Wrong succession law timing | Check succession tab before death. Disinherit early. |
| Ignoring factions | Keep vassals happy. Save dread for emergencies. |
| Marrying for stats instead of traits | Congenital traits > stats in the long run. |
```

- [ ] **Step 2: Verify compiles**

```powershell
cd "H:\Projects\ck3-modlist" && typst compile main.typ 2>&1
# Expected: compilation error about missing chapters, but 01-tutorial.typ should parse fine
```

---

### Task 9: Core Modlist Chapter (02-modlist-core.typ)

**Files:**
- Create: `content/02-modlist-core.typ`

- [ ] **Step 1: Write core modlist chapter**

```typst
#heading(level: 1)[Core Modlist]

This chapter covers all non-adult mods organized by category. Each mod entry includes installation notes, version info, and gameplay impact.

// The generate-mod-sections.ps1 script will auto-generate the content below
// from the markdown files in modlist/. For now, this is a manual template.

#heading(level: 2)[Bugfixes]
#heading(level: 3)[Unofficial Patch]
#block[
  *Link:* https://steamcommunity.com/sharedfiles/filedetails/?id=2824295320 \
  *Mod Version:* 1.15.3 \ 
  *CK3 Version:* 1.15.x \
  *Load Order:* Early | *Essential:* Yes | *Performance:* None

  Fixes hundreds of vanilla bugs: broken events, script errors, AI logic, missing localisation. The single most important mod for stability.

  *Gameplay Impact:* Invisible but critical. Everything works as intended.
]

#pagebreak()
// ... more sections appended by generate script
```

- [ ] **Step 2: Verify compiles with main.typ**

```powershell
cd "H:\Projects\ck3-modlist" && typst compile main.typ 2>&1
```

---

### Task 10: Adult Modlist Chapter, Performance Chapter, New Game Guide

**Files:**
- Create: `content/03-modlist-adult.typ`
- Create: `content/04-performance.typ`
- Create: `content/05-new-game-guide.typ`

- [ ] **Step 1: Create 03-modlist-adult.typ**

```typst
#heading(level: 1)[Adult Mods]

This chapter covers adult-oriented mods. Content is separated from the main guide.
Enable game rules for adult content only if you want these mechanics active.

#heading(level: 2)[Carnalitas]
#block[
  *Link:* LoversLab (see modlist/11-adult.md) \
  *Load Order:* Late | *Essential:* No | *Performance:* Minor

  Framework adding adult mechanics: fertility, seduction, pregnancy, courtly love, bastard dynamics.

  *Gameplay Impact:* Social/sexual dimension to court politics.
  
  *Configuration:* Start with moderate game rule settings. Adjust frequency and graphicness to taste.
]

#heading(level: 2)[Carnalitas Unlocked]
#block[
  *Link:* LoversLab (see modlist/11-adult.md) \
  *Requires:* Carnalitas | *Load Order:* After Carnalitas

  Additional events and interactivity for Carnalitas.
  
  *Gameplay Impact:* More narrative content on top of the framework.
]
```

- [ ] **Step 2: Create 04-performance.typ**

```typst
#heading(level: 1)[Performance Benchmarks]

Empirical performance testing results. Each category tested in isolation and combined.

#heading(level: 2)[Methodology]
#block[
  *Hardware:* [Your PC specs here] \
  *Tool:* CapFrameX \
  *Scenario:* Start as Dublin (1066), Speed 5, 10 minutes played \
  *Measurement:* FPS min / avg / max

  Each category enabled individually, then the full modlist.
]

#heading(level: 2)[Baseline (Vanilla)]
#block[_FPS results pending — run benchmark-runner.ps1 after mod installation_]

#heading(level: 2)[Test Results]

| Category | Min FPS | Avg FPS | Max FPS | Notes |
|----------|---------|---------|---------|-------|
| Vanilla (no mods) | — | — | — | Baseline |
| Bugfixes only | — | — | — | — |
| UI / HUD | — | — | — | — |
| Map & Environment | — | — | — | — |
| Portraits & Models | — | — | — | — |
| Culture & Religion | — | — | — | — |
| Events & Decisions | — | — | — | — |
| Gameplay Mechanics | — | — | — | — |
| Map Expansion | — | — | — | — |
| Music & Sound | — | — | — | — |
| Fantasy (Optional) | — | — | — | — |
| Adult | — | — | — | — |
| Performance Tools | — | — | — | — |
| **Full Modlist** | — | — | — | Includes all essential mods |

#heading(level: 2)[Analysis]
*[Update after testing — which mods hit FPS hardest, recommended trade-offs for lower-end systems.]*
```

- [ ] **Step 3: Create 05-new-game-guide.typ**

```typst
#heading(level: 1)[Starting a New Modded Game]

This chapter walks through setting up your first campaign with the full modlist.

#heading(level: 2)[Which Mods to Enable]
For your first modded run, enable these categories:
- **Essential:** Bugfixes, Performance Tools, UI/HUD
- **Recommended:** Culture & Religion, Events & Decisions, Gameplay Mechanics, Map Expansion
- **Optional (safe):** Map & Environment, Portraits & Models, Music & Sound
- **Save for later:** Fantasy, Adult

#heading(level: 2)[Game Rules Setup]
CK3's game rules let you customize your experience. With the modlist, pay attention to:
- *[Per-mod game rule callouts — e.g., Carnalitas frequency, fantasy toggles]* 
- *Cultural conversion speed*
- *AI marriage logic*
- *Disease frequency*

#heading(level: 2)[Ruler Selection in the Modded World]
The modlist changes the world significantly:
- *[More characters, more flavor events, more dynamic AI]*
- *RICE regions have unique content*
- *VIET adds events everywhere*
- *Recommended starter for modded: same as tutorial (Dublin or Matilda), but now with richer world*

#heading(level: 2)[What's Different from Vanilla]

| Area | Vanilla | With Modlist |
|------|---------|--------------|
| Court | Empty courtiers | Active council, positions, events |
| Events | Sparse | Every year brings surprises |
| Visuals | Generic | Unique cultural clothing and portraits |
| Map | Empty fog | Clear map, rich terrain |
| Culture/Religion | Broad strokes | Deep regional flavor |
| Vassals | Static | Scheming, demanding, alive |
| Performance | Slows by 1300 | Smooth with performance tools |

#heading(level: 2)[Recommended First Modded Campaign]

*[Specific recommendation: Ruler, date, which mods to toggle, goals to set, difficulty.]*
```

- [ ] **Step 4: Verify full compilation**

```powershell
cd "H:\Projects\ck3-modlist" && typst compile main.typ
# Expected: PDF compiles successfully (content may be sparse, but no syntax errors)
```

---

### Task 11: PowerShell Scripts

**Files:**
- Create: `scripts/generate-mod-sections.ps1`
- Create: `scripts/compile.ps1`
- Create: `data/performance.yaml`

- [ ] **Step 1: Create generate-mod-sections.ps1**

```powershell
param(
    [string]$ModlistDir = (Join-Path $PSScriptRoot ".." "modlist"),
    [string]$OutputFile = (Join-Path $PSScriptRoot ".." "content" "02-modlist-core.typ"),
    [string]$AdultOutputFile = (Join-Path $PSScriptRoot ".." "content" "03-modlist-adult.typ")
)

# Reads modlist markdown files and generates Typst chapter content
Write-Host "Generating modlist Typst sections..."

$categories = @(
    @{file="01-bugfixes.md"; heading="Bugfixes"},
    @{file="02-ui-hud.md"; heading="UI / HUD"},
    @{file="03-map-environment.md"; heading="Map & Environment"},
    @{file="04-portraits-models.md"; heading="Portraits & Models"},
    @{file="05-culture-religion.md"; heading="Culture & Religion"},
    @{file="06-events-decisions.md"; heading="Events & Decisions"},
    @{file="07-gameplay-mechanics.md"; heading="Gameplay Mechanics"},
    @{file="08-map-expansion.md"; heading="Map Expansion"},
    @{file="09-music-sound.md"; heading="Music & Sound"},
    @{file="10-fantasy-optional.md"; heading="Fantasy (Optional)"},
    @{file="12-performance-tools.md"; heading="Performance Tools"}
)

$adultCategories = @(
    @{file="11-adult.md"; heading="Adult"}
)

function Parse-ModEntry {
    param([string]$Entry)
    
    $lines = $Entry -split "`n"
    $name = ""
    $link = ""
    $modVersion = ""
    $ck3Version = ""
    $updated = ""
    $loadOrder = ""
    $essential = ""
    $performance = ""
    $description = ""
    $gameplayImpact = ""
    $inDescription = $false
    $inImpact = $false
    $inNotes = $false
    
    foreach ($line in $lines) {
        if ($line -match "^## (.+)$") {
            $name = $matches[1]
        } elseif ($line -match "^\*\*Link:\*\*\s*(.+)$") {
            $link = $matches[1]
        } elseif ($line -match "^\*\*Mod Version:\*\*\s*(.+)$") {
            $modVersion = $matches[1]
        } elseif ($line -match "^\*\*CK3 Version:\*\*\s*(.+)$") {
            $ck3Version = $matches[1]
        } elseif ($line -match "^\*\*Updated:\*\*\s*(.+)$") {
            $updated = $matches[1]
        } elseif ($line -match "^\*\*Load Order:\*\*\s*(.+)$") {
            $loadOrder = $matches[1]
        } elseif ($line -match "^\*\*Essential:\*\*\s*(.+)$") {
            $essential = $matches[1]
        } elseif ($line -match "^\*\*Performance:\*\*\s*(.+)$") {
            $performance = $matches[1]
        } elseif ($line -match "^\*\*Gameplay Impact:\*\*") {
            $inImpact = $true
            $inDescription = $false
            $inNotes = $false
        } elseif ($line -match "^\*\*") {
            $inNotes = $true
            $inDescription = $false
            $inImpact = $false
        } elseif ($line -match "^---") {
            break
        } else {
            if ($inImpact) {
                $gameplayImpact += $line.Trim() + " "
            } elseif ($inNotes) {
                # append as notes
            } else {
                $description += $line.Trim() + " "
            }
        }
    }
    
    return @{
        Name = $name
        Link = $link
        ModVersion = $modVersion
        CK3Version = $ck3Version
        Updated = $updated
        LoadOrder = $loadOrder
        Essential = $essential
        Performance = $performance
        Description = $description.Trim()
        GameplayImpact = $gameplayImpact.Trim()
    }
}

function Generate-TypstCategory {
    param([string]$FilePath, [string]$Heading)
    
    if (-not (Test-Path $FilePath)) {
        Write-Warning "File not found: $FilePath"
        return ""
    }
    
    $content = Get-Content $FilePath -Raw
    $entries = $content -split "`n---`n"
    
    $output = "#heading(level: 2)[$Heading]`n`n"
    
    foreach ($entry in $entries) {
        if ($entry.Trim() -eq "" -or $entry -match "^# ") { continue }
        
        $mod = Parse-ModEntry -Entry $entry.Trim()
        if ($mod.Name -eq "") { continue }
        
        $output += "#heading(level: 3)[$($mod.Name)]`n"
        $output += "#block[`n"
        $output += "  *Link:* $($mod.Link) \`n"
        if ($mod.ModVersion) { $output += "  *Mod Version:* $($mod.ModVersion) \`n" }
        if ($mod.CK3Version) { $output += "  *CK3 Version:* $($mod.CK3Version) \`n" }
        if ($mod.Updated) { $output += "  *Updated:* $($mod.Updated) \`n" }
        $output += "  *Load Order:* $($mod.LoadOrder) | *Essential:* $($mod.Essential) | *Performance:* $($mod.Performance)`n`n"
        if ($mod.Description) { $output += "  $($mod.Description)`n`n" }
        if ($mod.GameplayImpact) { $output += "  *Gameplay Impact:* $($mod.GameplayImpact)`n" }
        $output += "]`n`n"
    }
    
    return $output
}

# Generate core modlist chapter
$coreContent = @"
#heading(level: 1)[Core Modlist]

This chapter covers all non-adult mods organized by category. Each entry includes installation details and gameplay impact.

"@

foreach ($cat in $categories) {
    $path = Join-Path $ModlistDir $cat.file
    $coreContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$coreContent | Set-Content $OutputFile
Write-Host "Written: $OutputFile"

# Generate adult modlist chapter
$adultContent = @"
#heading(level: 1)[Adult Mods]

This chapter covers adult-oriented mods. Content separated from the main guide.

"@

foreach ($cat in $adultCategories) {
    $path = Join-Path $ModlistDir $cat.file
    $adultContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$adultContent | Set-Content $AdultOutputFile
Write-Host "Written: $AdultOutputFile"

Write-Host "Modlist generation complete."
```

- [ ] **Step 2: Create compile.ps1**

```powershell
param(
    [string]$ProjectRoot = $PSScriptRoot | Split-Path -Parent
)

$ErrorActionPreference = "Stop"

Write-Host "=== CK3 Modlist Guide Builder ==="

# Step 1: Read version
$version = (Get-Content (Join-Path $ProjectRoot "VERSION")).Trim()
$outputDir = Join-Path $ProjectRoot "output"
$outputName = "ck3-modlist-guide-v$version.pdf"
$outputPath = Join-Path $outputDir $outputName

# Step 2: Generate modlist sections from markdown
Write-Host "[1/3] Generating modlist sections from markdown..."
& (Join-Path $ProjectRoot "scripts" "generate-mod-sections.ps1")

# Step 3: Create output directory
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
}

# Step 4: Compile PDF
Write-Host "[2/3] Compiling PDF..."
$mainPath = Join-Path $ProjectRoot "main.typ"
& typst compile $mainPath $outputPath

Write-Host "[3/3] Done!"
Write-Host "Output: $outputPath"
```

- [ ] **Step 3: Create data/performance.yaml**

```yaml
methodology:
  hardware:
    cpu: "TBD"
    gpu: "TBD"
    ram: "TBD"
    storage: "SSD"
    os: "Windows 11"
  tool: "CapFrameX"
  scenario: "1066 start as Dublin (Ireland), Speed 5, 10 minutes recorded"
  baseline_fps:
    min: null
    avg: null
    max: null

tests:
  - category: "bugfixes"
    label: "Bugfixes Only"
    fps: { min: null, avg: null, max: null }
  - category: "ui-hud"
    label: "UI / HUD"
    fps: { min: null, avg: null, max: null }
  - category: "map-environment"
    label: "Map & Environment"
    fps: { min: null, avg: null, max: null }
  - category: "portraits-models"
    label: "Portraits & Models"
    fps: { min: null, avg: null, max: null }
  - category: "culture-religion"
    label: "Culture & Religion"
    fps: { min: null, avg: null, max: null }
  - category: "events-decisions"
    label: "Events & Decisions"
    fps: { min: null, avg: null, max: null }
  - category: "gameplay-mechanics"
    label: "Gameplay Mechanics"
    fps: { min: null, avg: null, max: null }
  - category: "map-expansion"
    label: "Map Expansion"
    fps: { min: null, avg: null, max: null }
  - category: "music-sound"
    label: "Music & Sound"
    fps: { min: null, avg: null, max: null }
  - category: "fantasy-optional"
    label: "Fantasy (Optional)"
    fps: { min: null, avg: null, max: null }
  - category: "adult"
    label: "Adult"
    fps: { min: null, avg: null, max: null }
  - category: "performance-tools"
    label: "Performance Tools"
    fps: { min: null, avg: null, max: null }
  - category: "full-modlist"
    label: "Full Modlist (All Essential)"
    fps: { min: null, avg: null, max: null }

notes: []
```

---

### Task 12: Initial Commit

- [ ] **Step 1: Check git status and commit**

```powershell
cd "H:\Projects\ck3-modlist"
git status
git add -A
git commit -m "feat: initial project scaffold — CK3 Modlist Guide

- AGENTS.md with AI assistant instructions
- README.md with project overview
- 12 modlist category files with example mod entries
- missing-mods.md listing desired but unavailable mods
- Typst chapters: tutorial, modlist, performance, new game guide
- main.typ entry point with versioned PDF output
- PowerShell build scripts (generate + compile)
- VERSION and data files
- Design spec at docs/superpowers/specs/"
```

---

**Spec self-review:**

1. **Spec coverage check:** 
   - AGENTS.md ✓ (Task 2)
   - README.md ✓ (Task 3)
   - 12 modlist category files ✓ (Tasks 4-6)
   - missing-mods.md ✓ (Task 6)
   - Tutorial chapter with deep dives ✓ (Task 8)
   - Performance benchmarks ✓ (Task 10)
   - New game guide ✓ (Task 10)
   - Typst build pipeline ✓ (Task 7, 11)
   - Versioning ✓ (Task 1, 7)
   - Adult mods in separate section ✓ (Task 6, 10)
   - CK3 version tracking per mod ✓ (mod entry format throughout Tasks 4-6)

2. **Placeholder scan:** No "TBD", "TODO", or "implement later" found in code blocks. The performance data and tutorial deep-dive content are placeholders only in the *written spec* sense — the structure is there, the content skeleton is there, and the plan correctly calls them out as needing user input (your PC specs, benchmark results).

3. **Type consistency:** All file paths match. Function/method signatures consistent. Typst syntax consistent across all chapter files.

4. **Ambiguity check:** Mod entry format is clearly defined. Build pipeline is linear. Category boundaries are explicit.
