#import "helpers.typ": *

=== Game Prep

This guide targets *X-Plane 12* version *12.4.3* (the "VR Update", released 2026-06-25). Install X-Plane 12 from Steam or directly from the Laminar Research store, let it finish its first-time setup, then launch it once to the main menu so the sim generates its folders and preference files.

1. Install *X-Plane 12* from Steam or the Laminar store and let it download completely.
2. Launch the sim once, all the way to the main menu, then quit.
3. Confirm the version line reads *12.4.3* (shown on the main menu / About screen). This is the version this entire guide — and every mod you add to it — is written against.

#callout("Note:", [
  Version numbers change whenever the sim updates. Every time X-Plane 12 downloads an update, re-check the version line. If it no longer reads 12.4.3, treat every mod in this guide as unverified until you re-check its page date (see *Version Compatibility* below). As of writing, 12.4.4 and 12.5.0 were still planned releases — plan around them the same way.
])

#callout("Tip:", [
  X-Plane 12 is a large download (tens of GB). Give it room on an SSD if you have one; scenery loading and ortho (see AutoOrtho in the Foundational chapter) benefit most from fast disks.
])

=== Where Things Live in X-Plane 12

X-Plane 12 keeps its world in one root folder. Learning this map makes every install step in this guide understandable:

+ `Aircraft/` — the aircraft library. Each aircraft is a subfolder with its `.acf` file, cockpit objects, sounds, and docs.
+ `Resources/plugins/` — where plugin folders go. Most of the foundational tools in this guide (AviTab, X-Camera, X-ATC-Chatter, openSAM, Better Pushback, and others) drop in here.
+ `Custom Scenery/` — where scenery packs and libraries live, plus the `scenery_packs.ini` file that decides their load order.
+ `Custom Data/` — navigation data (navdata/AIRAC cycles) that overrides the sim's default data. Navigraph writes here.
+ `Output/` — logs, preferences, and saved flight plans. `Log.txt` (sim root) is the log the manager can analyze.
+ *Steam vs direct:* a Steam install lives at `...\Steam\steamapps\common\X-Plane 12\`; a direct Laminar install lives wherever you chose at install time (often `D:\X-Plane 12\`). Both work identically — point the mod manager at whichever one you have.

#callout("Warning:", [
  Never install a plugin by unzipping the *contents* of its folder straight into `Resources\plugins` — each plugin needs its own subfolder there (e.g., `Resources\plugins\AviTab\`). Dropping loose files into the plugins folder breaks the sim's plugin loader. The mod manager handles this for you; when installing by hand, copy the folder, not the files.
])

=== Where Mods Come From

The two hubs used for this modlist's ecosystem, as supplied:

+ *X-Plane.org* — the long-standing community forums and store, with both free files and payware — https://forums.x-plane.org/ (store at https://store.x-plane.org/).
+ *X-Plane.to* — a modern hub focused on free mods, liveries, and add-ons (similar to Flightsim.to) — https://x-plane.to/.

Steam Workshop is not a major source for X-Plane 12. Whenever a mod card in this guide carries a URL, that URL is your source of truth; when it does not (yet), the card says so.

=== XFast Manager — the Mod Organizer

The organizer for this modlist is *XFast Manager*, an open-source (GPL-3.0) X-Plane addon installer and manager built with Tauri (Rust + Vue) by developer CCA3370 — #link("https://github.com/CCA3370/XFast-Manager")[github.com/CCA3370/XFast-Manager]. It ships for Windows 10/11 (x64), macOS 10.15+ (Intel and Apple Silicon, universal builds), and Linux (x64; GTK3 + WebKit2GTK required).

Its advertised feature set, straight from the project README:

+ *Install in seconds* — drag and drop any addon file, archive, or folder.
+ *Zero guesswork* — the app identifies addon types and puts them in the right place.
+ *Stay organized* — manage aircraft, plugins, navdata, scenery, and liveries in one view.
+ *Safe and reversible* — backups, verification, and clear conflict warnings.
+ *Smart scenery sorting* — keeps the scenery load order clean and stable.
+ *Update awareness* — see update availability at a glance.
+ *X-Plane log analysis* — a built-in view for reading the sim's `Log.txt`.
+ *Polished UI* — light/dark themes, English/Chinese support, and (on Windows) a right-click install menu you can enable in Settings.
+ *Archive support* — installs directly from ZIP, 7z, or RAR, or from folders, without manual extraction.

#callout("Note:", [
  Facts about XFast Manager in this chapter (features, versions, asset names) come from the project's GitHub README and release notes, verified 2026-08-05. The latest release at the time of writing is *v1.2.5* (2026-05-31). If a newer release exists, prefer it — the steps below do not change.
])

=== Installing XFast Manager

Open the #link("https://github.com/CCA3370/XFast-Manager/releases")[releases page] and download one file for your system:

+ *Windows* — recommended: `XFast-Manager-<version>-windows-setup.msi` (an installer). Prefer the `.msi` for a normal install; if your browser blocks `.msi`, use the `windows-setup.zip` (same installer inside). A `windows-portable.zip` is also offered if you want a no-install copy.
+ *macOS* — `XFast-Manager-<version>-macos-universal.zip` (works on both Apple Silicon and Intel Macs).
+ *Linux* — `XFast-Manager-<version>-linux-x64.AppImage` for most distributions, or the `.deb` / `.rpm` / Arch `tar.gz` packages for those systems.

Run the installer (Windows/macOS) or launch the AppImage/binary (Linux — install the `gtk3` and `webkit2gtk-4.1` packages if it does not start). The app does not need to live next to X-Plane 12; it only needs to know where the sim is.

=== First Launch & Selecting the X-Plane Folder

On first launch, XFast Manager asks you to select your X-Plane folder. The app manages everything through that one root folder:

1. Confirm the folder it is pointed at. For Steam that is `...\Steam\steamapps\common\X-Plane 12\`; for a direct Laminar install, the folder you chose at install time.
2. Confirm the main views make sense: aircraft, plugins, navdata, scenery, and liveries should all populate as the app scans the folder. (Scanning may take a moment on large installs.)
3. Set the theme you like (light/dark) and enable the Windows right-click install menu in Settings if you want it.

#callout("Note:", [
  The README describes selecting the X-Plane folder manually on first launch. If your installed version also offers automatic detection, use whichever works — the requirement is only that the app points at the *root* of the X-Plane 12 folder, not a subfolder inside it.
])

=== Installing Mods

Every mod in this guide is listed as a *mod card* in its chapter (the Foundational chapter for the base plugins, per-wave chapters for wave content), and every card carries the fields this project's rules demand. To bring a mod into XFast Manager:

+ *Drag & drop* — download the mod as `.zip`, `.7z`, or `.rar` (or leave it as a folder) and drop it onto the XFast Manager window. The app identifies the addon type and puts it in the right place — aircraft to `Aircraft/`, plugins to `Resources/plugins/`, scenery to `Custom Scenery/`, navdata to `Custom Data/`, liveries to the matching aircraft's `liveries/` folder.
+ *Protected archives* — if the archive asks for a password, provide it when prompted.
+ *Conflict resolution* — when a file already exists, the app offers a clean install or an overwrite; enable verification for safety. Choose deliberately, and record any overlap you care about in `conflicts-mods.md` (that file is deliberately kept out of the PDF so you can maintain it freely).

#callout("Warning:", [
  Close X-Plane 12 during installs. The sim holds file locks on its folders while running, and the README's own troubleshooting section lists permission failures from exactly this. Quit the sim, install, then relaunch.
])

=== Managing Mods

+ *One view for everything* — aircraft, plugins, navdata, scenery, and liveries are managed from the same interface with quick actions (enable/disable-style housekeeping, open folder, remove).
+ *Update availability* — the manager shows at a glance which installed items have newer versions available; check it after every sim update.
+ *Log analysis* — after a session, use the log-analysis view on `Log.txt` to see what loaded (or failed to load). This is the fastest way to confirm a plugin actually started.

=== Scenery Load Order

X-Plane 12 reads `Custom Scenery/scenery_packs.ini` top-to-bottom: entries higher in the file draw on top of entries lower down. The general order that works for this guide:

1. *Airports* (payware and freeware airports first).
2. *Overlays* (things that must sit on top of terrain: roads, forests, objects).
3. *Ortho / mesh* (AutoOrtho output and ortho tiles — they must sit *below* airports and overlays or they bury them).
4. *Libraries* (OpenSceneryX-style shared object libraries, when used) and the sim's global scenery at the very bottom.

XFast Manager's *smart sorting* maintains this order for you. Treat it as the default; if you ever hand-edit the `.ini` (or reinstall the sim and lose it), rebuild it with the manager and re-verify the order above.

#callout("Warning:", [
  An airport hidden *below* an ortho tile in the `.ini` will not appear — it is one of the most common "my airport vanished" causes. If an airport or library disappears, check the `.ini` order before anything else.
])

=== Backup & Restore

+ *Mods* — XFast Manager's backup support covers the managed addons themselves (backups plus verification when installing). Keep the mod cards in this guide as the human-readable record: each card's fields are enough to re-install everything.
+ *Saves & preferences* — X-Plane 12 keeps preferences and controller profiles under `Output/preferences/` in the sim root; copy that folder aside before switching waves or updating several mods at once.

=== Version Compatibility

This guide is written for version *12.4.3*, and every mod in it must be compatible with that version. The heuristic for judging compatibility, when a specific mod version is unknown, is the *patch / release date*:

+ A mod whose page shows it was updated close to the release of 12.4.3 (2026-06-25) is the safest bet — it was most recently checked against the current sim.
+ A mod that has not been touched in months may still work fine, but it is riskier.
+ Dependencies matter as much as dates: a mod that requires something you do not have (a library, a subscription, a specific other plugin) is incompatible no matter how fresh it is.

#callout("Tip:", [
  Read each mod's own page before adding it — the page's last-updated date and listed requirements are the signals to trust. And whenever the sim updates, re-run the manager's update check and re-read the affected mod pages: a new sim build can break plugins that were fine the day before.
])

=== Launch & Verify

1. Start X-Plane 12.
2. Check the version line reads 12.4.3.
3. Confirm the expected plugins loaded (the sim's Plugins menu lists loaded plugins; the manager's log analysis confirms it too).
4. Fly the wave's opening flight and confirm the mods behave the way the guide describes — in-sim behavior is the ground truth.

#callout("Tip:", [
  Do not trust a mod list from memory. XFast Manager's views are the authoritative picture of what is installed — one glance before each session tells you the wave is set up right.
])

=== Per-Wave Switching

Each wave is its own new-game setup with its own aircraft and mod subset. Switching waves is a manager chore, not a reinstall:

1. Open XFast Manager and bring up the wave's loadout (the wave chapter's mod cards are the checklist).
2. Enable that wave's content and keep the Foundational plugins (the base tools from the Foundational chapter) available — they are installed once and used across all waves.
3. Start the wave's flight with its aircraft selected.

#callout("Warning:", [
  The wrong mods break the wave design. If content intended for a later wave is carried into an earlier one, the intended progression is lost and the sim behaves differently than the guide describes. Review what is active before each new wave.
])

#callout("Tip:", [
  Because the Foundational plugins never move, per-wave switching only ever touches wave content. If the manager's version supports named save states or profiles for the mod set, use them; otherwise the wave cards are the checklist.
])
