# Load Order

Proper load order is critical for a stable modded Stellaris experience. This page explains how to arrange your mods in MO2.

## General Rules

Mods lower in the left **override** mods higher up. The hierarchy should be:

```
 1. Bugfixes                    (fix game bugs, no content changes)
 2. Audio                       (music, ambience, sound effects)
 3. UI / HUD                    (interface, tooltips, icons)
 4. Graphics                    (visuals, textures, lighting, portraits)
 5. AI & Diplomacy              (AI behavior, diplomacy, federations)
 6. Economy & Automation        (resources, jobs, sectors, auto-management)
 7. Warfare & Ships             (combat, ship classes, fleet mechanics)
 8. Technology                  (tech tree, repeatables, rare tech)
 9. Events & Story              (anomalies, archaeology, leviathans)
10. Origins & Civics            (starting options, government types)
11. Species, Genetics & Portraits (traits, genetics, portrait packs)
12. Galaxy & Setup              (galaxy size, hyperlanes, planet diversity)
```

Within each category, mods should be ordered from **foundational** (changes core mechanics) to **additive** (adds new things).

## MO2 Separators

MO2 supports visual separators in the left mod list. Use the `mo2-separators.json` file in this repo to import color-coded category separators.

### Importing Separators

1. In MO2, click the wrench icon (settings) → **Separators**.
2. Click **Import** and select `mo2-separators.json`.

Each category has a distinct color gradient for quick visual identification.
