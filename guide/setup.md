# tModLoader Setup & Configuration

## What is tModLoader?

tModLoader is the official mod loader for Terraria, available free on Steam if you own the base game. It allows you to install, enable, and manage mods from the Steam Workshop. Think of it as a separate "modded version" of Terraria that runs alongside your vanilla installation.

**Steam Store Page:** [tModLoader on Steam](https://store.steampowered.com/app/1281930/tModLoader/)

## Installation

1. Open Steam and search for "tModLoader" in your Library (it appears as a separate app if you own Terraria).
2. Click **Install**. tModLoader installs as a standalone application — it does not modify your vanilla Terraria.
3. Launch tModLoader from Steam. The first launch takes 2-3 minutes while it sets up the mod environment.
4. Once the main menu appears, you're ready to install mods.

## Workshop Basics

tModLoader integrates directly with the Steam Workshop:

1. From the tModLoader main menu, click **Workshop**.
2. Browse mods by category, search by name, or follow curated modlists.
3. Click **Subscribe** on any mod to download it. Subscribed mods appear in your **Mods** menu automatically.
4. To manage subscriptions, return to the Workshop menu or use Steam's Workshop page in your browser.

## Enabling/Disabling Mods

1. From the main menu, click **Mods**.
2. You'll see a list of all subscribed mods.
3. Click the toggle next to each mod to enable or disable it.
4. Click **Reload** at the bottom to apply changes. The game will restart with your selected mods active.

**Note:** Some mods have dependencies. If you enable a mod that requires another, tModLoader will auto-enable the dependency or warn you if it's missing.

## Load Order

Mod load order matters. Some mods must load before others (dependencies, library mods).

1. In the **Mods** menu, use the arrow buttons to reorder mods.
2. Move library/foundation mods to the top of the list.
3. Each wave's modlist includes a **Load Order** section with the exact enable order.
4. After reordering, click **Reload**.

## Mod Configuration

Many mods have configurable settings:

1. In the **Mods** menu, click **Mod Config** (or click the gear icon next to a mod).
2. Adjust settings as needed. Common configurations:
   - Difficulty scaling (enemy health/damage multipliers)
   - UI preferences (minimap size, boss health bar position)
   - Gameplay toggles (enable/disable specific features)
3. Changes take effect immediately or after reload, depending on the setting.

## Per-Wave Setup

Each wave requires a fresh setup. Before starting a new wave:

1. **Disable all mods** from the previous wave (or unsubscribe from them entirely).
2. **Subscribe to the new wave's mods** via the Workshop.
3. **Apply the load order** specified in the wave's modlist.
4. **Generate a new world** with the wave's specified settings (difficulty, size, evil biome).
5. **Create a new character** (each wave is a fresh playthrough).

Refer to each wave's modlist for the exact mod list and load order.

## Troubleshooting

**Out of Memory Errors**
- Ensure you're running the 64-bit version of tModLoader (default on modern systems).
- Close other applications to free RAM.
- If the error persists, reduce the number of active mods or lower graphics settings.

**Mod Conflict Errors**
- If the game crashes on load with a "mod conflict" message, check that your load order matches the wave's modlist.
- Disable mods one at a time to identify the conflicting pair.
- Report conflicts to the mod authors or check the mod's Workshop page for known issues.

**"Mod Not Found" Errors**
- If a mod is missing, verify your Workshop subscriptions in Steam.
- Some mods are delisted or renamed; search the Workshop for the current name.
- Ensure all mods are compatible with Terraria 1.4.5 (check the mod's Workshop page for version info).

**Verifying Game Files**
- In Steam, right-click tModLoader → Properties → Installed Files → Verify Integrity.
- This re-downloads any corrupted or missing files.
