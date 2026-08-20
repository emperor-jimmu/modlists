# Installation Guide

## Prerequisites

- A legitimate copy of GTA IV — Steam "Grand Theft Auto IV: The Complete Edition" (v1.2.0.30+), Rockstar Games Launcher, or a retail copy.
- Target patch: **1.0.8.0** (the modlist's compatibility target).
- ~20 GB free disk space.
- Windows 7 or later (Windows 10/11 recommended).

## Step 1: Install GTA IV

Install the game normally (Steam or Rockstar Games Launcher). The Complete Edition ships as 1.2.0.30+; the modlist targets **1.0.8.0**, so most players downgrade first (Step 2).

## Step 2: Downgrade to 1.0.8.0 (Complete Edition owners)

Use the [GTA IV Downgrader](https://github.com/ClonkAndre/GTAIVDowngrader) by ClonkAndre (v2.2):

1. Download the latest release from [GitHub](https://github.com/ClonkAndre/GTAIVDowngrader/releases) (also on [Nexus Mods](https://www.nexusmods.com/gta4/mods/516) and [GTAForums](https://gtaforums.com/topic/976691-gta-iv-downgrader)).
2. Run the tool and point it at your GTA IV installation.
3. In the version-selection step, choose **1.0.8.0** (selected by default).
4. Recommended: enable the **radio downgrade** to restore the songs cut from the Complete Edition (see Wave 1 → Audio).
5. Complete the downgrade. The tool offers automatic backup and an optional `commandline.txt`.

If you already own a retail copy patched to 1.0.8.0, skip this step.

## Step 3: FusionFix (required for both waves)

[FusionFix](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix) by ThirteenAG (**v5.0.1**) is the base compatibility, bug-fix, and QoL framework.

> **Important:** FusionFix fully supports the Complete Edition. On **1.0.8.0** it additionally requires the **Legacy Addon**.

1. Download `GTAIV.EFLC.FusionFix.zip` from the [latest release](https://github.com/ThirteenAG/GTAIV.EFLC.FusionFix/releases/latest).
2. Download `GTAIV.EFLC.FusionFixLegacyAddon.zip` from the same release page.
3. Extract the main archive to your GTA IV root folder (where the game executable lives), overwriting when prompted.
4. Extract the Legacy Addon to the same folder, overwriting when prompted.
5. Launch the game once to verify.

FusionFix bundles the [Ultimate ASI Loader](https://github.com/ThirteenAG/Ultimate-ASI-Loader) (ThirteenAG), so no separate ASI loader is needed.

### Verifying FusionFix is working

- Launch GTA IV, pause, and open **Settings**. A new FusionFix options screen (Display / Graphics / Game / Audio / Controls) should be present.
- Quick checks: the **FOV** slider and the **FPS Limiter** are both present and functional.

## Step 4: Mod Installation Order

When installing mods, follow this order to avoid conflicts:

1. **FusionFix** (+ Legacy Addon) — always first.
2. **Script frameworks** — IV-SDK .NET (Wave 1) and any dependency mods.
3. **Graphics mods** — texture packs, shaders (applied last to avoid overwrites).
4. **Content mods** — vehicles, weapons, map additions.
5. **Mechanics mods** — physics, AI, damage models.
6. **Audio mods** — radio, sound effects.
7. **Configuration edits** — `.ini` and `.xml` tweaks.

## Step 5: First Launch

1. Launch the game executable.
2. Open **Graphics** settings and set:
   - Resolution: your monitor's native resolution.
   - Texture Quality: High.
   - View Distance: 30–40 (adjust for performance).
3. Open **Controls** and configure bindings to preference.
4. Start a new game to verify everything works.

## Troubleshooting

| Problem | Solution |
|---------|----------|
| Game crashes on startup | Confirm FusionFix **and** the Legacy Addon are installed (1.0.8.0 needs both). Check `Documents\Rockstar Games\GTA IV\` for logs. |
| No FusionFix menu in Settings | The Legacy Addon is missing, or the wrong game version was selected during downgrade. |
| Black screen on launch | Try windowed mode (`-windowed` launch parameter). |
| Low FPS | Reduce View Distance and Shadow Quality; lower the FusionFix FPS limiter. |
| Missing textures | Set Texture Quality to High or Medium. |
| Controls not working | Verify bindings in Settings → Controls, then reinstall FusionFix. |
