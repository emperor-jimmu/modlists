# Mod Ideas

Mod concepts we may build and ship alongside the modlist. Each entry includes design intent, gameplay mechanics, and implementation notes backed by Paradox wiki research.

---

## Pre-Warp Start

**Status:** Design phase. Not yet built.  
**Type:** Origin mod  
**Inspiration:** Master of Orion 2 "Pre-Warp" start  

### Concept

A Stellaris origin where your species starts with **zero technologies** — no hyperdrive, no planetary unification, no basic labs. You are trapped in your home system until you research your way to FTL. Your species has also *forgotten what year it is*, emerging from a long dark age with corrupted calendar records.

This is a roleplay-first origin. It recreates the MoO2 Pre-Warp experience — that quiet, tense period of developing your home system while the galaxy remains out of reach.

### Origin Definition

**Name:** `Pre-Warp Start`  
**Internal ID:** `origin_pre_warp_start`  
**File:** `common/governments/civics/pre_warp_start.txt`

```
origin_pre_warp_start = {
    is_origin = yes
    icon = "GFX_origin_pre_warp_start"
    picture = "GFX_origin_pre_warp_start"

    possible = {
        # No restrictions — available to all empire types
    }

    initializer = {
        # Triggers the Lost Calendar event chain on game start
        # (see Events section below)
    }

    ai_weight = { weight = 0 }  # AI does not pick this origin
}
```

**Compatibility:** No restrictions — all authorities, ethics, species types. This is a roleplay origin, not a challenge origin.

### The Lost Calendar — Event Chain

Five events triggered at key milestones, all in one file: `events/pre_warp_events.txt`.

| # | Event                     | Trigger                                     | Content                                                                                                                                                                                                           |
|---|---------------------------|---------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1 | **Year One**            | Day 1 (`on_game_start_country`)             | *"The old calendars are dust. What year it was before the collapse — nobody knows, and nobody cares to remember. Today, we begin again. Let this be Year 0001 — the year we looked up."* Your species has deliberately reset their calendar. The top bar shows `0001.01.01`. A unity bonus is granted for 5 years — a founding-era spirit of renewal. |
| 2 | **Fragments of the Past** | Year 3 or after first tech researched       | Astronomers discover ancient orbital debris — data caches from a previous spacefaring era. Your species once had FTL. Now you must rebuild. Unlocks a narrative archaeological site on the homeworld.             |
| 3 | **The Prototype**         | `tech_hyper_drive_1` queued for research    | A branching flavor event: scientists present competing hyperdrive prototypes. Choose which approach to back. Same research outcome, different flavor text and a small temporary modifier.                         |
| 4 | **First Light**           | `tech_hyper_drive_1` researched             | The moment of FTL. Empire modifier applied: **"First Light"** — +5% research speed, +5% unity, +10% happiness for 10 years. Your species has reclaimed the stars.                                                 |
| 5 | **Mirror in the Dark**    | First encounter with a pre-FTL civilization | Your species sees itself reflected in them. Unique first-contact dialogue. Pure flavor — no mechanical effect.                                                                                                    |

### Starting Conditions

- **Zero technologies.** All default starting techs are cleared — no hyperdrive, no planetary unification, no basic labs. The player researches everything from scratch.
- **Primitive Observatory** — unique starting building. Provides +2 **Stargazer** jobs (1 physics research, 1 unity each). Flavor: *"Before hyperdrives, there were telescopes."* Upgrades into a standard research lab once basic lab techs are researched.
- **Standard home system** — no special resources, no guaranteed habitable worlds removed. You have a normal system to develop while waiting for hyperdrive.

### Empire Modifiers

| Modifier           | Duration                                   | Effect                                         |
|--------------------|--------------------------------------------|------------------------------------------------|
| **Uncertain Dawn** | Game start → hyperdrive researched         | +15% research speed, +10% unity, −10 stability |
| **First Light**    | Permanent (granted on hyperdrive research) | +5% research speed, +5% unity                  |

**Uncertain Dawn** represents the cocktail of hope and fear as a civilization reaches for the stars with no guarantee of success. The stability penalty reflects population anxiety. Once FTL is achieved, it's replaced by the permanent **First Light** modifier.

### Calendar Reset — Year 0001

The mod overrides `GAME_START_DATE` via defines to start at **Year 0001**:

```pdx
# common/defines/pre_warp_defines.txt
NGameplay = {
    GAME_START_DATE = "0001.01.01"
}
```

**Lore:** Upon emerging from their dark age, the species made a deliberate choice to reset their calendar. The old era — with its wars, its collapse, its lost knowledge — is deliberately forgotten. **Year 0001** marks the founding of a new era: the year they turned their eyes skyward once more and resolved to reclaim the stars. Every child born after the reset knows only the new calendar. The past is intentionally buried.

The top bar shows `0001.01.01` at game start. Since this is a static define (not randomizable per-game), every Pre-Warp Start game begins at Year 0001 — a consistent narrative anchor. Event #1 (Year One) provides the in-universe explanation for the calendar reset.

### Mod Files

```
pre-warp-start/
├── descriptor.mod
├── common/
│   ├── buildings/
│   │   └── pre_warp_buildings.txt
│   ├── governments/
│   │   └── civics/
│   │       └── pre_warp_start_origin.txt
│   ├── pop_jobs/
│   │   └── pre_warp_jobs.txt
│   ├── static_modifiers/
│   │   └── pre_warp_modifiers.txt
│   ├── technology/
│   │   └── pre_warp_tech_overrides.txt
│   ├── defines/
│   │   └── pre_warp_defines.txt
│   └── on_actions/
│       └── pre_warp_on_actions.txt
├── events/
│   └── pre_warp_events.txt
└── localisation/
    └── pre_warp_l_english.yml
```

### Technical Notes

**Origin architecture** (from Paradox wiki, verified for 4.4):

- Origins are civics with `is_origin = yes`, defined in `common/governments/civics/` — [Government modding](https://stellaris.paradoxwikis.com/Government_modding)
- *"Most of the other effects an Origin might also have (for example, starting conditions), are implemented through Events."* — same source
- Use `has_origin = origin_pre_warp_start` to scope effects to this origin
- Events can be triggered via `on_action` hooks defined in `common/on_actions/` — [Event modding](https://stellaris.paradoxwikis.com/Event_modding)

**Technology system** (from Paradox wiki + community references):

- `start_tech = yes/no` in tech definitions controls whether a tech is granted at game start — [Technology modding](https://stellaris.paradoxwikis.com/Technology_modding)
- `starting_potential = { ... }` (undocumented) gates `start_tech` per-empire. Add `NOT = { has_origin = origin_pre_warp_start }` to prevent granting — source: CWTools community reference / KongYo2 Stellaris skill
- *"Valid empires are determined by a tech's Potential"* — the public wiki confirms `potential` controls eligibility (separate from `starting_potential` which gates start_tech specifically)
- `tech_hyper_drive_1` is the base FTL technology
- Override target: `common/technology/pre_warp_tech_overrides.txt` — duplicate each `start_tech = yes` tech definition with the `starting_potential` condition added

**Jobs system** (from community reference):

- Custom jobs defined in `common/pop_jobs/` — uses category, resources, possible_pre_triggers, possible, weight structure
- `stargazer` job proposed as specialist-tier, producing `physics_research = 1, unity = 1`

**Defines** (from Paradox wiki):

- `GAME_START_DATE` in `NGameplay` controls the game start date. Override to `"0001.01.01"` for the calendar reset — [Defines](https://stellaris.paradoxwikis.com/Defines)
- Defines are static (same value every game) — cannot be randomized per-game

**Resolved implementation questions:**

### Q1: Removing starting techs per-origin

**Finding:** There is no `remove_technology` effect in Stellaris. Only `give_technology`, `add_tech_progress`, `add_research_option`, and `copy_techs_from` exist. However, an **undocumented field `starting_potential`** exists on tech definitions and gates whether `start_tech = yes` is actually granted to an empire (source: CWTools validation rules / community reference).

**Solution:** Override each `start_tech = yes` tech definition to add:

```pdx
starting_potential = {
    NOT = { has_origin = origin_pre_warp_start }
}
```

This prevents the engine from granting those techs to our origin at game start. It requires duplicating each overridden tech definition in a separate file (e.g., `common/technology/pre_warp_overrides.txt`). Estimated scope: ~15-30 tech definitions.

**Alternative (lower maintenance):** Override only the 5-8 most impactful starting techs (hyperdrive, planetary unification, basic science lab, basic reactor, etc.) and accept that a few minor start_techs remain — representing knowledge the species retained. This reduces maintenance burden at the cost of not being "truly zero."

**Verification needed:** `starting_potential` is undocumented on the public wiki but confirmed through community modding references (CWTools, the KongYo2 Stellaris skill). Must be tested in a live Stellaris 4.4 environment to confirm it works as expected.

### Q2: Custom job vs repurposed researcher

**Finding:** Creating a custom job is straightforward. Jobs are defined in `common/pop_jobs/` using a well-documented structure with category, resource production, upkeep, and weight fields.

**Recommendation: Custom `stargazer` job.** A unique job is better than repurposing the researcher because:
- Unique icon and localization — better flavor integration with the origin's narrative
- Different resource mix — `physics_research = 1, unity = 1` (vs researcher's `physics = 4, engineering = 4, society = 4, consumer_goods = 2`). The unity represents societal inspiration from looking at the stars.
- Can be tagged with both `research` and `unity` AI hint tags
- Cleaner than hacking a modifier onto the vanilla researcher job

```pdx
stargazer = {
    category = specialist
    condition_string = SPECIALIST_JOB_TRIGGER
    building_icon = building_primitive_observatory
    clothes_texture_index = 3
    tags = { research unity }
    possible_pre_triggers = { has_owner = yes is_being_purged = no is_being_assimilated = no is_sapient = yes }
    possible = { complex_specialist_job_check_trigger = yes }
    resources = {
        category = planet_researchers
        produces = { physics_research = 1 unity = 1 }
    }
}
```

### Q3: Custom year display in UI

**Finding:** The top-bar date display in Stellaris is **engine-hardcoded** and cannot be overridden via .gui files. However, the **game start date itself is a define** (`GAME_START_DATE` in `NGameplay`), and since the display renders whatever the define says, changing the define changes the displayed year.

**Solution: `GAME_START_DATE = "0001.01.01"`.** The mod overrides this define in `common/defines/pre_warp_defines.txt`. The game starts at Year 0001 and the top bar displays `0001.01.01`. This is static (same every game — defines can't be randomized per-game), but it creates a powerful narrative anchor: a deliberate calendar reset.

**Lore rationale:** The species chose to bury their past. Year 0001 is when they turned their eyes skyward and resolved to reclaim the stars. Event #1 (Year One) delivers the in-universe explanation.

### Design Decisions Log

| Decision                           | Rationale                                                                                                   |
|------------------------------------|-------------------------------------------------------------------------------------------------------------|
| No AI usage                        | This is a roleplay origin. AI empires don't need it and would dilute the experience.                        |
| No ethical/government restrictions | Widest possible compatibility. The narrative works for any empire type ("we forgot our past" is universal). |
| Standard home system               | Keeps balance. The challenge is the tech deficit, not a crippled economy.                                   |
| No guaranteed planet removal       | Unlike Doomsday, this isn't a survival challenge. It's a patient buildup.                                   |
| Five events, not more              | Enough for narrative depth without becoming a scripted campaign. Roleplay, not interactive fiction.         |
| Calendar reset to Year 0001        | Defines override — static but powerfully thematic. Species deliberately buries its past. "Year One" is when they looked up. |
