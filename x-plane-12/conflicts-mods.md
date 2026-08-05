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
| - | (none yet) | - | User to populate as mods are added |

## Standing notes

- Foundational plugins are designed to coexist (one plugin slot each, no shared files);
  the only cross-tool dependency is AviTab reading Navigraph charts (intended).
- openSAM (animated jetways) + Better Pushback (pushback tug) pair at gates - if ground
  animations conflict, disable one plugin for that session and record it here.
- AutoOrtho must sit below airports/overlays in `scenery_packs.ini`; record any scenery
  pack that fights for that slot.
