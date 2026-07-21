// guide/installation.typ

#chapter-heading([Installation Guide])

#section-heading([Prerequisites])

- *Kerbal Space Program 1.12.5* — installed via Steam, GOG, or direct download
- *CKAN* — download from https://github.com/KSP-CKAN/CKAN/releases
- *Breaking Ground* and *Making History* DLCs — recommended but not required
- *Typst 0.13+* — only needed to regenerate this PDF from source ( https://github.com/typst/typst/releases )

#section-heading([Step-by-Step Setup])

#section-heading([Step 1 — Install CKAN])

Download the latest CKAN release for your platform. Launch CKAN. On first run it will ask you to locate your KSP installation — point it at your KSP 1.12.5 directory.

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

The modlist ships as three CKAN metapackage files, one per wave. Install them in order:

#info[[
  *Wave 0:* `the-long-ascent-wave-0.ckan` — UI and QoL mods only. Install this first and play through the Wave 0 guide before adding more.
]]

#info[[
  *Wave 1:* `the-long-ascent-wave-1.ckan` — Graphics mods, parts packs, light mechanics. Install after Wave 0, once you've mastered the basics.
]]

#info[[
  *Wave 2:* `the-long-ascent-wave-2.ckan` — Life support, colonization, interstellar, realism overhauls. Install after Wave 1. Each mod is optional — choose the ones that match your preferred challenge level.
]]

For each wave:

1. File → Install from .ckan... → select the wave's `.ckan` file
2. CKAN will display a list of mods. Review the changes.
3. Click Continue, then Apply. CKAN downloads and installs everything.

Alternatively, use `the-long-ascent.ckan` (the combined file) to install all waves at once. Waves 0–1 appear as recommendations; Wave 2 mods appear as suggestions you can opt into.

#section-heading([Step 4 — Launch and Verify])

Launch KSP. When the main menu loads, you should see the ModuleManager banner in the lower-right corner, confirming mods are active. Start a new save — do not load old saves without checking compatibility.

#tip[[
  *Recommended first save:* Career mode with default settings for Wave 0. For Waves 1–2, adjust difficulty sliders (funds and science rewards) since additional mechanics increase the learning curve and resource demands.
]]

#section-heading([CKAN Troubleshooting])

#section-heading([CKAN can't find my KSP install])

CKAN looks for `buildID64.txt` or `KSP.exe` / `KSP.x86_64` in the game directory. Use File → Manage KSP Instances → Add New and manually browse to the folder.

#section-heading([Mods fail to download])

Some mods are hosted on services that may be temporarily down. CKAN will show an error as it progresses — note which mod failed and try again later.

#section-heading([Conflict warnings])

CKAN may warn about mod conflicts. When installing via the `.ckan` metapackages, conflicts are handled. If you see unexpected conflicts, check the `conflicts` notes in the individual mod entries later in this guide.

#section-heading([Regenerating the PDF])

To rebuild this PDF from the source Typst files:

#code-block[
  # Windows
  scripts\build.bat

  # Linux / macOS
  bash scripts/build.sh
]

The build scripts run `typst compile` with the `--font-path` flag so bundled fonts are used. Ensure Typst 0.13+ is installed and on your PATH.
