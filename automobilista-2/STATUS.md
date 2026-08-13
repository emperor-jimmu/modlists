# Status — Torque Ascension

Decision log, mod approvals, rejections, and conflict resolutions.

---

## Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-08-01 | Wave structure: career/discipline progression | Maps to AMS2 disciplines; natural progression from karts to F1 |
| 2026-08-01 | Category-primary mod org with per-wave tutorials | Mods shared across waves; tutorials separated |
| 2026-08-01 | AMS2CM as mod organizer | Only widely-used AMS2 content manager |
| 2026-08-01 | DLC policy: base game default, recommended DLC per wave | Balances accessibility with completeness |
| 2026-08-01 | Quality curation over quantity | AMS2 mod ecosystem is ~70% skins; curated list will be 20-35 mods |
| 2026-08-01 | Typst + cmarker for PDF generation | Matches repo convention; cmarker handles markdown-to-Typst natively |
| 2026-08-01 | Light theme for PDF | Print-friendly; dark accents for racing aesthetic |
| 2026-08-01 | Mods provided later; placeholder sections | Build framework first, fill mods when available |
| 2026-08-14 | Verification source: OverTake.gg live pages, with Wayback Machine snapshots (Jul 2025 – Aug 13 2026) as primary evidence | OverTake.gg origin was unreachable (Cloudflare 520) during verification; no-fabrication pillar requires every URL/version to be observed, not guessed |
| 2026-08-14 | 20-mod curated list across waves 0-3; unverified candidates → mod-ideas.md | Quality curation pillar; only snapshot-verified mods enter the guide |
| 2026-08-14 | One AI-names solution (NAMeS) and one FFB file (rFuktor Control the Limit) | Avoids CustomAIDrivers and ffb_custom_settings.txt file conflicts; documented in conflicts-mods.md |
| 2026-08-14 | Version bump 1.0.0 → 1.1.0 | First full modlist content addition; PDF regenerated |

---

## Mod Approval Log

| Mod | Wave | Status | Date | Rationale |
|-----|------|--------|------|-----------|
| AMS2 Content Manager v0.3.0 | 0 | Approved | 2026-08-14 | Essential mod manager; free, open-source; verified 2026-07-13 snapshot |
| SimHub (latest) | 0 | Approved | 2026-08-14 | Dashboard/overlay platform; official AMS2 support; foundation for later waves |
| Crew Chief (latest) | 0 | Approved | 2026-08-14 | Spotter/engineer; AMS2 = full support per official docs |
| Crew Chief App Manager v1.0.0 | 0 | Approved | 2026-08-14 | Auto start/stop of Crew Chief; reduces beginner friction |
| NAMeS: Real Drivers for AMS2 v5.95 | 1 | Approved | 2026-08-14 | Real names for all default content; updated for V1.6.9.9; keeps Reiza AI balance |
| GT4 Skin Pack by JTN v1.0 | 1 | Approved | 2026-08-14 | 40-car GT4 grid for the Wave 1 teaching class; skins + AI only |
| IMSA MPC 2021 Pack GT4/GS v0.7 | 1 | Approved | 2026-08-14 | Historic season grid for GT4/GS; active development noted |
| AMS2 Custom FFB — rFuktor Control the Limit v1.0.1 | 2 | Approved | 2026-08-14 | Community-standard FFB base tuned for control at the limit |
| Aces IMSA GT3 Bundle 2026.Phase3 | 2 | Approved | 2026-08-14 | Accuracy-first 2026 GTD/GTD PRO grid; author-documented NAMeS interaction |
| Aces AMS2 SimHub Overlay Suite v1.3 | 2 | Approved | 2026-08-14 | 18-overlay race suite; real deltas, class leaderboards, telemetry |
| Omitool2 (for SimHub) 20250727a | 2 | Approved | 2026-08-14 | Setup guidance (camber/tyre pressure targets) for Wave 2-3 setup work |
| Second Monitor (latest) | 2 | Approved | 2026-08-14 | Lightweight timing app; active Aug 2026; complements overlay suite |
| Rewind GP v1.6 | 3 | Approved | 2026-08-14 | Historical F1 career mode; matches Wave 3 Historic F1 content |
| Race Pace v20.0 | 3 | Approved | 2026-08-14 | Persistent career world; complements Rewind GP |
| [IMG] F1 1990 Season v1.4 | 3 | Approved | 2026-08-14 | Full 1990 championship on Formula Classic Gen 3; XML Selector |
| [AMS2] F1 1991 Season v2.13 | 3 | Approved | 2026-08-14 | Full 1991 championship on Formula Classic Gen 4; V1.6-era fixes |
| Trofeo Maserati Europe 2005 v1.0 | 3 | Approved | 2026-08-14 | Real 2005 season grid for the GranSport Trofeo (HEP2 DLC); fresh Aug 2026 release |
| Dodge Viper ORECA 2000 v1.5 | 3 | Approved | 2026-08-14 | Works-team 2000 Le Mans winner liveries; no physics changes |
| AVUS 26.6 | 3 | Approved | 2026-08-14 | Lap-comparison telemetry tool for setup engineering |
| _HERVE_DASH V9.26 | 3 | Approved | 2026-08-14 | Pro SimHub dashboards; class-relative deltas; French labels noted |

---

## Rejected Mods

| Mod | Reason | Date |
|-----|--------|------|
| AMS2 MaXBaldo real FFB v1.01 | File conflict with rFuktor Control the Limit — both replace `ffb_custom_settings.txt`; only one FFB file can be active | 2026-08-14 |
| NAMeS+AI: Real Drivers for AMS2 Mods | Conflicts with NAMeS and season-pack AI files; redundant while the list is default-content-first | 2026-08-14 |
| Zero to Apex (career automation) | Redundant with Rewind GP + Race Pace; curation call | 2026-08-14 |
| GT3 Skin Pack 40 Cars (w/ Verstappen) | Unverifiable (no Wayback capture) and redundant with Aces IMSA GT3 Bundle | 2026-08-14 |

---

## Conflicts

| Mod A | Mod B | Conflict | Resolution | Date |
|-------|-------|----------|------------|------|
| NAMeS | NAMeS+AI | Both write driver-name XMLs to `UserData/CustomAIDrivers`; last-installed wins per class | Use NAMeS only — it covers all default content and keeps season-pack AI intact | 2026-08-14 |
| NAMeS | AMS2 Custom AI Performance (DannyDB) | Both write per-class AI XMLs for overlapping classes (GT3, GT4, Stock Car, etc.) | Use NAMeS only; DannyDB stays in mod-ideas as an alternative AI philosophy | 2026-08-14 |
| rFuktor Control the Limit | MaXBaldo / Custom FFB Collection | All replace `ffb_custom_settings.txt` | Exactly one FFB file active at a time; rFuktor Control the Limit selected | 2026-08-14 |
| NAMeS | Aces IMSA GT3 Bundle AI namefile | Same CustomAIDrivers target for GT3 classes | Install the Aces GT3 namefile last (author-documented) so NAMeS does not overwrite it | 2026-08-14 |
| NAMeS | IMG F1 1990 / AMS2 F1 1991 season packs | Season-pack XML Selectors manage F-Classic AI files | The active season selector governs its classes by design; expected, not an error | 2026-08-14 |
| GT4 Skin Pack by JTN | IMSA MPC 2021 Pack GT4/GS | Both ship a GT4 class AI file targeting `GT4.xml` | Install exactly one GT4 AI grid — JTN's complete 40-entry grid recommended; use the IMSA pack's AI only if the IMSA grid is preferred | 2026-08-14 |
| Crew Chief App Manager | Manual Crew Chief launch | Both control the Crew Chief lifecycle | Use the manager exclusively; do not launch Crew Chief manually alongside it | 2026-08-14 |
