# Ace's Realm - Mod Conflicts

This file is the working record of mod conflicts and load-order notes.
It is deliberately **excluded from the PDF** so it can be maintained freely.

## How to use this file

- Whenever two mods touch the same thing (same plugin slot, same scenery area, same
  aircraft, same navdata source), record it here.
- Scenery conflicts are usually load-order problems - see the Scenery Load Order section of
  `guide/installation.typ` (airports above overlays above ortho/mesh above libraries).
- The organizer (XFast Manager) flags file conflicts at install time - choose clean
  install/overwrite deliberately and note what you chose here.

## Record

| Date | Mods involved | Nature of conflict | Resolution / notes |
|---|---|---|---|
| 2026-08-21 | X-Clouds Enhancer vs BAAC | Both tune the sky/atmosphere (clouds, lighting, scattering) | Keep one as the primary sky mod; follow each page's compatibility notes before stacking |
| 2026-08-21 | Bay's Lighting Mod vs any other lighting mod | Bay's is a complete lighting replacement and is explicitly incompatible with other lighting mods | It is the only lighting overhaul in the list — do not stack another |
| 2026-08-21 | X-RAAS2 vs old X-RAAS 1.0 (FlyWithLua-based) | Both emit runway advisories — doubled audio annunciations | Remove X-RAAS 1.0 before installing X-RAAS2 |
| 2026-08-21 | SimHeaven X-World vs AutoOrtho / overlays | Scenery load order — X-World must sit below airports/overlays and above ortho/mesh | XFast Manager's smart sorting maintains it; if an airport vanishes, check `scenery_packs.ini` |
| 2026-08-21 | AEP v2 vs Global Airports | AEP overlays the default airports globally | Place it above Global Airports in `scenery_packs.ini` |
| 2026-08-21 | WebFMC Free vs WebFMC Pro | Different aircraft support lists; both install into the same plugin slot | Install exactly one — Pro if you fly the CL650/Q4XP/ToLiss/777v2, Free is Zibo-only |
| 2026-08-21 | LiveTraffic vs the sim's AI traffic / other traffic plugins | Competing traffic sources | Run one traffic system at a time |

## Standing notes

- Foundational plugins are designed to coexist (one plugin slot each, no shared files);
  the only cross-tool dependency is AviTab reading Navigraph charts (intended).
- openSAM (animated jetways) + Better Pushback (pushback tug) pair at gates - if ground
  animations conflict, disable one plugin for that session and record it here.
- AutoOrtho must sit below airports/overlays in `scenery_packs.ini`; record any scenery
  pack that fights for that slot.
- Sky/atmosphere mods are the overlap zone: X-Clouds Enhancer (clouds), Bay's Lighting Mod
  (lighting), and BAAC (atmosphere panel) all touch the atmosphere renderer. They are the
  only sky mods in the list — keep it that way, and check each mod's page for compatibility
  before stacking another sky mod on top.
