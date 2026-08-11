# STATUS — Routa

Living decision register for the My Winter Car + MSCLoader modlist guide.

## 2026-08-12 — Initial build

- Registered `my-winter-car/` as a modlist (AGENTS.md); created guide in Typst (dark "winter night garage" theme), `build-pdf.bat`, `tools/make-logo.py` → `assets/logo.jpg`, output PDF `output/Routa.pdf`.
- **Base game pinned**: My Winter Car (Steam app 4164420) — Early Access since **2025-12-29**, latest verified build **v.260516-01 (2026-05-16)**; Amistech ships date-coded EA updates frequently (v.260504-01, v.260415-01, v.260126-01…), Steam auto-updates. No "final version" fabricated; Steam News Hub is the source of truth.
- **Mod manager**: MSCLoader (for My Winter Car) **v1.4.2** (2026-06-21, Nexus `mywintercar/mods/3`, GitHub piotrulos/MSCModLoader) — the community standard (497 mods on the hub depend on it); adopted as the guide's only loader. Legacy loader routes (BepInEx/MelonLoader builds some mod pages still document) are out of scope.
- **Adopted mods — Layer 1 (QoL & graphics only, all verified on Nexus)**:
  - Enhanced Graphics v2.0 (`mods/708`, JCSX11, updated 2026-05-10, 117 endorsements) — the graphics pillar: volumetric/god-ray lighting, SEGI dynamic GI, shadow & lighting overhaul, dynamic skybox system, environment reflections, car light/mirror enhancements, full post-processing suite (AA, AO, DoF, motion blur, bloom, sun shafts, color grading, chromatic aberration, film grain, vignette). Full rewrite in v2.0. Some options performance-heavy.
  - Better FPS v1.3 (`mods/1060`, Bitpro17, updated 2026-01-31, 283 endorsements) — CPU-side code optimization "inspired by Reharmonization"; honest about gains ("probably gives some FPS"); console test via `fpstest`. Performance pillar.
  - GTA SA Style Minimap V0.4.9 (`mods/601`, Snake04511, updated 2026-01-26, 79 endorsements) — full-screen map (N), circular minimap (M), mouse waypoints (LMB set / RMB delete), zoom + refresh controls, POI icons (house, bar, gas station, mechanic, workplace), advert positions, taxi pickup/dropoff blips (active jobs only), legend, darkmode, custom hotkeys. Author's note: **NOT compatible with "NOP" and "Cold Start Fix" mods**.
  - AI Highbeam Nerf v1.0 (`mods/1184`, Tobipaste, updated 2026-01-19, 91 endorsements) — dims or disables AI high beams, forces AI low beams, intensity sliders; affects AI traffic lights only, not the player's cars.
  - Head Lamp v1.0.1 (`mods/68`, xVilho, updated 2026-01-08, 315 endorsements) — toggleable player headlamp (default G), configurable temperature/intensity/range/angle; Requirements tab lists MSCLoader; page documents the BepInEx route as well (guide uses the loader build). QoL visibility in the dark winter.
- **Adopted mods — Layer 2 (full modded experience, added on top of Layer 1)**:
  - Rivett Revamp v1.1.1 (`mods/2`, michu97736 & Kwoniizin, updated 2026-07-10, 79 endorsements, Nexus-tagged "Fair and balanced" / "Overhaul" / "Replacer") — the Corris's detail overhaul: body shape closer to the real Ford Taunus, remade dashboard + interior parts, 3 headlight types + grilles, new rims/hubcaps, fenders, bumper options (GT rear), side trims, mirror, seatbelts, headliner material, CD-player size, subwoofer shelf, frozen-glass models, license-plate options; all options via the loader's Mod Settings. Known issue: GT rear bumper collides with bumper-guard/side-stripe options; GT grille/bumper paint bug (author-tracked). Delete `MeshSave` if model issues appear (author's note).
- **Rejected / not adopted (reasons recorded)**:
  - **MWC CheatBox** (`mods/26`, 1,183 endorsements) — Nexus-tagged "Cheating/Unbalanced/Unrealistic": item spawner, godmode, money/finance editor, needs locks, teleport/noclip, taxi income multiplier, skip-wait, time/weather control, cleanup mode → violates the "no easier / no overpowered" pillar outright.
  - **ShowBoltSize** (`mods/144`, 512 endorsements) — displays the required wrench size (and X-ray-highlights bolts); removes the wrench-size trial-and-error that is a core hands-on sim mechanic (same verdict as the My Summer Car list's "Show Bolt Sizes"); also Nexus-tagged AI-Generated Content.
  - **MoonLightTweaks** (`mods/605`, xVilho) — brightens the night world (default multiplier 2.0); the short, dark Finnish winter is part of the game's challenge → erasing it eases the game.
  - **My Winter Backpack** (`mods/125`) — hidden since 2026-04-25 ("not supported / has issues"); also a carry-capacity raise that reduces friction.
  - **JT Minimap** (`mods/487`, 63 endorsements) — the author explicitly "no longer supports" it; superseded by the maintained GTA SA Style Minimap.
  - **Cold Start Fix** — referenced by name in the minimap's incompatibility note; a "fix" for the game's signature cold-start challenge, which this guide teaches instead (chapter 3) → rejected on the "no easier" pillar before any compatibility question.
  - **Traffic density / "more cars" mods** — none exist for MWC at guide time (verified by community consensus + category browse); the "more AI" pillar is covered honestly by the vanilla AI (highway traffic, police checkpoints, taxi customers, NPCs) + AI Highbeam Nerf. Stated in the guide rather than padded with fakes.
  - **Wear / dirt / rust visual systems** — none exist for MWC at guide time; candidates would be unverifiable → the detail pillar is covered by Rivett Revamp + the base game's own wear/inspection systems. Stated honestly.
  - **BepInEx / MelonLoader as loaders** — legacy alternative routes some mod pages document; MSCLoader is the ecosystem (497 depend on it) and the guide's only manager.
- **Tentative (verify-gates, not in guide)**: any future "Rivett Revamp" successor, engine-sound overhauls, or traffic mods — re-verify on Nexus before adoption; the EA game updates several times a year and the mod scene is young (game released 2025-12-29).

## Open questions / drift risks

- Game is in active Early Access: builds land frequently and Steam auto-updates. Chapters point to the Steam News Hub and each mod's page rather than hard-coding versions; re-verify the latest build before restating any pinned version.
- Enhanced Graphics v2.0 (2026-05-10) and Rivett Revamp v1.1.1 (2026-07-10) predate the pinned game build in date terms but track the game's patches; if a game update breaks either, check the mod's Posts tab for a fix before changing the guide.
- Head Lamp's page documents a BepInEx route; the guide adopts the MSCLoader build (Requirements tab lists the loader). If the loader build disappears, re-evaluate.
- The minimap's "NOP" incompatibility is quoted from the author; NOP itself is not adopted or documented (unverified mechanics).
- If the MSCLoader installer flow changes (new installer versions), update `10-installation.typ` accordingly.
