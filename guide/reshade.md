# Reshade for Farming Simulator 25

## What is Reshade?

Reshade is a generic post-processing injector that enhances game visuals — ambient occlusion, depth of field, color correction, sharpening, SMAA anti-aliasing, and more. It supports Direct3D 9/10/11/12, OpenGL, and Vulkan.

- **Current version**: 6.7.3 (released February 28, 2026)
- **Source**: [reshade.me](https://reshade.me)
- **Open source**: BSD 3-clause license

## Installation

1. Download **ReShade_Setup_6.7.3.exe** from [reshade.me](https://reshade.me/)
2. Run the setup tool
3. Click **Select game** and browse to `FarmingSimulator2025.exe` in your FS25 install folder
4. Select the rendering API — for FS25, choose **DirectX 10/11/12**
5. When prompted for effects, choose **Standard effects** (recommended for FS25)
6. Click through the remaining setup steps
7. Launch Farming Simulator 25

On first game launch, the ReShade overlay appears. Follow the tutorial or skip it. You can open the overlay at any time by pressing **Home** (default — this keybind can be changed in ReShade settings).

## Loading a Preset

Presets are `.ini` files that define which effects are active and their settings. To use one:

1. Download the preset `.ini` file
2. Place it in the same folder as `FarmingSimulator2025.exe`
3. In-game, press **Home** to open the overlay
4. Click the preset dropdown at the top and select the preset file
5. ReShade applies all the effects automatically

## Performance Tips

- Reduce the render scale in ReShade settings if you experience FPS drops
- Turn off heavy effects during gameplay (Depth of Field, Bloom) — reserve them for screenshots
- Use **Performance Mode** in ReShade settings for everyday gameplay
- The default effects package is lightweight; only add effects you'll use

## Preset Sources

- [Nexus Mods — FS25 Visuals & Graphics](https://www.nexusmods.com/farmingsimulator2025/mods/categories/5/) (filter for "reshade")
- FS25 modding Discord communities
- Direct links provided in each wave's Visuals & Reshade category file

## Wave-Specific Presets

The same Reshade installation works for all three waves — you only install it once. Each wave has its own recommended preset, listed in the wave's `02-visuals-reshade.md` file. To switch presets, simply select a different `.ini` file in the ReShade overlay.

## Troubleshooting

- **Overlay doesn't appear**: Check the ReShade log in the game folder. Ensure you selected the correct graphics API during installation.
- **FPS drops significantly**: Disable Depth of Field, MXAO, and RTGI effects first — these are the most expensive.
- **Preset not showing in dropdown**: The `.ini` file must be in the same folder as the game executable. Renamed files must keep the `.ini` extension.
- **Multiplayer**: ReShade automatically disables depth access in multiplayer to prevent exploitation. Visual effects that don't need depth data (color correction, sharpening) still work.
