# Status — Glowing Horizon

Decision log, mod approvals, rejections, and conflict resolutions.

---

## Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-08-01 | Target version: Fallout 4 1.11.221 (May 27, 2026, Anniversary Edition/AE runtime) | User-specified target; all mods must confirm compatibility with AE runtime 1.11.137-1.11.221 or be verified as still working via F4SE/community reports |
| 2026-08-01 | Mod Organizer 2.5 as the mod manager | User-specified |
| 2026-08-01 | 2-wave structure: Wave 0 (beginner, vanilla+UI/QoL) → Wave 1 (deeper systems, new content/mechanics) | User-specified wave philosophy |
| 2026-08-01 | Typst 0.15.1 + built-in features (no @preview packages), following repo convention (asseto-corsa, automobilista-2) | Matches monorepo conventions; avoids external package dependency issues |
| 2026-08-01 | Project structure mirrors other modlist projects in repo (AGENTS.md, README.md, STATUS.md, guide/, templates/, scripts/, output/, assets/) | Consistency across monorepo |
| 2026-08-01 | Mods provided/verified incrementally; no fabrication | Per user's critical no-fabrication rule — every mod entry requires a verified live Nexus Mods URL |

---

## Mod Approval Log

| Mod | Wave | Status | Date | Rationale |
|-----|------|--------|------|-----------|
| [F4SE](https://www.nexusmods.com/fallout4/mods/42147) | 0 (baseline) | Approved | 2026-08-01 | Required framework; page explicitly states "Game version 1.11.221 required" |
| [Address Library for F4SE Plugins](https://www.nexusmods.com/fallout4/mods/47327) | 0 (baseline) | Approved | 2026-08-01 | Tags confirm "Works with Next-Gen Update" + "Anniversary Update Compatible"; main file version listed as 1.11.221 |
| [Unofficial Fallout 4 Patch (UFO4P)](https://www.nexusmods.com/fallout4/mods/4598) | 0 | Approved | 2026-08-01 | v2.2.1a (28 May 2026); tags confirm "Works with Next-Gen Update" + "Anniversary Update Compatible" |
| [Mod Configuration Menu](https://www.nexusmods.com/fallout4/mods/21497) | 0 | Approved | 2026-08-01 | Tags confirm "Works with Next-Gen Update" + "Anniversary Update Compatible"; main file explicitly "For Fallout 4 game version 1.11.221" |
| [Buffout 4 NG with PDB support](https://www.nexusmods.com/fallout4/mods/64880) | 0 | Approved | 2026-08-02 | v1.38.2, updated June 2026 (a month after the 1.11.221 release). Confirmed AE-compatible by user |
| [Previsibines Repair Pack (PRP) Stable Branch](https://www.nexusmods.com/fallout4/mods/46403) | 0 | Approved | 2026-08-02 | Build 81.3, actively patched through 2026. Confirmed AE-compatible by user; promoted from mod-ideas.md |
| [Faster Loadscreens](https://www.nexusmods.com/fallout4/mods/102233) | 0 | Approved | 2026-08-01 | Description explicitly states "Supports VR/OG/NG/AE" |
| [Empty Vendor List Bug Fix](https://www.nexusmods.com/fallout4/mods/83252) | 0 | Approved | 2026-08-01 | Explicit "Supports Game versions: OG (1.10.163), NG (1.10.984), AE (1.11.137-1.11.221)" |
| [Magic Effect and Spell Engine Fixes](https://www.nexusmods.com/fallout4/mods/83433) | 0 | Approved | 2026-08-01 | Same explicit OG/NG/AE version-support statement |
| [Motion Vector Fixes](https://www.nexusmods.com/fallout4/mods/98544) | 0 | Approved | 2026-08-01 | Description states "Supports all game versions and ENB" |
| [Companion Shoots At Player Fix](https://www.nexusmods.com/fallout4/mods/81758) | 0 | Approved | 2026-08-01 | Same explicit OG/NG/AE version-support statement |
| [Extended Dialogue Interface (XDI)](https://www.nexusmods.com/fallout4/mods/27216) | 0 | Approved | 2026-08-01 | File history includes a build explicitly labeled "For Fallout 4 AE update 3, game version 1.11.221" |
| [Workshop Framework](https://www.nexusmods.com/fallout4/mods/35004) | 1 | Approved | 2026-08-01 | v2.5.0, updated July 2026; tag confirms "Works with Next-Gen Update". Required dependency for Sim Settlements 2 |
| [Sim Settlements 2](https://www.nexusmods.com/fallout4/mods/47976) | 1 | Approved | 2026-08-01 | v3.6.1, updated July 2026; tag confirms "Anniversary Update Compatible" (seen on Chapter 3 sub-page, same mod family) |
| [Scrap Everything](https://www.nexusmods.com/fallout4/mods/5320) | 1 | Approved | 2026-08-01 | Tag confirms "Anniversary Update Compatible" |
| [Faster Workshop AE (F4SE)](https://www.nexusmods.com/fallout4/mods/100532) | 1 | Approved | 2026-08-01 | Explicit "Supports the Anniversary Editions (1.11.137.0 and later)" |
| [Armorsmith Extended](https://www.nexusmods.com/fallout4/mods/2228) | 1 | Approved | 2026-08-01 | v7.0, updated Jan 2026; tags confirm "Works with Next-Gen Update" + "Anniversary Update Compatible" |
| [FallUI - HUD](https://www.nexusmods.com/fallout4/mods/51813) | 0 | Approved | 2026-08-01 | Verified via Playwright: page carries explicit "Works with Next-Gen Update" tag. Previously miscategorized in mod-ideas.md due to incomplete tag search |
| [FallUI - Inventory](https://www.nexusmods.com/fallout4/mods/48758) | 0 | Approved | 2026-08-01 | Verified via Playwright: page carries explicit "Works with Next-Gen Update" tag (hidden behind "View more..."). Previously miscategorized in mod-ideas.md |
| [Place Everywhere](https://www.nexusmods.com/fallout4/mods/9424) | 0 | Approved | 2026-08-01 | Verified via Playwright: updated June 3 2026, version 1.22.1.1221 (matching game 1.11.221). Tags confirm both "Works with Next-Gen Update" and "Anniversary Update Compatible". The 2026 forum reports were outdated |
| [Vivid Weathers - Fallout 4 Edition](https://www.nexusmods.com/fallout4/mods/15466) | 1 | Approved | 2026-08-01 | Verified via Playwright: page carries explicit "Works with Next-Gen Update" tag. Previously miscategorized in mod-ideas.md |
| [America Rising 2 - Legacy of the Enclave](https://www.nexusmods.com/fallout4/mods/75767) | 1 | Approved | 2026-08-01 | Verified via Playwright: page carries explicit "Works with Next-Gen Update" tag. Actively patched through 2026. Previously miscategorized in mod-ideas.md |
| [Homemaker - Expanded Settlements](https://www.nexusmods.com/fallout4/mods/1478) | 1 | Approved | 2026-08-01 | Verified via Playwright: correct URL is mods/1478 (not 3401, which is a French translation). Tags confirm both "Works with Next-Gen Update" and "Anniversary Update Compatible". Version 1.79.6 (June 2025) |

---

## Rejected Mods

| Mod | Reason | Date |
|-----|--------|------|
| Buffout 4 (original, mods/47359) | Tagged "Broken in Next-Gen Update" — superseded by Buffout 4 NG (mods/64880) | 2026-08-01 |
| Horizon (survival overhaul, mods/61232) | Mod page is no longer published (URL returns "Not published") — dead link as of 2026-08-01 | 2026-08-01 |
| Full Dialogue Interface (superseded by XDI for this list) | Older/legacy mod; XDI (mods/27216) is the actively maintained, AE-confirmed successor | 2026-08-01 |

---

## Conflicts

| Mod A | Mod B | Resolution | Date |
|-------|-------|------------|------|
| (none yet) | - | - | - |
