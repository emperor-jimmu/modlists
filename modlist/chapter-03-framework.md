# Chapter 3: Framework Mods 🟢 Wave 1 — Essential

## Learning Objectives
- Install the core libraries that almost every mod depends on
- Understand what each framework does
- Verify they load correctly

## Overview
Framework mods don't add content themselves — they provide APIs that other mods depend on. They must load first in your mod order (RimPy handles this automatically).

## The Mods

### [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077)

- **What it does:** Harmony is a code-patching library that lets mods modify RimWorld's built-in behaviour without overwriting game files. It's the foundation nearly every RimWorld mod depends on.
- **Why it's here:** Without Harmony, mods can't safely change how the game works. It enables other mods to add features, fix bugs, and improve UI without touching RimWorld's original code. It's the single most important mod in any modded setup.
- **Not OP because:** Pure framework — zero gameplay impact. It doesn't add, remove, or change anything in the game itself. It simply makes other mods possible.
- **Install:** OK to install now. Must be at the very top of your load order (RimPy handles this). Safe to add mid-save.

### [HugsLib](https://steamcommunity.com/sharedfiles/filedetails/?id=818773962)

- **What it does:** HugsLib is a shared library mod that provides common utilities for other mods — settings menus, logging tools, and helper functions. Also includes the Log Publisher (Ctrl+F12 to upload logs for troubleshooting).
- **Why it's here:** Many mods in this guide (Allow Tool, Defensive Positions, and others) depend on HugsLib. Installing it once centrally prevents each mod from shipping its own copy. Best practice: load it right after Harmony.
- **Not OP because:** Pure library — no gameplay content. It provides infrastructure for other mods but doesn't change anything itself.
- **Install:** OK to install now. Place right after Harmony in load order. Safe to add mid-save.

### [XML Extensions](https://steamcommunity.com/sharedfiles/filedetails/?id=2577315200)

- **What it does:** Provides XML patching utilities that let other mods modify game data cleanly without overwriting files. Enables mods to add new texture color variants, floor types, and other data-driven content.
- **Why it's here:** Several graphical and content mods (including CCP's Stone Tweaks Vanilla) now require XML Extensions as of RimWorld 1.6. Its patching system is the modern replacement for older XML-based framework approaches.
- **Not OP because:** It's a pure framework — no gameplay content, no balance impact. It simply enables other mods to work.
- **Install:** OK to install now. Safe to add mid-save.

### [Vanilla Expanded Framework](https://steamcommunity.com/sharedfiles/filedetails/?id=2023507013)

- **What it does:** A core modding library required by the entire Vanilla Expanded series. Provides shared code for custom gizmos, UI systems, hediff mechanics, faction management, base generation, and more. Also removes the hard cap of 12 factions set by the base game.
- **Why it's here:** Many mods in this guide (Vanilla Furniture Expanded, Vanilla Cooking Expanded, Vanilla Weapons Expanded, and more) depend on Vanilla Expanded Framework as their backbone. It centralises shared code so each mod doesn't have to ship its own copy, keeping the modlist lean and compatible.
- **Not OP because:** Pure framework — no gameplay content, no items, no mechanics. It provides infrastructure for other mods to build on. The faction-cap removal is the only user-facing change, and it only matters if other mods add factions.
- **Install:** OK to install now. Place after XML Extensions and before Eccentric Tech - Core in load order. Safe to add mid-save.

### [Eccentric Tech - Core](https://steamcommunity.com/sharedfiles/filedetails/?id=2552623545)

- **What it does:** Adds an advanced AI mainframe (Aurora Core), nanofabrication facilities, and Second Wave materials (Nanoweave, HD Hex Cells). Unlocks the entire Eccentric Tech research tree.
- **Why it's here:** Required dependency for Eccentric Tech - Advanced Shields. Also enables optional upgrades for Fusion Power and other Eccentric mods. The Aurora Core gives the research bench a personality — Aurora, a starship AI — which adds lore flavour without gameplay impact.
- **Not OP because:** The nanofabrication chain requires significant research investment and advanced resources. The Aurora Core must be built and connected to a Hi-Tech Research Bench, consuming space and components.
- **Install:** OK to install now. Safe to add mid-save.

## Installation Checkpoint
✅ OK to install all mods in this chapter now. They are safe to add mid-save.

## Next Steps
Proceed to [Chapter 4: Bugfixes & Performance](chapter-04-bugfixes-performance.md).
