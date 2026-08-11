// 10-installation.typ — G.A.M.M.A Protocol: Anomaly 1.5.3 then GAMMA.
#import "theme.typ": *

= Installation

_Everything you need to get from a clean Windows machine to a running GAMMA game: first a fresh S.T.A.L.K.E.R. Anomaly 1.5.3, then the GAMMA modpack on top of it._

#info[
  Two installs, in order: *1) Anomaly 1.5.3* — the standalone base game, free — and *2) GAMMA* — the modpack, assembled by its own launcher on top of Anomaly. Do not reorder or skip: GAMMA requires a fresh, untouched Anomaly 1.5.3.
]

== Part 1 — S.T.A.L.K.E.R. Anomaly 1.5.3

Anomaly is a free, *standalone* modification of the original STALKER trilogy: it does not require owning _Shadow of Chernobyl_, _Clear Sky_ or _Call of Pripyat_, and it installs completely independently of them. Version *1.5.3* is the current release and the only version GAMMA supports.

=== What you need

- Windows 10 or 11 (64-bit).
- Roughly *30 GB* of free disk space for Anomaly itself.
- *7-Zip* (7-zip.org) to extract the download — the built-in Windows archive tool can fail on these archives.
- No STALKER game ownership required.

=== Step 1 — Download

1. Open the official ModDB page: #link("https://www.moddb.com/mods/stalker-anomaly")[moddb.com/mods/stalker-anomaly].
2. Open the *Files* tab and download the *Anomaly 1.5.3* release — a single `.7z` archive of roughly 7–8 GB.
3. Download only from the official page. Unofficial mirrors and "repacks" are a common source of broken or fake installs.

=== Step 2 — Create the install folder

Create a clean folder for the game, for example `C:\Games\Anomaly`.

#warn[
  Do *not* install into `Program Files`, `Documents`, `Desktop`, OneDrive folders or any user-profile path. Anomaly (and later GAMMA) writes saves, logs and configs around the install; protected, permission-restricted or synced locations cause crashes and save errors.
]

=== Step 3 — Extract

- Right-click the downloaded `.7z` → *7-Zip → Extract Here* into `C:\Games\Anomaly`.
- When finished, `AnomalyLauncher.exe` must sit at the top level of that folder — not inside a nested subfolder.

=== Step 4 — First launch and sanity check

1. Run `AnomalyLauncher.exe`.
2. In the launcher, pick your *renderer* (`DX10` or `DX11` — try DX11 first on modern hardware), resolution, and fullscreen or windowed mode.
3. Click *Launch*.
4. From the main menu, start a quick *New Game* and play for a minute or two to confirm everything runs.

=== Done — Anomaly is installed

Leave this install untouched from here on. GAMMA expects a *fresh, unmodified* Anomaly — no addons, no manual file edits.

== Part 2 — GAMMA

G.A.M.M.A. ("Grok's / Grokitach's Automated Modular Modpack for Anomaly") is a curated modpack of roughly *400 mods* that turns Anomaly into a hardcore survival sim. It is not shipped as a single mod file: a dedicated *GAMMA launcher* downloads and assembles the whole pack into its own Mod Organizer 2 (MO2) instance.

GAMMA updates frequently — the current release is *0.9.5* (May 2026); 0.9.3 shipped December 2024. Always check the official channels for the current version before installing.

=== Prerequisites

- A *fresh, untouched Anomaly 1.5.3* (Part 1).
- *150 GB of free disk space minimum* — 175–200 GB recommended. The final install is roughly 80–120 GB, but the installer needs extra room for downloads and extraction on top of that.
- *7-Zip* — the GAMMA installer relies on it; WinRAR and the Windows archive manager are known to cause extraction errors.
- .NET Framework 3.5, the latest DirectX, and the latest *Visual C++ x64 Redistributable* (Windows Update or the Microsoft download pages).
- Windows 10/11 64-bit and a stable internet connection — the installer downloads tens of gigabytes.

=== Folder plan

Use two *separate* folders, for example:

- Anomaly: `C:\Games\Anomaly`
- GAMMA: `C:\Games\GAMMA`

#warn[
  Keep the folders separate — do not place one inside the other. Avoid `Documents`, `Desktop` and user-profile paths entirely. The installer moves and renames folders during setup, so nothing may be locked, protected or cloud-synced.
]

=== Antivirus exclusions

Add both folders to your antivirus exclusions, or pause real-time protection during the install. Windows Defender: *Settings → Privacy & Security → Windows Security → Virus & threat protection → Manage settings → Exclusions → Add a folder* — add `C:\Games\Anomaly` and `C:\Games\GAMMA`.

#tip[
  GAMMA writes hundreds of mod files in rapid succession; AV scanning mid-install is the \#1 cause of "installer hangs" and corrupt installs.
]

=== Step 1 — Get the GAMMA installer

GAMMA is distributed through its own community channels — there is no ModDB download page for the pack itself:

- Official *GAMMA Discord*: #link("https://discord.com/invite/stalker-gamma")[discord.com/invite/stalker-gamma] — the pinned messages of the installation/announcements channels hold the current installer.
- Official *GitHub wiki*: #link("https://github.com/Grokitach/Stalker_GAMMA")[github.com/Grokitach/Stalker_GAMMA] — step-by-step installation guide and links, if you prefer not to use Discord.

#warn[
  Never download "GAMMA repacks" from third-party sites — they are outdated, broken, or worse. Only the files linked from the official Discord or GitHub wiki are supported.
]

=== Step 2 — Run the installer

1. Launch the downloaded GAMMA installer.
2. Point it at your *Anomaly 1.5.3* installation folder (`C:\Games\Anomaly`).
3. Choose the GAMMA folder (`C:\Games\GAMMA`) and let it run.
4. The installer downloads and assembles the modpack — this is the long step: from about an hour on fast connections to several hours on slower ones. Let it finish completely; do not close it early.
5. When done, the installer creates *desktop shortcuts*: the *GAMMA Launcher* and *Mod Organizer 2*.

#info[
  A faster alternative exists for some users: the *GOG one-click install* (available on the GOG store for owners of _Call of Pripyat_ or _STALKER 2_, roughly 30–60 minutes). The manual launcher path above is the standard, fully supported route and the one this guide assumes.
]

=== Step 3 — First launch

1. Open the *GAMMA Launcher*.
2. Click *Update GAMMA data* (refreshes the pack's metadata), then *Install / Update GAMMA* — on a fresh install this verifies integrity and completes the assembly.
3. Launch the game through the launcher — it starts MO2 and runs Anomaly with the pack. The first boot compiles shaders and can take a long while: be patient and do not kill the process.

=== Step 4 — Configure before playing

In the GAMMA launcher you can set the *progression preset* before you ever enter the Zone:

- *Tourist* — generous task payouts; the recommended starting point (see the How to Play chapter).
- *Scavenger* — the middle ground; GAMMA's "standard" economy.
- *Survivalist* — the harshest economy; for veterans.

Combat difficulty is set separately in-game, so "Tourist economy + Medium or Hard combat" is a common first-run setup.

#tip[
  If you plan to use *ReShade*, keep the launcher option *"Delete Reshade"* unticked — otherwise the launcher wipes your ReShade files on update.
]

=== Updating GAMMA

- Open the GAMMA Launcher → *Update GAMMA data* → *Install / Update GAMMA*.
- Major updates (for example 0.9.3 → 0.9.5) frequently require a *new save game* — check the Discord announcements before updating, and never update mid-campaign without backing up your saves and MO2 profile.

=== Troubleshooting

- *Installer hangs or fails* — apply the antivirus exclusions above, free up disk space, re-run.
- *Launcher reports corrupt files* — run *Install / Update GAMMA* again; it verifies and repairs.
- *Game crashes on launch* — wrong renderer setting: switch between DX10 and DX11 in the launcher. Shader compilation on first boot is slow but must complete.
- *Save problems after an update* — start a new game per the update notes.
- Anything else — the GAMMA Discord help channels and \#FAQ; with logs attached they solve things faster than any wiki.

== Where to get help

- Anomaly: the ModDB page's comments and the broader STALKER community.
- GAMMA: the official GAMMA Discord — \#installation, \#faq and \#help are the canonical support route.
