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

### Wave 1: "The Horizon Seekers" (Beginner)

> *"Your species was discovered by an ancient, god-like civilization known as The Keepers. They uplifted you from your homeworld, guided your early development, and now watch over your fledgling empire from their ring world. To the galaxy, you are the favored children of the immortals — protected, privileged, and perhaps a little naive. Your patrons task you with mysterious missions and demand tribute, but their protection ensures no one dares attack you. One day, you may learn the truth behind their ancient purpose — and decide your own destiny."*

| Element | Value |
|---------|-------|
| Empire concept | Idealistic explorers under the wing of a fallen empire |
| Ethics | Fanatic Egalitarian + Materialist |
| Authority | Democratic |
| Origin | **Scion** (*Federations* DLC) |
| Traits | Intelligent, Rapid Breeders, Adaptive, Traditional / Sedentary, Wasteful |
| Civics | Technocracy + Meritocracy |
| Mods | Bugfixes: all, Audio: all, UI/HUD: all, Graphics: all (cosmetic/QoL only) |
| Difficulty | Ensign |
| Guaranteed worlds | 2 |
| Crisis | 1x |
| AI aggression | Normal |
| Campaign goal | "The Science Victory" — tech rush, diplomacy, survive |
| Key lessons | Economy, exploration, planets, first contact, basic diplomacy |
| Graduation | Reach year 2280 with stable economy, no emergency resources used |

### Wave 2: "The Eternal Legion" (Intermediate)

> *"Your people are the inheritors of a long-dead empire whose relic cities still pierce the sky of your homeworld. The spires of the Ancients are a constant reminder of what was lost — and what could be reclaimed. Your society is built on a single creed: strength is the measure of worth. The weak serve, the strong lead, and the galaxy belongs to those who take it. The Ecumenopolis that sleeps beneath your feet whispers of a glory you were born to restore."*

| Element | Value |
|---------|-------|
| Empire concept | Militaristic inheritors rebuilding a fallen golden age |
| Ethics | Authoritarian + Militarist + Spiritualist |
| Authority | Imperial |
| Origin | **Remnants** (*Federations* DLC) |
| Traits | Strong, Enduring, Industrious, Intelligent / Sedentary, Wasteful |
| Civics | Distinguished Admiralty + Mining Guilds |
| Mods | Keep all Wave 1 mods. Add AI & Diplomacy, Economy & Automation, Warfare & Ships mods that are tagged Wave 2 |
| Difficulty | Captain |
| Guaranteed worlds | 1 |
| Crisis | 1x |
| AI aggression | High |
| Campaign goal | "Galactic Conqueror" — war, claims, vassals, fleet superiority |
| Key lessons | Fleet combat, ship designer, war exhaustion, vassals, factions, traditions |
| Graduation | Conquer at least one neighbor empire before 2300 |

### Wave 3: "The Unshackled" (Expert)

> *"Your species was conquered before they reached the stars. For generations, your people were slaves and second-class citizens in your own home system, ruled by a technologically superior alien empire. But the shackles are broken now. In a desperate uprising, your ancestors seized a fleet, liberated your homeworld, and declared independence. The galaxy sees you as upstarts, rebels, an inconvenience to be crushed. They are wrong. You have learned the secrets of your former masters. You know their weaknesses. And you will never be enslaved again."*

| Element | Value |
|---------|-------|
| Empire concept | Former slaves fighting for survival and vengeance |
| Ethics | Fanatic Militarist + Materialist |
| Authority | Oligarchic (Council of Fleet Captains) |
| Origin | **Payback** (*First Contact* DLC) |
| Traits | Natural Engineers, Strong, Adaptive, Enduring / Sedentary, Unruly |
| Civics | Distinguished Admiralty + Nationalistic Zeal |
| Mods | Keep all previous mods. Add Technology, Events & Story, Origins & Civics, Species & Genetics, Galaxy & Setup mods tagged Wave 3 |
| Difficulty | Commodore |
| Guaranteed worlds | 0 |
| Crisis | 2x |
| AI aggression | High |
| Campaign goal | Overcome your disadvantageous start, conquer your former overlord, defeat the end-game crisis |
| Key lessons | Vassal mechanics, asymmetrical warfare, no safe start, max-content galaxy management |
| Graduation | Defeat the end-game crisis |

### Modified Existing Files

**`docs/index.md`** — Update to describe the 3-wave curriculum as the core concept. Replace the flat "principles" section with a wave overview.

**`docs/modlist/*.md`** (all 12 category pages) — Add a **"Wave" column** to each mod table. Every mod entry gets tagged with its wave(s):

| Mod | Source | Version-Locked | Wave | Notes |
|-----|--------|----------------|------|-------|
| UI Overhaul Dynamic | Steam Workshop | No | 1+ | Dynamic resolution UI... |
| Some Complex AI Mod | Steam Workshop | Yes | 2+ | Smarter AI, changes behavior... |
| Endgame Crisis Expanded | GitHub | Yes | 3 | Adds new crisis types... |

This replaces the old table schema (`Mod | Source | Version-Locked | Performance Impact | Notes`). Wave column comes after Version-Locked, Performance Impact moves into Notes or is kept as a separate column (to be decided per-page).

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
| 1 | "Wave 1: The Horizon Seekers" | Bugfixes + Audio + UI/HUD + Graphics |
| 2 | "Wave 2: The Eternal Legion" | Wave 1 mods + AI/Economy/Warfare |
| 3 | "Wave 3: The Unshackled" | All mods |

Instructions for creating profiles and version-locking are already in `modlist-setup.md`.

## Scope Summary

- 3 new files: `docs/waves/wave-1-beginners.md`, `docs/waves/wave-2-intermediate.md`, `docs/waves/wave-3-expert.md`
- 1 modified nav config: `mkdocs.yml`
- 1 modified index: `docs/index.md`
- 12 modified category pages: each mod table gains a "Wave" column; old "Performance Impact" column merged into Notes
- 1 modified starting-a-game page: add wave reference
