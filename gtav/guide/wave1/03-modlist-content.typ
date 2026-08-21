= Wave 1: Content Mods

New vehicles, unlocked interiors, and a more varied street population. Content packs use the add-on DLC method, so install the custom `gameconfig.xml` (see the migration guide) before anything else here. On Enhanced, use each mod's Enhanced build where one exists.

== Mod Entry Format

- *Category:* Content
- *Version:* Compatible with GTA V Enhanced 1.0.1158.13
- *Dependencies:* Required tools or mods
- *Install path:* Where files go
- *System Impact:* What it adds
- *Installation:* Special steps

== Vehicles

=== #link("https://www.gta5-mods.com/vehicles/ivpack-gtaiv-vehicles-in-gtav")[IVPack]
- *Category:* Content (vehicles, add-on)
- *Author:* CP
- *Version:* 1.0.280 (Enhanced build available)
- *Dependencies:* CodeWalker, custom `gameconfig.xml`, Packfile Limit Adjuster
- *Install path:* `/mods/update/x64/dlcpacks/` + `dlclist.xml` entry
- *System Impact:* Adds GTA IV vehicles as add-on DLC
- *Installation:* Install the Enhanced build via CodeWalker; add it to `dlclist.xml`.

Brings a lore-friendly fleet of GTA IV vehicles (cars, bikes, SUVs, trucks, emergency, taxi) into Los Santos without replacing vanilla cars — a clean add-on that coexists with the base traffic.

=== #link("https://www.gta5-mods.com/vehicles/vanillaworks-extended-pack-add-on-oiv-tuning-liveries-vanillaworks-and-other-modders")[VanillaWorks Extended Pack]
- *Category:* Content (vehicles, add-on)
- *Author:* VanillaWorks & other modders
- *Version:* latest (see source)
- *Dependencies:* CodeWalker, custom `gameconfig.xml`, HeapAdjuster, Packfile Limit Adjuster, SirenSetting Limit Adjuster
- *Install path:* `/mods/update/x64/dlcpacks/` + `dlclist.xml` entry
- *System Impact:* Adds a large lore-friendly vehicle fleet with tuning and liveries
- *Installation:* Install via CodeWalker (Enhanced); add it to `dlclist.xml`.

A community-built lore-friendly vehicle expansion: a large fleet of fictional-brand cars, tuning options, and liveries that blend into the base game's world. A "heavy" add-on — keep the SirenSetting Limit Adjuster installed alongside the other limit adjusters to avoid crashes.

== Interiors

=== #link("https://www.gta5-mods.com/scripts/enable-all-interiors-wip")[Enable All Interiors]
- *Category:* Content (interiors)
- *Author:* HKH191
- *Version:* latest (WIP)
- *Dependencies:* ScriptHookV, ScriptHookVDotNet (Enhanced)
- *Install path:* `/scripts/` (ScriptHookVDotNet)
- *System Impact:* Unlocks interiors normally closed in singleplayer
- *Installation:* Drop the script into `/scripts/`.

Unlocks interiors that the base game keeps locked (police stations, hospitals, stores, and other buildings), letting you move through spaces the vanilla world only hints at. A work-in-progress — check the page for current-build compatibility.

== Traffic & Population

=== #link("https://www.gta5-mods.com/misc/dispatch-of-variety")[Dispatch of Variety]
- *Category:* Content (population / traffic)
- *Version:* latest (see source)
- *Dependencies:* CodeWalker (mods folder)
- *Install path:* `/mods/` (via CodeWalker)
- *System Impact:* Diversifies pedestrian and vehicle spawning
- *Installation:* Install via CodeWalker.

Adds variety to the pedestrians and vehicles that populate the streets — a maintained alternative to the older *World of Variety*.

== Not included (deliberately)

=== World of Variety (WoV)
- *Status:* Rejected
- *Author:* Cass
- *Reason:* Deprecated/outdated for current builds and conflicts with add-on vehicle packs (both edit `popgroups.ymt`, `popcycle.dat`, and `vehiclemodelsets.meta`). *Dispatch of Variety* covers the same ground while being maintained.

=== LA Revo 2.0
- *Status:* Not adopted (alternative)
- *Author:* Adnr Studio
- *Reason:* All-in-one map + graphics overhaul distributed through Patreon. Replaces roads, buildings, signage, vegetation, and lighting wholesale, so it conflicts with the curated graphics/content stack (VisualV, LA Roads, Real California Architecture, IVPack). A premium choice if you want a single "real Los Angeles" overhaul instead of this list — but not alongside it.

== User to provide

Slot for mission packs and large map additions. Verify each targets Enhanced 1.0.1158.13 and uses the add-on DLC method.