# Known Mod Conflicts

Use this file to track mods that cannot coexist in the same wave.

## Format

```markdown
### Mod A + Mod B
- **Category conflict:** [e.g., Same .rpf overwrite / Same ScriptHookV hook]
- **Wave:** [0 or 1]
- **Resolution:** [e.g., Choose one, or install order fix]
- **Status:** [Open / Resolved]
```

## Wave 0 Conflicts

### HeapAdjuster + Packfile Limit Adjuster
- **Category conflict:** None — they patch different engine limits (memory heap vs packfile count).
- **Wave:** 0
- **Resolution:** Install both; they are designed to coexist.
- **Status:** Resolved (compatible by design)

## Wave 1 Conflicts

### VisualV + NaturalVision Evolved (NVE)
- **Category conflict:** Same files — both rewrite timecycles, lighting, weather, and colour grading.
- **Wave:** 1
- **Resolution:** Choose one. VisualV is the adopted vanilla-plus base; NVE is a photorealism alternative. Never both.
- **Status:** Resolved (VisualV adopted, NVE excluded)

### IVPack + World of Variety (WoV)
- **Category conflict:** Same spawn-config files (`popgroups.ymt`, `popcycle.dat`, `vehiclemodelsets.meta`).
- **Wave:** 1
- **Resolution:** WoV rejected (also deprecated). Use IVPack with Dispatch of Variety.
- **Status:** Resolved (WoV rejected)

### Drive V + Manual Transmission
- **Category conflict:** Partial — both touch vehicle behaviour (handling vs transmission).
- **Wave:** 1
- **Resolution:** Designed to coexist (different systems), but check each mod's `.ini` if handling feels wrong.
- **Status:** Resolved (compatible, verify config)

### VanillaWorks Extended Pack + IVPack
- **Category conflict:** None — both are add-on DLC packs (`dlclist.xml` entries), so they coexist.
- **Wave:** 1
- **Resolution:** Install both; they need the custom `gameconfig.xml` + limit adjusters to avoid memory crashes.
- **Status:** Resolved (compatible, heavy install)

### VisualV + LA Revo 2.0
- **Category conflict:** Same files — LA Revo replaces roads, buildings, signage, vegetation, and lighting wholesale.
- **Wave:** 1
- **Resolution:** LA Revo 2.0 rejected (also paywalled). Use the curated VisualV + LA Roads + RCA stack instead.
- **Status:** Resolved (LA Revo rejected)

### VisualV + QuantV
- **Category conflict:** Same files — both rewrite lighting and weather.
- **Wave:** 1
- **Resolution:** Choose at most one lighting/weather overhaul (VisualV, NVE, or QuantV).
- **Status:** Resolved (VisualV adopted)

## Cross-Wave Conflicts

*None documented yet.*
