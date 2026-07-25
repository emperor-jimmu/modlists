== Before You Begin

Arma 3 version 2.20 (June 17, 2025) or later is required. Verify your game is up to date through Steam before proceeding.

== Mod Installation via Official Launcher

All mods are installed through the Arma 3 Official Launcher via Steam Workshop subscriptions. There are no external download links or manual file placements.

#show: block.with(fill: rgb("f5f5f5"), inset: 12pt, radius: 4pt)

*Step 1 — Subscribe to Mods*
Visit each mod's Steam Workshop page and click *Subscribe*. The mod will download automatically through Steam. You can verify subscription status on the mod's Workshop page — the *Subscribe* button will change to *Subscribed*.

*Step 2 — Open the Official Launcher*
From your Steam Library, click *Play* on Arma 3. When the Launcher window appears, select the *Mods* tab.

*Step 3 — Enable the Mods*
Under *Available Mods*, you will see your subscribed mods listed. Check the box next to each mod to activate it. The launcher will automatically resolve the load order — you do not need to reorder mods manually.

*Step 4 — Verify Dependencies*
If a mod requires another mod (e.g., CBA_A3), that dependency must also be subscribed and activated. The launcher will warn you if a dependency is missing. The full dependency tree for each mod is listed in the mod entry.

*Step 5 — Launch*
Click *Play* to start Arma 3 with the selected mods loaded. The game will display the active mod list on the main menu screen — verify all expected mods appear.

== Preset Profiles

The Official Launcher supports saving mod presets. Create a separate preset for each wave:

1. Activate the mods for the current wave
2. Click the *Preset* dropdown in the Mods tab
3. Select *Save As...*
4. Name it after the wave (e.g., `Fidelitas Suprema — Wave 1`)
5. To switch waves, load the desired preset from the dropdown

== Troubleshooting

*Mod not appearing in launcher*: Restart Steam. If the mod finished downloading while the launcher was open, it may not show until the launcher restarts.

*Game crashes on launch*: Disable all mods, then enable them one by one to identify the culprit. Check `conflicts-mods.md` in the project root.

*Performance issues*: Too many large content mods can degrade performance. Consider the recommended mod count per wave. If you are below the target and still struggling, check your system against Arma 3's recommended specifications.

*Version mismatch*: If a mod was updated after this guide was published, it may introduce incompatibilities. Report it via your project's issue tracker.
