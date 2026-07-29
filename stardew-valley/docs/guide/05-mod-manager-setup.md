# Stardrop Mod Management

Stardrop keeps your mod list organized through profiles, mod groups, and filtering — no manual separator setup needed. This chapter covers how to use Stardrop's features to manage the mod catalog efficiently.

## Profiles

Profiles let you maintain separate mod lists for different playthroughs. For this guide, you should already have created a profile named `SDV Modlist Guide` during setup.

### Managing Profiles

- **Create:** Profiles → Manage Profiles → New
- **Switch:** Select a profile from the dropdown in the toolbar
- **Profile-specific configs:** Enable in Settings → Enable Profile Specific Mod Configs. This keeps each mod's `config.json` separate per profile — useful if you want different settings for different playthroughs.
- **Export/Import:** Right-click a profile in the manager to export or import it. Exported profiles can be shared or backed up.

### Why Profiles Matter

The three-wave approach in this guide naturally maps to profiles:

- **Wave 1 profile:** Only foundations, bugfixes, and UI/HUD mods enabled
- **Wave 2 profile:** Add graphics, world expansion, and content mods
- **Wave 3 profile:** Full modlist with gameplay overhauls

You can maintain a single profile and simply enable/disable categories as you progress, or create separate profiles to preserve state at each milestone.

## Mod Groups

Stardrop's **Group By** feature organizes mods into collapsible sections — functionally equivalent to the separators used in other mod managers.

### Grouping Options

| Option | Behavior | Best For |
|--------|----------|----------|
| Folder | Groups by the mod's parent directory | Mirroring the mod catalog's category structure |
| Content Pack | Groups by target framework (CP, JA, etc.) | Seeing which framework each mod uses |
| None | Flat alphabetical list | Quick searching |

For this guide, **Folder** grouping is recommended. Install each mod category into its own folder structure (Stardrop does this automatically when you install a mod), and the grouping will match the catalog's chapter layout.

### Collapsing and Expanding

Click the **collapse/expand** button next to a group header to hide or show its contents. This keeps your list manageable when you have many mods installed.

## Filtering

The filter bar at the top of the mod list lets you quickly narrow down what you see.

### Built-in Filters

| Filter | What It Shows |
|--------|---------------|
| All Mods | Every mod in your profile |
| Enabled Mods | Only checked (active) mods |
| Disabled Mods | Only unchecked (inactive) mods |
| Updatable Mods | Mods with available updates |
| Configurable Mods | Mods that have a `config.json` you can edit |

### Search

Type in the search box to filter by mod name, author, or folder. The search is case-insensitive and updates in real time.

### Right-Click Filtering

Right-click any mod to filter the list by its folder or content pack type — useful for seeing all mods in the same category.

## Themes

Stardrop ships with several built-in themes. Change them via **View → Themes**.

| Theme | Style |
|-------|-------|
| Default | Light, clean interface |
| Dark Mode | Dark background, reduced eye strain |
| Catppuccin Mocha | Warm dark theme with muted accents |
| (several others) | Available in the themes submenu |

Choose whatever is comfortable for extended modding sessions.

## Nexus Integration

Stardrop's Nexus integration goes beyond just downloading mods:

- **Endorse mods** directly from Stardrop (right-click a mod → Open Mod Page → Endorse)
- **One-click updates** for Nexus Premium users (right-click → Install Update)
- **NXM handler** captures "Download with Mod Manager" clicks from your browser

If the NXM handler stops working, re-authenticate in **Nexus Mods → API Connection**.

## Tips

- **Check for updates regularly:** Stardrop checks for mod updates on launch. You can also force a check via **Mods → Check for Mod Updates**.
- **Use notes:** Right-click a mod → Add/Edit Notes to record why you installed it or any configuration changes you made. Notes are tied to the active profile.
- **Custom columns:** Right-click the column headers to show or hide columns (Requirements, Install Timestamp, Last Updated, etc.).
- **Backup your profile:** Export your profile via Profiles → Manage Profiles → Export after setting up each wave. This makes recovery trivial.
- **Keep Stardrop updated:** Stardrop notifies you when a new version is available. You can update from within the app or download manually from the [Nexus page](https://www.nexusmods.com/stardewvalley/mods/10455).
