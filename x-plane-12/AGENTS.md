# Ace's Realm - Agent Instructions

X-Plane 12 modlist and flight guide, targeting sim version **12.4.3** (the "VR Update", released 2026-06-25).
Mod organizer: **XFast Manager**. Decisions and open questions live in `STATUS.md`.

## Structure

- `guide/` - wave-based Typst sources (installation, foundational plugins, per-wave guides, glossary)
- `output/` - generated PDF (`Aces-Realm.pdf`)
- `assets/` - static assets (`logo.jpg`)
- `template.typ` - Typst master template (cover, TOC, page setup, fonts, mod-card helper)
- `build.bat` - one-click PDF generator
- `STATUS.md` - decision log: decisions, notes, open questions (no mod validation)
- `conflicts-mods.md` - known mod conflicts (excluded from PDF)
- `mod-ideas.md` - future mod ideas (excluded from PDF)

## Key Rules

- Every user-supplied mod becomes a mod card via the `mod-entry` helper (in
  `guide/helpers.typ`): clickable name + URL, dependencies, system/mechanic impact, notes
  (load order, config). Missing fields render as *"user to provide"* - never invent or
  research missing data.
- The *Foundational Plugins* chapter (`guide/foundational.typ`) documents the eight plugins
  the user supplied (Navigraph, LittleNavMap, AutoOrtho, X-Camera, AviTab, X-ATC-Chatter,
  openSAM, Better Pushback). Usage/install prose there is general guidance from general
  knowledge, explicitly flagged as unverified. Download links were added at the user's
  request and verified to resolve (2026-08-05) - each points to the tool's official site or
  repository. Exact versions and compatibility stay the user's to confirm; do not silently
  turn the prose into validated claims.
- Compatibility heuristic (the user's rule, documented in the guide, never applied by us):
  if a specific mod version is unknown, use the patch/release date.
- Six waves: **0 = First Solo** (C172, complete beginners; vanilla + UI/QoL only),
  **1 = The Ferry** (Take Command SR22 G1000), **2 = The Charter** (Hot Start Challenger 650),
  **3 = The Dash Ace** (Dash 8 Q400 / FlyJSim Q4XP), **4 = The Line** (Zibo Mod B737-800X),
  **5 = The Heavy Ace** (FlightFactor 777-200ERF). The C172 is the only stock aircraft; the
  other five wave aircraft are user-supplied mods/addons (URLs supplied, versions/dependencies
  pending), and Wave 1 also carries the user-supplied XPRealistic plugin.
  Each wave is its own new-game setup with an RP backstory. Waves 1-5 add mechanics but no
  pure power spikes, and each ships a pre-filled `how-to-fly.typ` tutorial.
- `STATUS.md` records decisions, notes, and open questions only - never mod validation results.
- No fabrication: content that cannot be verified goes to STATUS.md open questions, never into
  guide prose.

## PDF Generation

Run `build.bat` -> `typst compile template.typ output/Aces-Realm.pdf` (Typst 0.15.1).
Fonts: Bahnschrift (headings) / Georgia (body).
Theme: night-sky aviation - deep navy `#10233D`, sky blue `#2E6FB8`, gold `#C9A227`,
tan `#C0A060`, rust `#B4552D`, ice `#F1F6FB` (palette derived from `assets/logo.jpg`).
