# STATUS — Peräjärvi '95

Living decision register for the My Summer Car + MSCLoader modlist guide.

## 2026-08-11 — Initial build

- Registered `my-summer-car/` as a modlist (AGENTS.md); created guide in Typst (dark "summer night garage" theme), `build-pdf.bat`, generated cover emblem `assets/logo.jpg`, output PDF `output/Perajarvi-95.pdf`.
- **Base game pinned**: My Summer Car **1.0** — out of Early Access **2025-01-08**, finished product; Steam auto-updates to the final stable build (maintenance patches only). No "version 1.x.y" fabricated.
- **Mod manager**: MSCLoader **v1.4.2** (2026-06-21, GitHub piotrulos/MSCModLoader; Nexus `mods/147`) — the community standard; adopted as the guide's only loader.
- **Adopted mods (6 + loader, all with verified sources)**:
  - Reharmonization (Nexus `mods/3152`, Horsey4, v1.1.2, 2024-01-08) — performance/stability; successor to FSMO, safe alternative to abandoned MOP.
  - Better Graphics (Nexus `mods/4103`, Bosorkanamettle, v2.0, 2025-10-25) — DOF/tilt-shift, bloom, SSAO, tonemapping, reflections/SSR, sunshafts, skyboxes, moonlight, weather, lake overhaul, mirror overhaul, map-expansion content (abandoned mansion, park, balloons), re-added NPCs.
  - Traffic Car Expansion (Nexus `mods/4299`) — 30+ vehicle models, smarter AI (signals, obstacle awareness), dynamic traffic density, headlight-flash police warnings.
  - Visual Wear (Nexus `mods/5544`) — visible wear on parts; empty bottle caps pop off.
  - Lights on Switches (Nexus `mods/868`) — glowing house light switches.
  - Cassette Tapes (piotrulos, OverTake.gg) — custom music cassettes bought at Teimo's; folder-per-tape; saves playback position.
- **Rejected / not adopted (reasons recorded)**:
  - **MOP (Modern Optimization Plugin)** — abandoned; community-documented save corruption and physics bugs; Reharmonization replaces it.
  - **Mod Loader Pro ecosystem** (e.g. Fuel Tank Door, Nexus `mods/5`) — requires the legacy Mod Loader Pro (`mods/677`), incompatible with the modern MSCLoader ecosystem; Better Graphics explicitly unsupported under Pro.
  - **Delivery Jobs** (former Nexus `mods/162`) — removed/hidden from Nexus; only unofficial rehosts → no verifiable source.
  - **Show Bolt Sizes** — removes the wrench-size trial-and-error, a core hands-on sim mechanic → violates the "no easier" pillar.
  - **Carry More / Carry All Backpack** — raises carry capacity → reduces friction → violates the "no easier" pillar.
  - **Expanded Winter Features** — full season overhaul; clashes with the summer setting and weather/graphics mods tuned for it.
- **Tentative (verify-gates, not in guide)**: SatsumaFPSOptimization — niche Satsuma-specific FPS tweak, often paired with Reharmonization; compatibility with the 1.0 line unverified at build time.

## 2026-08-11 — Mod review round 2 (more mods)

- **Adopted (3 new — modlist is now 9 mods + loader)**:
  - **Minimap** (Nexus `mods/326`, RedJohn260, v1.1.3, 2025-12-04) — HUD minimap + big map, day/night modes, speed-based zoom, compass, legend, POI / NPC-vehicle / discovered-wreck icons, job-availability flashing (sewage/wood/booze), rebindable toggles (default Ctrl+Numpad9 / Ctrl+Numpad5); explicit Better Graphics compatibility (v1.1.1).
  - **Openable Cabinets** (Nexus `mods/4037`, Bogle911 & Homura, v1.1, 2026-01-21) — openable living-room shelf, player wardrobe, kitchen cabinets, Ventti cabinets; v1.1 added sounds/shelving and fixed grab-through & collider issues; author explicitly does not support outdated MOP/Pro Loader.
  - **Satsuma Gauges Revamp** (Nexus `mods/8320`) — high-res gauge-cluster retexture, style options (default / 1XR); cosmetic only.
- **Rejected (new)**:
  - **Engine Info** (Nexus `mods/54`) — Nexus-tagged "Cheating": exposes exact wear / fluid / tuning values (Right-Ctrl+F), erasing the diagnostic challenge; unmaintained since 2020-05-25, pre-dates the 1.0 build.
  - **SatsumaFPSOptimization** — hides the Satsuma engine model in drive mode (visual loss); Reharmonization already covers the performance base.
  - **Digital / colorful gauge mods** (Satsuma Digital Dashboard, Colorful Gauges) — Nexus availability fluctuates (taken down for review); no stable verifiable page.
  - **Engine-sound overhauls** — fragmented scene; legacy-loader or manual `.assets` replacement; no maintained standard option.
  - **Standalone "4K/HD" texture packs** — no community-standard maintained pack; Better Graphics + Satsuma Gauges Revamp cover the pillar.
  - **Deeper crash/deformation physics** — not feasible on this engine (pre-scripted damage states).
- **Tentative resolved**: SatsumaFPSOptimization moved tentative → rejected (reason above).

## Open questions / drift risks

- Game 1.0 receives maintenance patches; loader and mod versions move — chapters point to each mod's page rather than hard-coding versions.
- Cassette Tapes is hosted on OverTake.gg (requires an account); if it moves, update the card source.
- If the MSCLoader installer flow changes (new installer versions), update `10-installation.typ`.
