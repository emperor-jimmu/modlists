# Aetherial Purity - STATUS

**Target:** No Man's Sky version 6.45.1 (Steam App 275850).
**Mod organizer:** Singularity.
**Modlist:** Aetherial Purity. **Theme:** light ethereal.

## Audit Trail

- 2026-08-05: Project started. Design + plan written (`docs/superpowers/`). All mod cards
  pending user addition (per curation-ownership decision below).
- 2026-08-05: Design decisions confirmed with user: build scaffold first (mods supplied
  later), Steam platform, three waves (0/1/2), light ethereal PDF theme.
- 2026-08-05: Mod organizer resolved: **Singularity** = SingularityMM by Syzzle07
  (github.com/Syzzle07/SingularityMM), "A Windows-based No Man's Sky Mod Manager"
  (Tauri v2, GPL-3.0). Verified via GitHub API: README feature list + releases; latest
  release **v2.2.8** (2026-02-15), installer + portable exe assets; repo last pushed
  2026-08-04. Sources: https://github.com/Syzzle07/SingularityMM ,
  https://github.com/Syzzle07/SingularityMM/releases . Installation chapter written from
  these verified facts; exact in-app UI labels beyond the README feature list are not
  documented upstream and are treated as open (see Open Questions).
- 2026-08-05: **Scaffold build complete.** PDF = `output/Aetherial-Purity.pdf`, 20 pages,
  23 placeholder mod cards shipping with the user-to-provide contract.
- 2026-08-12: **User directive: add mods in two phases.** Phase 1 = graphics + QoL only
  (Wave 0), Phase 2 = a fully modded experience (Waves 1-2), judged by the general
  parameters: suitability for the wave design, no redundancy, no pure power spikes.
  This supersedes the 2026-08-05 curation-ownership decision (below).
- 2026-08-12: **Phase 1 + Phase 2 mod curation done.** 24 mods verified on Nexus Mods
  (each page read directly; name, author, version, last-updated date, description,
  conflicts, install path recorded): Wave 0 = 14, Wave 1 = 8, Wave 2 = 2. Every included
  mod was last updated after 2025-01-29 (the Worlds Part II modding-rework cutoff) and is
  therefore loadable by modern builds; card fields (impact, notes, dependencies) are
  grounded in each mod's own page. Waves 1-2 keep a small number of *"user to provide"*
  slots where no maintained mod fits the wave rules — nothing was padded with power spikes
  or abandoned mods (see Notes for the evaluated-and-rejected list).
- 2026-08-12: **Installation chapter corrected** for the modern mod scheme: mods are
  folder-based patches in `GAMEDATA\MODS` (not `.pak` in `PCBANKS\MODS`), and
  `GCMODSETTINGS.MXML` (with `DisableAllMods`) replaced the obsolete `enablemods.txt`
  step. Sources: the NMS modding wiki (nomanssky.miraheze.org/wiki/Mods, Worlds Part II
  section), corroborated by the install instructions on the included mods' own Nexus pages.
- 2026-08-12: Final build regenerated after the mod additions (see PDF build in Verification).

## Decisions

- **Mod curation ownership (2026-08-05, SUPERSEDED 2026-08-12):** the project did not
  research, validate, or select mods; the user supplied all mods. Guide modlist sections
  shipped as fillable scaffolds. — Replaced by the 2026-08-12 directive: the project now
  curates the modlist (below).
- **Mod curation ownership (2026-08-12):** per user directive, the agent researches,
  verifies, and selects mods for the guide. Every mod card added to the guide is grounded
  in its Nexus page (verified 2026-08-12): exact URL, author, version, last-updated date,
  impact, and conflicts. The no-fabrication rule is unchanged — nothing unverifiable goes
  into guide prose. Slots with no suitable maintained mod remain *"user to provide"* and
  are listed in Pending User Inputs; the project never invents or pads.
- **Two-phase addition (2026-08-12):** Phase 1 = Wave 0 only, graphics + QoL mods that
  change how the game looks, reads, or operates — never its values. Phase 2 = Waves 1-2,
  the fully modded experience: content and mechanics that add decisions and depth without
  pure power spikes, composed so nothing duplicates Phase 1 or another Phase 2 mod.
- **Compatibility floor (2026-08-12):** no mod last updated before 2025-01-29 is eligible
  (Worlds Part II modding rework; mods predating it do not load on modern builds). The
  patch/release-date heuristic from the guide applies on top of this floor.
- **Mod organizer (2026-08-05):** Singularity. The installation chapter is written from
  official Singularity documentation; version and UI labels confirmed at implementation
  time (source URLs in Notes).
- **Platform (2026-08-05):** Steam.
- **Waves (2026-08-05):** 0 = *First Light* (complete beginners; vanilla + UI/QoL only),
  1 = *The Cartographer* (intermediate; content + mechanics), 2 = *The Astral Architect*
  (advanced; richest systems). Each wave is its own new-game setup with an RP backstory;
  waves 1-2 add mechanics with no pure power spikes.
- **PDF theme (2026-08-05):** light ethereal. Palette derived from `assets/logo.jpg`
  (teal `#2C9293`, deep navy `#2D4144`, deep teal-green `#1F6F5E`, sage `#4F7A6E`,
  rust `#773E3E`, ice `#F4F9F8`). Fonts: Cinzel / Bahnschrift / Georgia. Typst 0.15.1 via
  `build.bat`.

## Open Questions

- Build number: user to confirm the main menu reads version 6.45.1 before relying on the
  guide. The included mods were verified against their own pages' stated game versions
  (several updated for 6.30-6.45.1); if the installed build differs, re-check each card's
  date per the compatibility heuristic.
- Mod folder scheme: the guide now documents `GAMEDATA\MODS` + `GCMODSETTINGS.MXML` per
  the modding wiki (2025-11-05) and the mods' own install instructions. User to confirm
  this matches the installed game; if the game still reads `PCBANKS\MODS`, revert the
  installation chapter accordingly and record here.
- 6.45.1-specific mechanics: any guide claim that could not be verified against the target
  version is flagged in the guide files and listed here; user to confirm.
- Singularity: current version and exact UI labels - confirmed from official docs
  (see Notes); user to confirm they match the installed version.

## Pending User Inputs

- Open mod-card slots (verified-empty as of 2026-08-12; user may supply their own picks):
  - Wave 1: Multi-Tool & Upgrades; Starships & Classes.
  - Wave 2: Production & Manufacturing; Settlement Systems; Endgame Progression; Wave 2
    Content (modlist + content chapters).
- In-game verification: after a fresh Wave 0 game, confirm the mods behave as their cards
  describe (No Man's Sky has no in-game mod list; in-game behavior is ground truth).

## Conflicts

- (see `conflicts-mods.md` — now includes the documented conflict notes from each mod's page)

## Notes

- Singularity official sources used for the installation chapter: recorded here at
  implementation time.
- Compatibility heuristic (user's rule): if a specific mod version is unknown, use the
  patch/release date.
- Evaluated and rejected during curation (2026-08-12) — not in the list, with reason:
  - Better Planet Generation (797): the classic generation overhaul, but last updated
    2024-08-04 — before the 2025-01-29 modding-rework cutoff; its recommended palette
    companion (DUD's Sky - Colors, 968) is removed from Nexus. Replaced by Multi Biomes
    (3093) as the current maintained generation mod.
  - DUD's Sky - Colors (968): removed by author.
  - Redmas packs (Better Planet Generation/Fantasy/combat): distributed off-Nexus
    (Discord) as of 2026; no verifiable URL, and older Nexus releases are pre-rework.
  - Gamer's Asset series: legacy 2018-2019 era, pre-rework.
  - ArghWater (2036): last updated 2023-09-20, `.pak` packaging — pre-rework.
  - Exosolar's Abyss (1326): page states "Currently only useable with legacy versions".
  - ShutUp (15): last updated 2016.
  - Starship Out of Range and Faster Scanner (641): last updated 2020; also edits
    gameplay globals.
  - Long Range Freighters (1196): 10x freighter warp range — a pure numbers buff, fails
    the no-power-spike rule.
  - JJ's Better Ships (547) / Only S Class (2878): raise ship-class generation odds —
    power spikes.
  - Better Rewards (1460), Word Rewards Enhanced (3115), Faster Movement Speed (1973),
    Reduced Launch Cost (50), Remove Technology Overload (2162), Multi-Tool Mining Speed
    Fix (2024): change game values — power spikes or number edits.
  - Massive Fleet (2018), settlement/freighter/endgame mods found on aggregators:
    2018-2023 era, pre-rework and unloadable on modern builds.
- Logo (`assets/logo.jpg`) drives the palette: dominant teal/cyan + sage with a rust-red
  accent and deep teal-navy darks.
