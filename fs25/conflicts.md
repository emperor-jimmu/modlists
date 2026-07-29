# Known Mod Conflicts

Documented conflicts and incompatibilities between listed mods.

## Volatile Economy (Beta 2) + Enhanced Economy Settings
- **Symptom**: Conflicting price adjustments — both mods modify sale/buy prices at sell points
- **Cause**: Both mods override the same economy parameters
- **Resolution**: Choose one. Volatile Economy provides dynamic market simulation; Enhanced Economy Settings provides static adjustable prices. Do not use both simultaneously.

## Volatile Economy (Beta 2) + Tax Mod
- **Symptom**: Possible conflict — both modify daily/monthly financial mechanics
- **Cause**: Overlapping economic scripts
- **Resolution**: Test both together. If issues arise, prioritize Volatile Economy for Wave 2.

## CoursePlay + Precision Farming 3.0
- **Symptom**: Potential worker/AI conflict — both interact with vehicle automation
- **Cause**: Precision Farming 3.0 adds tramline guidance, CoursePlay adds custom field courses
- **Resolution**: Both are widely used together in the community. Enable CoursePlay field work mode compatible with PF tramlines. If AI workers behave unexpectedly, disable PF tramline guidance.

## Multiple Production Mods (WINERY + Brewery + NX Productions + The Mechet Production Pack)
- **Symptom**: Duplicate or conflicting production categories
- **Cause**: Multiple mods may add the same production type (e.g., two wine production chains)
- **Resolution**: These mods are by different authors and targeted at different production types (wine vs beer vs general production). Test in order: enable WINERY and Brewery first, then add NX Productions. Remove any duplicate production chains.

## Realistic Soil & Fertilizer + Precision Farming 3.0
- **Symptom**: Both provide soil map overlays and field data
- **Cause**: Overlapping soil analysis features
- **Resolution**: Realistic Soil & Fertilizer v2.2.0.0+ claims full Precision Farming compatibility. Use latest version and verify both overlays render correctly. If conflicts occur, disable Realistic Soil overlay in favor of PF3 overlay.

## WayPoint GPS + Enhanced Vehicle
- **Symptom**: Both provide GPS/routing features
- **Cause**: WayPoint GPS is a standalone routing system; Enhanced Vehicle includes GPS features
- **Resolution**: Test both together. If conflicts, use Enhanced Vehicle for GPS + vehicle management, and disable WayPoint GPS.

## General Notes
- **Multiple production buildings from different sources**: Always test production chain completeness (input → process → output) when using production mods from different authors.
- **Crossplay mods vs PC-only mods**: ModHub crossplay mods are verified compatible with each other. Mods from fs25.net (PC-only) have not been tested in combination.
- **Beta mods**: Volatile Economy (Beta 2) and WayPoint GPS (Beta 5) are development versions. Expect bugs. Disable if game stability is affected.
