#import "helpers.typ": *

=== Game Prep

This guide targets *No Man's Sky* version *6.45.1* on *Steam*. Before anything else, install the game from Steam and let it finish its first-time setup.

1. Install *No Man's Sky* from the Steam store and let it download completely.
2. Launch the game once, all the way to the main menu, so the game generates its files and folders.
3. On the main menu, confirm the version line reads *6.45.1*. This is the version the entire guide — and every mod you add to it — is written against.

#callout("Note:", [
  Version numbers change whenever the game updates. Every time No Man's Sky downloads an update, re-check the main menu and confirm it still reads 6.45.1. If it does not, treat the mods in this guide as unverified until you re-check their dates (see Version Compatibility below).
])

#callout("Tip:", [
  Mods for No Man's Sky are `.pak` files. The game loads them from the `MODS` folder inside the install directory: `...\No Man's Sky\GAMEDATA\PCBANKS\MODS\`. You will rarely touch this folder by hand, because the manager in this guide handles it for you — but knowing where mods live makes every troubleshooting step below understandable.
])

=== Singularity — the Mod Manager

The organizer for this modlist is *Singularity*, an open-source, lightweight Windows mod manager built specifically for No Man's Sky (Tauri v2, GPL-3.0) by the developer Syzzle07 — #link("https://github.com/Syzzle07/SingularityMM")[github.com/Syzzle07/SingularityMM].

Its advertised feature set, straight from the project page:

+ *Automatic game detection* — finds your Steam, GOG, or Game Pass PC installation of No Man's Sky.
+ *Mod management* — enable, disable, download, install, and set the priority of your mods.
+ *Mod update check* — check for updates to your installed mods.
+ *Drag & drop installation* — install mods by dropping `.zip`, `.rar`, or `.7z` files onto the window.
+ *Nexus Mods integration with SSO* — link your Nexus account and download with the "Mod Manager Download" button; Premium accounts can also browse and download inside the manager.
+ *Profiles* — save named mod profiles for different play styles.

The project is distributed through GitHub Releases. The latest release at the time of writing is *v2.2.8* (2026-02-15) — #link("https://github.com/Syzzle07/SingularityMM/releases")[github.com/Syzzle07/SingularityMM/releases].

#callout("Note:", [
  Facts about Singularity in this chapter (features, versions, release dates) come from the project's GitHub page and release notes, verified 2026-08-05. If you ever see a newer release, prefer it — the steps below do not change.
])

=== Installing Singularity

1. Open the releases page linked above and download the latest *setup* installer (`Singularity_<version>_x64-setup.exe`). A portable `.exe` is also offered if you prefer not to install.
2. Run the setup and follow the prompts. Install to any location you like — it does not need to live next to the game.
3. The only runtime dependency is *WebView2*, which ships with updated Windows 10 and Windows 11. If the app refuses to start, install WebView2 from #link("https://developer.microsoft.com/en-us/microsoft-edge/webview2")[the Microsoft WebView2 page] and retry.
4. Launch Singularity.

#callout("Tip:", [
  Prefer the installer over the portable build for a first-time setup: it registers the app normally and gives you Start-menu access. The portable build is a good fallback if you want the manager on a USB stick or another drive.
])

=== First Launch & Game Detection

On first launch, Singularity scans for a No Man's Sky installation.

1. Confirm it detected your Steam copy. The detection covers Steam, GOG, and Game Pass PC installs automatically.
2. If detection fails, point it at your install manually: find the folder that contains `GAMEDATA` — for a default Steam install that is `...\Steam\steamapps\common\No Man's Sky\`.
3. Confirm the mods folder the manager reports: it should resolve to `...\No Man's Sky\GAMEDATA\PCBANKS\MODS\`.

#callout("Warning:", [
  The mods folder must be the one *inside* `GAMEDATA\PCBANKS`. Dropping mods anywhere else does nothing. If you are not sure where Steam put the game, right-click *No Man's Sky* in your Steam library → *Manage* → *Browse local files*.
])

#callout("Note:", [
  No Man's Sky ignores its `MODS` folder unless the switch file `enablemods.txt` exists inside `PCBANKS` — a long-standing requirement of the game itself. Singularity's setup handles the game folder, but if your mods load as vanilla, this file is the first thing to check: it must exist in `PCBANKS` (an empty file with exactly that name is enough). If the manager already created it, leave it alone.
])

=== The Aetherial Purity Profile

Each wave of this guide is its own new game with its own mod subset, and Singularity's *Profiles* feature is exactly what maps to that structure.

1. Create a profile and name it *Aetherial Purity*.
2. Decide on your per-wave organisation: either one profile per wave (0, 1, 2) or a single profile that you switch by enabling/disabling mods. Either works; the per-wave switching section below assumes you can tell at a glance which mods belong to which wave, so pick whichever you can keep tidy.
3. Wave 0 carries the quality-of-life base that stays active throughout. Content mods stay scoped per wave and are only enabled when that wave's design calls for them.

=== Installing Mods

Every mod in this guide is listed as a *mod card* in its wave's Modlist section, and every card carries the mod's page URL. To bring a mod into Singularity, any of these works:

+ *Drag & drop* — download the mod as `.zip`, `.rar`, or `.7z` and drop the archive onto the Singularity window.
+ *Nexus Mods* — with your Nexus account linked (SSO), use the mod page's "Mod Manager Download" button; Singularity receives it directly. Premium users can also browse and download inside the manager.
+ *Manual* — download the archive yourself and add it through the app.

#callout("Note:", [
  In this release of the guide the mod cards are pending addition — the mods themselves come from you, and the cards are placeholders waiting for your links. The moment a card has a URL, the installation flow above is all it takes to bring that mod in.
])

=== Managing Mods

+ *Enable / disable* — the per-mod toggle is how wave switching works. A disabled mod is not loaded by the game.
+ *Update check* — after every game update, run the update check. It tells you which installed mods have newer versions; a mod built for an older game build is the most common breakage.
+ *Priority* — see Load Order below.

=== Load Order & Priorities

When two mods change the same game file, only one result can win. Singularity's *priority* ordering decides which: higher priority wins for overlapping content.

+ Mods that are independent of each other do not care about order.
+ Mods that both touch the same system *do* — check each mod card's Notes for any stated order requirement, and record what you find in `conflicts-mods.md` (that file is deliberately kept out of the PDF so you can maintain it freely).
+ When in doubt, start a new game and confirm the two mods' effects both appear as their pages describe.

#callout("Warning:", [
  Do not stack mods that edit the same feature "to see what happens." The result is usually the losing mod silently doing nothing, or a broken save-shaped surprise. One mod per feature, and let priority resolve the rare overlap.
])

=== Backup & Restore

+ *Saves* — No Man's Sky keeps its saves under `%APPDATA%\HelloGames\NMS\` on Windows, and Steam Cloud syncs them. Before switching waves or updating several mods at once, copy that folder aside.
+ *Mod set* — Singularity manages the installed mods themselves. If you ever want to rebuild the list from scratch, the mod cards in this guide are the record: each card's URL is enough to re-install everything.

=== Version Compatibility

This guide is written for version *6.45.1*, and every mod in it must be compatible with that version. The heuristic for judging compatibility, when a specific mod version is unknown, is the *patch / release date*:

+ A mod whose page shows it was updated close to the release of 6.45.1 is the safest bet — it was most recently checked against the current game.
+ A mod that has not been touched in months may still work fine, but it is riskier.
+ Dependencies matter as much as dates: a mod that requires something you do not have is incompatible no matter how fresh it is.

#callout("Tip:", [
  Read each mod's own page before adding it — the page's last-updated date and listed requirements are the signals to trust, not titles or badges elsewhere. And whenever the game updates, re-run the update check and re-read the affected mod pages: a new game build can break mods that were fine the day before.
])

=== Launch & Verify

1. Start the game from Steam.
2. Check the main menu version line reads 6.45.1.
3. Start a *new* game for the wave you intend to play.
4. Play the opening stretch and confirm the mods behave the way the wave guide describes — No Man's Sky has no in-game mod list, so in-game behavior is the ground truth.

#callout("Tip:", [
  Do not trust a mod list from memory. Singularity's mod list is the authoritative view of what is enabled — one glance before each session tells you the wave is set up right.
])

=== Per-Wave Switching

Each wave is its own new game with its own mod subset. Switching is a menu chore, not a reinstall:

1. Open Singularity and switch to the profile (or mod subset) for the next wave.
2. Enable that wave's mods and disable the previous wave's content mods. Wave 0's UI/QoL base stays on throughout.
3. Start a new game for the wave.

#callout("Warning:", [
  The wrong mods break the wave design. If content mods from one wave are carried into a wave that should not have them, the intended progression is lost and the game plays differently than the guide describes. Review the enabled list before starting each new game.
])

#callout("Tip:", [
  Because profiles remember the exact set and priorities of mods, switching waves never requires uninstalling anything. The profile or the enable/disable list is the entire workflow.
])
