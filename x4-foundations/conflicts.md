# Mod Conflicts

This file documents known mod conflicts and incompatibilities for Stellar Dominion.

## Core Rules

- **VRO (Wave 2) is the load-bearing mod.** It requires a **new game start** — never install it into an existing save and never remove it mid-playthrough. It also requires **all DLCs**.
- **Never combine VRO with another combat-rebalance mod** unless it ships an explicit VRO patch. Ship packs that add vessels must be VRO-aware (Reemergence in Wave 3 is designed for VRO; SVE and XR ShipPack are not included for this reason).
- **No total conversions in this list by design.** Star Wars Interworlds conflicts with VRO and most of the modlist — if you want it, run it as a separate MO2 profile, not inside Stellar Dominion.

## Pairings That Work Together (not conflicts)

- **Apologise for Attack + Friendly Fire Tweaks** — complementary: one prevents accidental rep loss, the other lets you recover from it.
- **KUDA AI Tweaks + VRO** — KUDA changes AI behaviour, VRO changes ship stats; they do not touch the same data.
- **FOCW + Reactive Factions Retribution + VRO** — the standard endgame war stack; FOCW and Reactive Factions handle faction dynamics, VRO handles combat balance.
- **Reemergence + VRO** — Reemergence is designed to work alongside VRO.

## Known Incompatibilities & Warnings

| Mod(s) | Issue |
|---|---|
| VRO + unpatched SVE / XR ShipPack | Broken ship stats, missing internal generators. Use only VRO-patched versions (none currently stable on Nexus — see mod-ideas.md). |
| Star Wars Interworlds (TC) | Replaces core game content; incompatible with VRO and most of this list. Separate profile only. |
| Learning All The Things + Faster Crew Leveling | Redundant — both speed up crew leveling. Only Learning All The Things is included. |
| Crystal Finder / Crystal Rarities | Community-considered unbalanced (crystal farming). Excluded. |
| Better Target Monitor | Removed from the Steam Workshop and no longer maintained — not included. |
| Disable Encounters | Known side-effect: patrol side-missions can look bugged because no new ships spawn. Don't pair with mods that rely on random spawns. |
| Sector Satellites | Intended replacement for satellite spam; don't combine with other satellite-behaviour mods. |

## Installation Notes

- **Foundation of Conquest and War** is the only non-Nexus mod — manual install from the Egosoft forum thread (`extensions` folder). Its `focwsetup` XML must be read carefully: boosting a faction too far can snowball and destabilise the galaxy.
- **Notification Filter** requires **Mod Support APIs + Options Helper** (both in Wave 0) and X4 8.00+.
- **Mimic Repeat Orders** requires **Mod Support APIs** and X4 7.60+.
- **Reemergence** — verify the version matching your game build and any required patches on its Nexus Files/Requirements tab.
- **VRO** — do not install VRO's separate "Assets" mod; current VRO versions (5.x+) include everything.
