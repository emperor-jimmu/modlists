# Tutorial Progression Restructure — Design Spec

**Date:** 2026-07-23
**Status:** Approved

## Problem

Three progression issues in the current tutorial/guide content:

1. Wave 0 teaches Mun landing and docking — should end at stable orbit
2. Wave 0.5 is missing space station content — should teach stations
3. Wave 1's space station content belongs in Wave 0.5

## Design

### New Progression Flow

```
Wave 0:     Key Concepts → First Rocket → Gravity Turn → Stable Orbit → END
Wave 0.5:   Mun Landing → Mun Return → Docking → Space Stations → Building Better Rockets → Mission Planning → END
Wave 1:     Interplanetary Transfers → ISRU Mining → SSTO → Relay Networks → Asteroids → END
Wave 2:     (unchanged) Life Support → Colonization → Interstellar → Realism
```

### Content Moves

| Content Section | Move From | Move To | After section |
|-----------------|-----------|---------|---------------|
| Going to the Mun (Transfer Burn, Capture/Landing, Return) | wave-0-first-steps.typ L309-344 | wave-05-tools.typ | After "Wave 0.5 Guide — Building & Planning" heading, before "Building Better Rockets" |
| Basic Docking (Why Dock, Rendezvous, Docking Proper) | wave-0-first-steps.typ L346-375 | wave-05-tools.typ | After Mun content, before "Building Better Rockets" |
| Space Stations (Why Build a Station, Station Assembly) | wave-1-going-further.typ L1161-1180 | wave-05-tools.typ | After Docking content, before "Building Better Rockets" |

### Rewrites

| File | Section | Old text | New text |
|------|---------|----------|----------|
| wave-0-first-steps.typ | Where to Go from Here (L376-378) | "you can reach orbit, land on the Mun, dock two craft together, and return home safely" | "you can reach a stable orbit and understand the core concepts of rocket flight" |
| wave-0-first-steps.typ | Where to Go from Here (L378) | "mastered the core skills" | "mastered orbital flight" |
| wave-05-tools.typ | Guide heading intro | "Building & Planning" | Add sentence bridging from W0 orbit skills to W0.5 Mun/docking/station skills |
| wave-1-going-further.typ | Guide heading intro | Any reference to space stations as a W1 skill | Remove — now taught in W0.5 |

### Cross-Reference Updates

| File | Mod Entry | Fix |
|------|-----------|-----|
| wave-0-first-steps.typ | Station Keeping mod entry (L69) | "If you have stations or relay networks, this mod is essential" — stations aren't taught yet in W0. Rewrite to: "If you have satellites or plan relay networks (Wave 1), this mod is essential." |
| wave-05-tools.typ | DPAI mod entry | Verify it now teaches to the correct audience (W0.5 players learning docking) |

### No Changes To
- Wave 0 Key Concepts (still relevant for orbit)
- Wave 0 Building Your First Rocket (still relevant)
- Wave 1 Interplanetary / ISRU / SSTO sections
- Wave 2 content (unchanged)
- CKAN files (no mod changes in this spec)
