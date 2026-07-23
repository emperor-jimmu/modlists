# Guide Content Expansion — Design Spec

**Date:** 2026-07-23
**Status:** Draft

## Problem

After the tutorial progression restructure, several gaps remain in the guide:
- Wave 1 has interplanetary fundamentals but no deep dives on inner planets, build strategy, or campaign play
- Wave 2 has colonization/interstellar concepts but no practical destination guides or vessel architecture

## Content Additions

### Wave 1 — 7 new sections (~8 pages)

| # | Section | Position | Content |
|---|---------|----------|---------|
| 1 | **Minmus Mining Base** | After ISRU section | Walkthrough: why Minmus first, ideal site selection (flats), miner/refinery/tanker design, automated fuel runs. Builds on existing ISRU chain content. |
| 2 | **Build Strategies for Interplanetary Ships** | Before Interplanetary Transfers | Nuclear transfer stages (NERV), asparagus vs onion vs serial staging in vacuum, TWR vs Isp tradeoffs, modular design (dockable payload, reusable tug), the ∆v budget spreadsheet (how to plan a multi-leg mission), reaction wheels vs RCS for large ships. |
| 3 | **Campaign Play — Career Mode Strategy** | After Build Strategies | Contract types and which to accept/skip, science farming priority (biomes, labs), funds management, upgrade order for KSC buildings, CTT node priority. How Wave 1 mods integrate into career (Near Future parts unlock order, SCANsat for contract farming). |
| 4 | **Eve — The Purple Hell** | After Duna Transfer | Transfer (54° phase angle, 1,100 m/s), atmospheric entry (thick atmosphere — need heat shields, but parachutes work great), surface exploration, **ascent** (the hardest thing in KSP: 8,000 m/s to orbit, sea-level is a trap, land on a mountain), Gilly as Eve-system refueling base (tiny gravity, great ISRU). |
| 5 | **Moho — The Sun-Diver** | After Eve | Why Moho is hard (inclined orbit, deep gravity well, transfer costs 2,200+ m/s), capture strategy (multiple braking passes), surface operations (solar panels work great, but watch heat). |
| 6 | **Duna Surface Operations** | After Moho | Landing zones (lowlands for safety, highlands for science), rover deployment, surface base design (flat-pack modules, docking port alignment on rough terrain), Ike as a Duna relay hub and fuel depot. |
| 7 | **The Jool System** | After Duna | Jool transfer (96° phase angle), moon hopping strategy (Laythe → Vall → Tylo → Bop → Pol), Laythe spaceplane (oxygen atmosphere = jet engines work), Tylo challenge (no atmosphere, high gravity — pure ∆v check), Pol/Bop for mining. |

### Wave 2 — 4 new sections (~4 pages)

| # | Section | Position | Content |
|---|---------|----------|---------|
| 8 | **Interstellar Destination Profiles** | After Interstellar Engine Classes | Kcalbeloh transit (black hole system, wormhole option, time dilation — aesthetic), Grannus transit (red dwarf binary, conventional star, good first interstellar target), what to bring (power, life support duration, fuel reserves for capture). |
| 9 | **Blueshift Warp Infrastructure** | After Destination Profiles | How warp coils work (deploy at destination before FTL works), scout-and-deploy loop (FFT sub-light ship explores → drops coil → Blueshift ship warps to coil), coil network expansion strategy, coil power requirements. |
| 10 | **Deep Space Vessel Architecture** | After Warp Infrastructure | Modular assembly in orbit (dock engine section + fuel + hab + lander), radiator placement (away from hab modules, perpendicular to sun), artificial gravity via centrifuge rings or spin gravity, power hierarchy (solar → fission → fusion → antimatter), "the mothership pattern" — one interstellar tug, detachable landers, return-capable. |
| 11 | **Multi-Colony Empire Management** | Before System Interactions | Colony specialization (Minmus = fuel, Duna = manufacturing, Laythe = hab/science), supply route automation (reusable tankers on transfer windows), KAC alarm chains for resupply missions, "when to stop expanding" — diminishing returns, part count limits, kraken risks. |

## Implementation Notes

- All new sections use existing `#section-heading`, `#tip`, `#info`, `#warning`, `#danger` callouts. Follow the guide's existing style.
- Reference mods by the names used in the mod list (e.g., "NF Launch Vehicles" not "NearFutureLaunchVehicles").
- Keep tone consistent: direct, tutorial-style, assumes player has installed the wave's mods.
- No mod-list changes. No CKAN changes. Content only.
