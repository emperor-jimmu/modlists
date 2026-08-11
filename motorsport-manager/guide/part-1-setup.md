# Part 1 — Setup

## 1.1 The Game

**Motorsport Manager** is a deep motorsport management simulation by **Playsport Games** (published by Miniclip), released **9 November 2016** on Steam (App ID 415200). You don't drive the cars — you run the team: hire drivers and staff, design and build the car, sign sponsors, upgrade your headquarters, lobby for rule changes, and call the strategy on race day.

This modlist targets the **final version created for the game**: **Patch 1.6** (released **10 February 2026**). That patch fixed the black-screen-on-boot problem that had appeared on modern systems, updated the engine, and fixed minimap driver positions and several UI issues. It also brought the mod scene back to life — the newest and best mods are built for 1.6.

> **Why Patch 1.6?** The modding community split across the last two game versions. Season mods like the *2026 mod* and car-model packs like the *Single Seater Car Pack* are **1.6-only** — they crash on older versions. Older database series mods (e.g. the *Ultimate F1 Manager Mod Series*) are **1.53-only** — they declare themselves incompatible with 1.6. This guide is built around 1.6, the last version of the game.

## 1.2 Check Your Game Version

1. Open Steam → Library → right-click **Motorsport Manager** → **Properties** → **Betas** (or **Installed Files / Game Version**).
2. The current live branch is **Patch 1.6**. If you see **1.53** selected, switch to the live/default branch (or the 1.6 beta if that is how it is offered in your region).
3. Leave the game fully updated before installing mods.

> Older mods may ask you to roll back to **1.53** via this same menu. **Do not** do that for this modlist — every mod here requires 1.6.

## 1.3 Required DLC

All five DLCs are supported and worth owning; the modlist assumes at least the base game + **Create Your Own Team** (used by several personas):

| DLC | Released | Adds |
|-----|----------|------|
| Livery Pack | 1 Dec 2016 | Extra liveries for base-game teams |
| Create Your Own Team | 23 Feb 2017 | Design your own team from scratch (name, livery, HQ, sponsors, drivers) |
| GT Series | 23 Feb 2017 | A full GT championship layer with GT cars and rules |
| Challenge Pack | 21 Aug 2017 | Hand-crafted challenge scenarios with unique rules |
| Endurance Series | 1 Nov 2017 | Endurance racing: long races, night transitions, multi-driver cars |

## 1.4 Mod Tools

This project manages mods with the tools the Motorsport Manager community actually uses (the *F1M24 Mod Manager* is a tool for *F1 Manager 2024* and does **not** support this game):

### Steam Workshop (primary)
- Most mods install through **Steam Workshop**: open the [Motorsport Manager Workshop](https://steamcommunity.com/app/415200/workshop/), find the mod, and press **Subscribe**.
- After subscribing, launch the game and enable the mod in the **Steam Workshop** tab of the main menu. Some mods must be the **only** one enabled (they replace the game database) — the modlist tells you when.
- Workshop content is stored locally at `...\steamapps\workshop\content\415200\<mod_id>\`. Mods with extra files (like the *2026 mod*) point you into that folder.

### Unity Mod Manager (UMM) — for Nexus plugins
Graphical plugins (Enhanced Graphics, Extended Camera) and Rebirth: Redux-style DLL mods are managed with **Unity Mod Manager**:

1. Download **Unity Mod Manager** (the community standard UMM tool for Unity games).
2. Run it, select **Motorsport Manager** as the game, and point it at your install folder (`...\steamapps\common\Motorsport Manager`).
3. Drop mod archives into UMM's **Mods** tab, or manually place plugin folders in `...\Motorsport Manager\Mods\`.
4. In-game, open the UMM overlay with **Ctrl+F10** to toggle plugin options (e.g. Enhanced Graphics toggles).

### Manual file placement (database swaps)
Some mods replace game data files directly:
- `...\steamapps\common\Motorsport Manager\MM_Data\Resources.assets`
- `...\steamapps\common\Motorsport Manager\MM_Data\Managed\Assembly-CSharp.dll` (logic mods)

**Always back up the original files** before overwriting (copy them to a folder on your desktop). Steam → Properties → Installed Files → **Verify integrity of game files** restores the vanilla state if anything goes wrong.

## 1.5 Mod Hygiene

- **Database mods are mutually exclusive.** A season mod replaces the game's roster/calendar database. Enable exactly **one** season/overhaul mod at a time, and start a **new game** after switching.
- **Never mix 1.53 and 1.6 content.** 1.6-native 3D models crash a 1.53 install and vice versa. Unsubscribe 1.53-only items if you ever roll back.
- **New-game mods apply at career creation.** Most database mods do not affect existing saves.
- **Cosmetic mods are safe mid-save.** Liveries and logos activated in the in-game **Assets** tab can be toggled at any time.
- **Backup saves** before big installs: saves live in `%USERPROFILE%\AppData\LocalLow\Playsport Games\Motorsport Manager\Cloud\Saves`.
