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

## Decisions

- **Mod curation ownership (2026-08-05):** this project does not research, validate, or
  select mods. The user supplies all mods. Guide modlist sections ship as fillable scaffolds
  (the `mod-entry` helper + placeholders); the user drops in mod cards. No mod name or URL
  appears in these files until the user adds it.
- **Mod organizer (2026-08-05):** Singularity. The installation chapter
  (`guide/installation.typ`) is written from official Singularity documentation; version and
  UI labels confirmed at implementation time (source URLs in Notes).
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

- 6.45.1-specific mechanics: any guide claim that could not be verified against the target
  version is flagged in the guide files and listed here; user to confirm.
- Build number: user to confirm the main menu reads version 6.45.1 before relying on the guide.
- Singularity: current version and exact UI labels - confirmed from official docs
  (see Notes); user to confirm they match the installed version.
- `enablemods.txt` requirement: the game's long-standing mod switch in `PCBANKS` is
  documented as a troubleshooting step; whether 6.45.1 still requires it is unverified
  (the manager may manage it automatically) - user to confirm from experience.

## Pending User Inputs

- All mod cards (waves 0-2): user to provide per card - name + URL, dependencies, system /
  mechanic impact, notes (load order, config).

## Conflicts

- (see `conflicts-mods.md`)

## Notes

- Singularity official sources used for the installation chapter: recorded here at
  implementation time.
- Compatibility heuristic (user's rule): if a specific mod version is unknown, use the
  patch/release date.
- Logo (`assets/logo.jpg`) drives the palette: dominant teal/cyan + sage with a rust-red
  accent and deep teal-navy darks.
