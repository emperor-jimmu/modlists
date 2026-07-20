# Strategy Guide Design

## Goal

Add a broad strategy/theory page to the Stellaris Modlist Guide, plus expand existing wave pages with richer endgame content and cross-references. The strategy page must be part of the MkDocs nav (and therefore the PDF output).

## Design Decisions

- **Placement:** New standalone page `docs/strategy-guide.md` + expand `wave-2-intermediate.md` and `wave-3-expert.md` endgame sections + cross-references
- **Scope:** Broad — playstyle archetypes, ascension paths, victory conditions, crisis prep, megastructure strategy, tradition/perk choices, pacing decisions
- **PDF:** Standard MkDocs page in the nav; auto-included via existing build pipeline

## New Page: `docs/strategy-guide.md`

Seven sections:

1. **Playstyle Archetypes** — Tall vs Wide, Peaceful Diplomat vs Aggressive Conqueror, Trade Baron vs Tech Rush. How to identify your natural playstyle, and which wave each best suits.

2. **The Three Ascension Paths** — Biological (genetic engineering, species customization), Psionic (shroud, shields, chosen one), Synthetic (robots, immortality, assimilation). What each requires (ethics, traditions, DLC), and mod compatibility notes.

3. **Victory Conditions** — Domination, Federation, Galactic Empire, Score, Become the Crisis. Which victory type each wave's campaign naturally leads toward, and how to pivot if your original plan fails.

4. **Endgame Crisis Preparation** — Per-crisis breakdown (Unbidden, Contingency, Prethoryn, Cetana) with counters. When to start preparing (economic milestones, fleet power targets per wave). Starbase bastion layouts.

5. **Megastructure Strategy** — Priority order per playstyle (Science Nexus for tech rushers, Dyson Sphere for alloy-economy empires, Matter Decompressor for wide empires). Integration with Gigastructural Engineering mods.

6. **Tradition & Perk Choices** — Which traditions support which playstyles, recommended order, interactions with mod-added traditions.

7. **Pacing Decisions** — When to expand vs. consolidate, when to war vs. tech, how to read the galaxy state and adjust your strategy mid-game.

## Wave Page Changes

### `wave-2-intermediate.md`
- Add cross-reference to strategy guide at top (after difficulty tagline)
- Expand "Years 80–150: The War Machine" with an Endgame Strategy subsection: crisis prep milestones, ascension path recommendation (Psionic fits Eternal Legion's spiritualist theme), fleet composition targets for mod-added ships

### `wave-3-expert.md`
- Add cross-reference to strategy guide at top
- Expand "Years 150+: The Crisis" with Advanced Crisis Strategy: how mods affect crisis balance (more leviathans, new crisis variants), coordinating Galactic Community with full modlist, multiple crisis defense perimeters

## Nav Update

Add to `mkdocs.yml` nav after "Starting a Game":
```yaml
  - Strategy Guide: strategy-guide.md
```
