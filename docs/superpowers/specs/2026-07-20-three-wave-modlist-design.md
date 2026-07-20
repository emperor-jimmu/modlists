# Three-Wave Modlist Design

## Summary

Restructure the Stellaris Modlist Guide from a flat modlist into a **3-wave curriculum** where each wave is a full playthrough with a prescribed empire, a specific mod subset, and escalating difficulty. Mod categories remain as a reference section.

## Rationale

A flat modlist teaches nothing about *how* to use the mods. New players install everything at once, get overwhelmed, and bounce off. The wave model turns the guide into a progression: the player learns the game in Wave 1, then adds complexity in Waves 2 and 3 by starting fresh with a different empire and more mods.

## Proposed Changes

### Nav Structure

```
nav:
  - Home: index.md
  - Getting Started: getting-started.md
  - Modlist Setup: modlist-setup.md
  - The Waves (Curriculum):
      - Wave 1: First Contact: waves/wave-1-beginners.md
      - Wave 2: Stellar Dominance: waves/wave-2-intermediate.md
      - Wave 3: Transcendence: waves/wave-3-expert.md
  - The Modlist (Reference):
      - Bugfixes: modlist/bugfixes.md
      - Audio: modlist/audio.md
      - UI & HUD: modlist/ui-hud.md
      - Graphics: modlist/graphics.md
      - AI & Diplomacy: modlist/ai-diplomacy.md
      - Economy & Automation: modlist/economy-automation.md
      - Warfare & Ships: modlist/warfare-ships.md
      - Technology: modlist/technology.md
      - Events & Story: modlist/events-story.md
      - Origins & Civics: modlist/origins-civics.md
      - Species, Genetics & Portraits: modlist/species-portraits.md
      - Galaxy & Setup: modlist/galaxy.md
  - Load Order: load-order.md
  - Starting a Game: starting-a-game.md
  - Performance: performance.md
  - Missing Mods: missing-mods.md
  - Appendix: appendix.md
```

### New Files

Three files under `docs/waves/`:

### Wave Page Template

Each wave page follows the same structure:

1. **Wave theme & header** — Name, tagline, difficulty badge
2. **Prescribed empire** — Full build table (ethics, authority, origin, traits, civics) with rationale
3. **Mods to install** — Which categories, which specific mods within each, with a table
4. **Galaxy settings** — Recommended settings table for this wave
5. **Campaign goal** — What to aim for
6. **What you'll learn** — Teaching objectives checklist
7. **Walkthrough milestones** — Years 1–10, 10–30, 30–100 guidance
8. **Graduation criteria** — Demonstrable skills check-off before advancing
9. **Next wave preview** — Brief taste of what's coming

### Wave 1: "First Contact" (Beginner)

| Element | Value |
|---------|-------|
| Empire | Egalitarian + Materialist + Xenophile |
| Authority | Democratic |
| Origin | Prosperous Unification |
| Traits | Intelligent, Rapid Breeders, Adaptive, Traditional / Sedentary, Wasteful |
| Civics | Technocracy + Meritocracy |
| Mods | Bugfixes, Audio, UI/HUD, Graphics (cosmetic/QoL only) |
| Difficulty | Ensign |
| Guaranteed worlds | 2 |
| Crisis | 1x |
| AI aggression | Normal |
| Campaign goal | "The Science Victory" — tech rush, diplomacy, survive |
| Key lessons | Economy, exploration, planets, first contact, basic diplomacy |
| Graduation | Reach year 2280 with stable economy, no emergency resources used |

### Wave 2: "Stellar Dominance" (Intermediate)

| Element | Value |
|---------|-------|
| Empire | Authoritarian + Militarist + Spiritualist |
| Authority | Imperial |
| Origin | Remnants |
| Traits | Strong, Enduring, Industrious, Intelligent / Sedentary, Wasteful |
| Civics | Distinguished Admiralty + Mining Guilds |
| Mods | Keep Wave 1 mods + add AI & Diplomacy, Economy & Automation, Warfare & Ships |
| Difficulty | Captain |
| Guaranteed worlds | 1 |
| Crisis | 1x |
| AI aggression | High |
| Campaign goal | "Galactic Conqueror" — war, claims, vassals, fleet superiority |
| Key lessons | Fleet combat, ship designer, war exhaustion, vassals, factions, traditions |
| Graduation | Conquer at least one neighbor empire before 2300 |

### Wave 3: "Transcendence" (Expert)

| Element | Value |
|---------|-------|
| Empire | Gestalt Consciousness — Machine Intelligence |
| Authority | Gestalt |
| Origin | Resource Consolidation |
| Traits | Machine traits (custom build) |
| Civics | Determined Exterminator or Rogue Servitor |
| Mods | All previous + Technology, Events & Story, Origins & Civics, Species & Genetics, Galaxy & Setup |
| Difficulty | Commodore |
| Guaranteed worlds | 0 |
| Crisis | 2x |
| AI aggression | High |
| Campaign goal | Master a non-standard empire, survive the end-game crisis |
| Key lessons | Gestalt economy, crisis prep, megastructures, ascension, no-diplomacy gameplay |
| Graduation | Defeat the end-game crisis |

### Modified Existing Files

**`docs/index.md`** — Update to describe the 3-wave curriculum as the core concept. Replace the flat "principles" section with a wave overview.

**`docs/modlist/*.md`** (all 12 category pages) — Add an "Applies to Wave" line at the top of each category table:

| Category | Wave |
|----------|------|
| Bugfixes | Wave 1+ |
| Audio | Wave 1+ |
| UI & HUD | Wave 1+ |
| Graphics | Wave 1+ |
| AI & Diplomacy | Wave 2+ |
| Economy & Automation | Wave 2+ |
| Warfare & Ships | Wave 2+ |
| Technology | Wave 3+ |
| Events & Story | Wave 3+ |
| Origins & Civics | Wave 3+ |
| Species & Portraits | Wave 3+ |
| Galaxy & Setup | Wave 3+ |

**`docs/starting-a-game.md`** — Add a note at the top pointing to the Waves section: "This page is a general reference. For the full guided experience, follow [The Waves](waves/wave-1-beginners.md) in order."

**`mkdocs.yml`** — Restructure `nav` as shown above.

### Unchanged Files

- `docs/getting-started.md` — Stays as prerequisite reading
- `docs/modlist-setup.md` — Stays as MO2 installation guide
- `docs/load-order.md` — Stays as load order reference
- `docs/performance.md` — Stays unchanged
- `docs/missing-mods.md` — Stays unchanged
- `docs/appendix.md` — Stays unchanged
- `mo2-separators.json` — Stays unchanged

### MO2 Profiles

Each wave maps to a separate MO2 profile:

| Wave | MO2 Profile Name | Mods |
|------|------------------|------|
| 1 | "Wave 1: First Contact" | Bugfixes + Audio + UI/HUD + Graphics |
| 2 | "Wave 2: Stellar Dominance" | Wave 1 mods + AI/Economy/Warfare |
| 3 | "Wave 3: Transcendence" | All mods |

Instructions for creating profiles and version-locking are already in `modlist-setup.md`.

## Scope Summary

- 3 new files: `docs/waves/wave-1-beginners.md`, `docs/waves/wave-2-intermediate.md`, `docs/waves/wave-3-expert.md`
- 1 modified nav config: `mkdocs.yml`
- 1 modified index: `docs/index.md`
- 12 modified category pages: each Adds "Applies to Wave" header
- 1 modified starting-a-game page: add wave reference
