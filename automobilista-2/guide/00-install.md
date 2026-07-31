# Installation & Setup

## System Requirements

Before installing anything, verify your system meets the minimum requirements for Automobilista 2 V1.6+:

| Component | Minimum | Recommended |
|-----------|---------|-------------|
| OS | Windows 10 64-bit | Windows 11 64-bit |
| CPU | Quad-Core @ 3.0 GHz | Hexa-Core @ 3.5 GHz+ |
| RAM | 8 GB | 16 GB |
| GPU | 4 GB VRAM (DX11) | 8 GB VRAM (DX12) |
| Storage | 120 GB SSD | 120 GB NVMe SSD |
| Platform | Steam | Steam |

AMS2 is CPU-intensive during large-grid races and GPU-intensive at high resolutions. An SSD is strongly recommended — loading times on HDD are significantly longer.

## Step 1: Install Automobilista 2

Install AMS2 through Steam:

1. Open Steam, search for **Automobilista 2**
2. Click **Install** and select your SSD game drive
3. Wait for the ~100 GB download to complete
4. Verify the game is updated to **V1.6 or later** (right-click in Library → Properties → Updates)
5. Launch the game once to generate config files, then exit

This initial launch creates the `Documents/Automobilista 2` folder where all settings, replays, and user data are stored.

## Step 2: DLC Recommendations

AMS2 has extensive DLC. The following table maps each wave to its required and recommended DLC — required DLC is mandatory for some mods in that wave.

| Wave | Required DLC | Recommended DLC |
|------|-------------|-----------------|
| 0 | None (base game) | None |
| 1 | None | Racin' USA (Pt 1, 2, 3) |
| 2 | Racin' USA Pt 3, Brazilian Stock Car Pro Series | Endurance Pack (Pt 1, 2) |
| 3 | Endurance Pack Pt 1 & 2, Formula HiTech | Historical Track Pack, Premium Expansion Packs |

If you plan to complete all waves, consider the **Season Pass** or **Premium Track Pack** bundles for the best value. Each wave chapter lists its specific DLC dependencies.

## Step 3: Install AMS2 Content Manager

The AMS2 Content Manager (AMS2CM) is the essential tool for managing mods, bootfiles, skins, and AI configurations.

### Download & Install

1. Download from: [AMS2 Content Manager on OverTake.gg](https://www.overtake.gg/downloads/automobilista-2-content-manager.59727/)
2. Extract the archive to a permanent folder (e.g., `C:\Tools\AMS2CM` — do not leave it in Downloads)
3. Run `AMS2CM.exe`
4. On first launch, point it to your AMS2 installation directory

### Key Features

| Feature | Purpose |
|---------|---------|
| Bootfiles | Manage custom AI, physics, and camera presets |
| Custom AI | Install and configure community-made AI lineups and talent files |
| Skins | Import, preview, and activate custom car liveries |
| Backup/Restore | Full backup of modded files with restore capability |

### AMS2CM Workflow

1. **Adding skins**: Download livery `.zip` files → drag into AMS2CM Skins tab → assign to a car class → activate
2. **Bootfiles**: Download bootfile `.zip` → Import in Bootfiles tab → select and enable
3. **Enabling mods**: Use the Mods tab to toggle individual mods on/off
4. **Launching AMS2**: Always launch through AMS2CM when using mods — it ensures bootfiles and mods are properly injected

Always launch AMS2 through AMS2CM once you start using mods (Wave 1+). The vanilla Steam launch bypasses mod loading.

## Step 4: SimHub (Optional, Wave 1+)

SimHub is a dashboard and telemetry overlay tool that enhances the sim racing experience.

1. Download from [simhubdash.com](https://www.simhubdash.com/)
2. Install and launch — it will auto-detect AMS2
3. Browse the built-in dashboards and download community dashboards from the OverTake.gg downloads section
4. SimHub works out of the box with AMS2 — no additional configuration required for basic dashboards

SimHub is optional for Wave 0 but recommended starting Wave 1 when you begin racing with HUD elements.

## Step 5: Initial Game Configuration

Launch AMS2 and configure the following settings. These settings are optimized for beginners and will be adjusted as you progress.

### Controls

- **Wheel Rotation**: Set to your wheel's native rotation (typically 540° for formula cars, 900° for GT)
- **Force Feedback** → Profile: **Default+** — good starting point for most wheels
- **Force Feedback** → Gain: **65–75** — adjust to preference; avoid clipping

### Graphics

- **Resolution**: Set to your monitor's native resolution
- **Preset**: **Medium** — ensure stable 60+ FPS during full-grid races
- **Anti-Aliasing**: MSAA **Medium** (2x–4x)
- **VSync**: **Off** unless you experience screen tearing

### Assists

AMS2 offers a comprehensive assists system. Start with these settings:

| Assist | Setting | Notes |
|--------|---------|-------|
| Steering Assist | Low | Counter-steering help |
| Braking Assist | Low | Prevents lock-ups while learning |
| Traction Control | High | Prevents wheelspin |
| Stability Control | On | Keeps car stable |
| ABS | High | Prevents lock-ups |
| Auto Gears | On | Automatic shifting |
| Racing Line | Full | Braking points + line |
| Damage | Visual Only | No mechanical damage |

As you progress through waves, gradually reduce assists. By Wave 3 you should aim for:
- Steering Assist: **Off**
- Braking Assist: **Off**
- Traction Control: **Authentic** (per-car)
- ABS: **Authentic** (per-car)
- Auto Gears: **Off** (manual sequential)
- Racing Line: **Corners Only** or **Off**
- Damage: **Full**

### Audio

- **Engine**: 100%
- **Tyres**: 80%
- **Opponent Cars**: 60%
- **Surface Sounds**: 80%

Tyre sounds are essential feedback for understanding grip levels — don't set them too low.

## Step 6: Verify Setup

After configuration, verify everything works:

1. **Launch AMS2 via AMS2CM** (or Steam if not using mods yet)
2. Select **Test Day** mode
3. Track: **Velo Citta** (short, flat, good for baseline testing)
4. Car: **Formula Trainer** (lightweight, responsive, easy to drive)
5. Load into the session and verify:
   - Controls respond correctly (wheel, pedals, buttons)
   - Force feedback is present and not clipping
   - FPS is stable at 60+ (check with Steam overlay or external tool)
   - Audio levels are balanced

If you encounter issues, revisit the Controls and Graphics sections. The AMS2 community forums on [Reiza Studios' website](https://forum.reizastudios.com/) are also excellent resources.

---

**Next:** [Wave 0 — Rookie License](01-wave-0-rookie.md)
