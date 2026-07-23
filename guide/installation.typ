// guide/installation.typ

#import "../template/lib.typ": *

#chapter-heading([Installation Guide])

#section-heading([Prerequisites])

- *Kerbal Space Program 1.12.5* — installed via Steam, GOG, or direct download
- *CKAN* — download from https://github.com/KSP-CKAN/CKAN/releases
- *Breaking Ground* and *Making History* DLCs — recommended but not required

#section-heading([Step-by-Step Setup])

#section-heading([Step 1 — Install CKAN])

Download the latest CKAN release for your platform. Launch CKAN. On first run it will ask you to locate your KSP installation — poinFt it at your KSP 1.12.5 directory.

#info[[
  *Steam users:* Your KSP directory is typically at:
  `C:\Program Files (x86)\Steam\steamapps\common\Kerbal Space Program` (Windows)
  or `~/.steam/steam/steamapps/common/Kerbal Space Program` (Linux).
  Use File → Manage KSP Instances to manage multiple versions.
]]

#section-heading([Step 2 — Add Repository (if needed)])

CKAN should already include the default repository. If you don't see mods appearing:

1. Settings → CKAN Settings → New Repository
2. Add: `https://github.com/KSP-CKAN/CKAN-meta/archive/main.tar.gz`
3. Click OK, then File → Refresh

#section-heading([Step 3 — Install The Long Ascent Waves])

The modlist ships as four CKAN metapackage files — one per wave — plus a combined file. Each wave is cumulative: Wave 0.5 includes Wave 0; Wave 1 includes all previous; Wave 2 is the complete modlist. Install them in order and play through each wave's guide before adding the next.

#info[[
  *Wave 0 — First Steps:* `the-long-ascent-wave-0.ckan` (8 mods). UI and HUD overlays only — KER readouts, BetterBurnTime, bugfixes, a dark theme. No gameplay changes. Install this first and learn orbital flight before anything else.
]]

#info[[
  *Wave 0.5 — Building Blocks:* `the-long-ascent-wave-05.ckan` (23 mods, cumulative with Wave 0). Advanced planning and editor tools — Transfer Window Planner, DPAI, Trajectories, Kerbal Alarm Clock, SCANsat, VAB enhancers. Adds no new parts or mechanics, but transforms how you plan missions and build rockets. Install once you can reach orbit consistently.
]]

#info[[
  *Wave 1 — Going Further:* `the-long-ascent-wave-1.ckan` (77 mods, cumulative with Waves 0–0.5). Graphics overhaul (Scatterer, AVP, Deferred, Parallax, Waterfall), parts expansion (Near Future suite, Restock+, historical and modern rocket packs), planet packs (OPM, Kcalbeloh, Grannus, QuackPack), and fuel system mods (CRP, B9PartSwitch, CryoTanks). Transforms KSP into a modern game with destinations across the solar system. Install once you've mastered Mun landings, docking, and space stations.
]]

#info[[
  *Wave 2 — The Long Ascent:* `the-long-ascent-wave-2.ckan` (7 mods, cumulative with all previous). Life support, colonization (Planetside, MKS, Extraplanetary Launchpads), and interstellar propulsion (Far Future Technologies, Blueshift). Each mod is optional — pick the ones that match your preferred challenge level. Install once interplanetary travel is routine.
]]

For each wave:

1. File → Install from .ckan... → select the wave's `.ckan` file
2. CKAN will display a list of mods — including dependencies from previous waves if this is your first install
3. Review the changes. CKAN resolves all dependencies automatically.
4. Click Continue, then Apply. CKAN downloads and installs everything.

#tip[[
  *First-time setup:* Start with Wave 0 only. Play through the Wave 0 guide until you can reach orbit without reverting. Then install Wave 0.5, play its guide, and so on. Each wave's guide assumes you've mastered the skills from the previous wave.
]]

Alternatively, use `the-long-ascent.ckan` (the combined file) to install all waves at once. All mods appear as recommendations — review the list, uncheck anything you don't want, and apply. The combined file includes everything from Wave 0 through Wave 2.

#section-heading([Step 4 — Launch and Verify])

Launch KSP. When the main menu loads, you should see the ModuleManager banner in the lower-right corner, confirming mods are active. Start a new save — do not load old saves without checking compatibility.

#tip[[
  *Recommended first save:* Career mode with default settings for Wave 0. For Waves 0.5 and beyond, consider increasing science rewards slightly (120–150%) since additional mechanics and the Community Tech Tree (Wave 1) demand more science than stock. Funds rewards can stay at 100% — contracts scale well with the expanded parts list.
]]

#section-heading([CKAN Troubleshooting])

#section-heading([CKAN can't find my KSP install])

CKAN looks for `buildID64.txt` or `KSP.exe` / `KSP.x86_64` in the game directory. Use File → Manage KSP Instances → Add New and manually browse to the folder.

#section-heading([Mods fail to download])

Some mods are hosted on services that may be temporarily down. CKAN will show an error as it progresses — note which mod failed and try again later.

#section-heading([Conflict warnings])

CKAN may warn about mod conflicts. When installing via the `.ckan` metapackages, conflicts are handled. If you see unexpected conflicts, check the `conflicts` notes in the individual mod entries later in this guide.

