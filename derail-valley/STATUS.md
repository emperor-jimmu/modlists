# STATUS — Iron Valley

Living decision register for the Derail Valley + Unity Mod Manager modlist guide.

## 2026-08-11 — Initial build

- Registered `derail-valley/` as a modlist (AGENTS.md); created guide in Typst (dark "night freight" theme), `build-pdf.bat`, generated cover emblem `assets/logo.jpg`, output PDF `output/Iron-Valley.pdf`.
- **Base game pinned**: Derail Valley is **Early Access**. Current live build: **B99** (2024-11-21) + stability patches **B99.1–B99.7** (final 2025-08-02) + Unity engine security patch (2025-10-04, no gameplay changes). **B100** (first electric loco WE6-960, overhead lines, 100+ new cargo types) is in development with a target around end of 2027 — NOT released. No version beyond this is fabricated.
- **Mod manager**: **Unity Mod Manager (UMM) v0.32.5** (2026-07-29, newman55, Nexus `site/mods/21`) — the community standard for Derail Valley: DoorstopProxy install, drag-and-drop zip installs, in-game mod menu (Ctrl+F10), per-mod settings, enable/disable, Nexus update checks. The official modding guide (dv-modding-guide.rtfd.io) and every adopted mod page name UMM as the required loader. The game has NO official mod support and no Steam Workshop — Nexus is the primary hub.
- **Adopted mods (13 + manager; all pages read and verified 2026-08-11)**:
  - *Foundations*: **Custom Car Loader** (mods/324, v3.1.8, 2026-07-24 — explicitly requires B99.7+, does not support older builds; NOT compatible with Number Manager), **Language Helper** (mods/823, dependency), **Custom Licenses** (mods/1036, v1.1.3, 2026-04-04, WhistleWiz), **Comms Radio API** (mods/813, v1.0.3, fauxnik), **DV Custom Cargo** (GitHub WhistleWiz/dv-custom-cargo, MIT, CCL-compatible).
  - *Rolling stock* (all CCL-based, all updated 2025–2026): **Santa Fe 2900 Class Northerns** (mods/1610, 2026-07-27) · **S484-841 "Sunset"** (mods/1549, v1.0.6, 2026-07-26) · **VR Class Jk3** (mods/1334, v1.0.1, 2025-10-25) · **N Class** (mods/1323, v1.1, 2026-08-06) · **EMC-E Series** (mods/1497, v1.2.1, 2026-08-03).
  - *Detail & immersion*: **Skin Manager** (mods/34, v4.4.1, 2026-04-11 — skins/liveries, CCL-aware), **Loco Ownership** (mods/977, v1.6.1, 2025-10-18 — own/paint/service/sell locomotives at catalogue prices, requires the relevant license).
  - *Optional graphics*: **ReShade** (reshade.me, generic post-processor; no DV-specific preset verified — optional and marked as such).
- **Rejected / not adopted (reasons recorded)**:
  - **Number Manager** (mods/197) — *explicitly incompatible with Custom Car Loader* (CCL page: "NUMBER MANAGER IS NOT COMPATIBLE WITH CCL"); our list is CCL-based, so it cannot join.
  - **DV Utilities** (mods/631) — cheat toolkit: money/license unlocks, unlimited fuel, disables derailment, free rerail → violates the "no easier" pillar; also unmaintained since Feb 2024 (pre-B99), tagged "Cheating".
  - **Expanded Station Range** (mods/176) — last updated Jul 2023 (Simulator-era, pre-B99); stale, no current-build statement → not recommended.
  - **Improved Job Overview** (mods/776) — last updated Aug 2023, officially unmaintained; community reports it still runs, but the page claims nothing → not included.
  - **Zeibach's Couplers** — legacy "Overhauled"-era mod; author joined the Altfuture dev team and the official coupling rework is on the roadmap; current-build support unverified → not included (N Class notes optional compatibility).
  - **DRG Class 01 (mods/541)** — hidden by author since 2023-09-26 ("currently not supported") → unavailable.
  - **Class 66, TEM2/ChME3** — could not verify a currently available Nexus release → not included.
  - **Booklet Organizer, LightingOverhaul, EasyTex, "Map Enhancer"** — no verifiable current page exists (Map Enhancer is a Railroader mod, not DV); LightingOverhaul appears to be an old private BepInEx-era mod → not included.
- **Tentative (verify-gates, not in guide)**: a DV-specific ReShade preset — search shows players use presets, but no current, verifiable Nexus preset page was confirmed at build time; the guide points to ReShade itself and in-game tuning instead.

## Open questions / drift risks

- Game is Early Access: the B100 update will break mods (as every major build has — CCL had to be rebuilt after the Simulator update). The guide targets the current B99.7 line and warns about it.
- Mod versions move faster than any printed guide: every card points to its page; re-verify "Last updated" and "Requirements" before installing.
- DV Custom Cargo is distributed on GitHub (WhistleWiz) — check whether it also lands on Nexus.
- Comms Radio API (mods/813) was last updated Apr 2024 (B98 era); Loco Ownership (B99-compatible) requires it and it is evidently functional — watch for a B100 break.
