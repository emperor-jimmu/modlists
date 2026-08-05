# Ace's Realm - STATUS

**Target:** X-Plane 12 version 12.4.3 (the "VR Update", released 2026-06-25).
**Mod organizer:** XFast Manager.
**Modlist:** Ace's Realm. **Theme:** night-sky aviation (deep navy + gold).

## Audit Trail

- 2026-08-05: Project started. Structure, guides, and PDF template built following the
  repo convention (no-mans-sky pattern). All per-wave mod cards pending user addition
  (per curation-ownership decision below).
- 2026-08-05: User decisions confirmed: six waves (0-5) with aircraft progression
  C172 -> SR22 -> King Air C90B -> 737-800 -> Dash 8 Q400 (FJS Q4XP) -> 777F;
  "open SAM" = **openSAM** (github.com/hotbso/openSAM, URL supplied by user);
  organizer facts verified from official GitHub (like the NMS project did for Singularity).
- 2026-08-05: Mod organizer resolved: **XFast Manager** = github.com/CCA3370/XFast-Manager
  ("The Modern X-Plane Addon Installer & Manager", Tauri - Rust + Vue, GPL-3.0).
  Verified via GitHub API: README feature list + releases; latest release **v1.2.5**
  (2026-05-31); assets for Windows (msi/portable), macOS (universal zip), Linux
  (AppImage/deb/rpm/Arch); repo last pushed 2026-08-03. Installation chapter written from
  these verified facts. Sources: https://github.com/CCA3370/XFast-Manager ,
  https://github.com/CCA3370/XFast-Manager/releases .
- 2026-08-05: Foundational plugins chapter written from general knowledge (per the user's
  request for usage/install explanations); prose is explicitly flagged as unverified
  guidance in the guide itself. openSAM's URL is the only supplied one.
- 2026-08-05: **Final build complete.** PDF = `output/Aces-Realm.pdf`, **38 pages**.
  Structure audit passed (verified from the compiled PDF via text extraction): cover
  (logo, Ace's Realm, version 12.4.3, page numbers "1 / 38") -> TOC -> Installation Guide
  -> Foundational Plugins & Tools (8 documented plugins, openSAM URL linked) -> Waves 0-5
  (First Solo -> The Ferry -> The Charter -> The Line -> The Dash Ace -> The Heavy Ace)
  -> Glossary, all sections present in order. 20 mod cards ship: 2 user-supplied aircraft
  (FJS Q4XP, 777F) + 18 pending-user placeholders with the user-to-provide contract.
  `build.bat` verified end-to-end (Typst 0.15.1).

## Decisions

- **Mod curation ownership (2026-08-05):** this project does not research, validate, or
  select mods. The user supplies all mods. Guide modlist sections ship as fillable scaffolds
  (the `mod-entry` helper + placeholders); the user drops in mod cards. No mod name or URL
  appears in these files until the user adds it (openSAM's URL is user-supplied).
- **Mod organizer (2026-08-05):** XFast Manager. The installation chapter
  (`guide/installation.typ`) is written from its official GitHub README and release notes
  (source URLs in Notes). XOrganizer was the considered alternative; XFast Manager chosen
  by the user.
- **Foundational plugins (2026-08-05):** the user supplied eight base tools - Navigraph,
  LittleNavMap, AutoOrtho, X-Camera, AviTab, X-ATC-Chatter, openSAM, Better Pushback -
  documented with usage + install prose in `guide/foundational.typ`. Installed once, used
  across all waves.
- **Waves (2026-08-05):** 0 = *First Solo* (C172; complete beginners; vanilla + UI/QoL
  only), 1 = *The Ferry* (SR22; glass cockpit, cross-country), 2 = *The Charter*
  (King Air C90B; turbine + IFR), 3 = *The Line* (737-800; airline ops), 4 = *The Dash Ace*
  (Dash 8 Q400 / FlyJSim Q4XP; high-speed turboprop regional), 5 = *The Heavy Ace*
  (777F; heavy long-haul). Each wave is its own new-game setup with an RP backstory;
  waves 1-5 add mechanics with no pure power spikes.
- **PDF theme (2026-08-05):** night-sky aviation. Palette derived from `assets/logo.jpg`
  (deep navy `#10233D`, sky blue `#2E6FB8`, gold `#C9A227`, tan `#C0A060`, rust `#B4552D`,
  ice `#F1F6FB`). Fonts: Bahnschrift / Georgia. Typst 0.15.1 via `build.bat` ->
  `output/Aces-Realm.pdf`.

## Open Questions

- 12.4.3-specific mechanics: any guide claim that could not be verified against the target
  version is flagged in the guide files and listed here; user to confirm.
- Version line: user to confirm the sim's main menu reads 12.4.3 before relying on the guide.
- XFast Manager: README describes selecting the X-Plane folder on first launch (not
  auto-detection) - user to confirm in-app behavior of the installed version; also whether
  the installed version supports profiles/save states for per-wave switching (guide assumes
  the wave cards as the checklist).
- Foundational plugins: exact URLs, current versions, and default keybinds/menu labels are
  general guidance only - user to confirm against each tool's current release (per the
  patch/release-date heuristic). openSAM's URL is supplied; its install specifics per the
  project's own docs.
- Wave 4/5 aircraft addons: FJS Q4XP and 777F developers/URLs/versions/dependencies are
  user to provide; compatibility with 12.4.3 unvalidated per project rules.
- Stock aircraft presence: SR22, King Air C90B, and 737-800 are assumed in the stock
  aircraft menu of 12.4.x; user to confirm (wave guides say so too).

## Pending User Inputs

- URLs, versions, and dependencies for the 8 foundational plugins (7 of 8; openSAM has its
  URL).
- FJS Q4XP and 777F: developer/URL/version/dependencies (the two user-supplied aircraft).
- All per-wave content/graphics/mechanics mod cards (waves 0-5): user to provide per card -
  name + URL, dependencies, system/mechanic impact, notes (load order, config).

## Conflicts

- (see `conflicts-mods.md`)

## Notes

- XFast Manager official sources used for the installation chapter: recorded here at
  implementation time.
- Compatibility heuristic (user's rule): if a specific mod version is unknown, use the
  patch/release date.
- Community hubs (user-supplied reference): X-Plane.org (forums/store) and X-Plane.to;
  Steam Workshop is not a major source. Documented in `guide/installation.typ`.
- Logo (`assets/logo.jpg`, 832x1248) drives the palette: dominant dark navy/near-black with
  gold-tan highlights.
