// 20-modlist.typ — Iron Valley: the curated modlist.
#import "theme.typ": *

= The Modlist

_What "Iron Valley" actually consists of: Derail Valley B99.7 plus a curated set of foundations, rolling stock and detail mods on Unity Mod Manager — and, just as importantly, what it deliberately leaves out._

== The list at a glance

#table(
  columns: (1fr, 2fr),
  inset: 7pt,
  stroke: hairline,
  fill: (x, y) => if y == 0 { banner } else if calc.even(y) { panel } else { panel2 },
  align: (left, left),
  [*Property*], [*Value*],
  [Base game], [Derail Valley B99.7 (current live build; B100 in development, not released)],
  [Mod manager], [Unity Mod Manager v0.32.5 (2026-07-29) — Nexus site/mods/21],
  [Curated mods], [13 — five foundation frameworks, five locomotives, two detail/immersion mods, one optional graphics tool],
  [Distribution], [Nexus Mods (derailvalley) + GitHub (WhistleWiz) + reshade.me (optional) — direct pages only],
  [Playstyle], [The vanilla sim, deepened and modernized — more trains, more cargo, more detail; nothing that makes it easier],
)

== Design pillars

- *Deepen & modernize.* The B99 build is a solid, living sim; these mods widen its motive-power pool, deepen its fleet management, and polish its presentation — without moving the goalposts.
- *More trains.* Five community locomotives on Custom Car Loader: two big steam 4-8-4s, a steam shunter, a V/Line diesel and a streamlined diesel with a booster B-unit — every one with real cab work, built to the sim's standards.
- *More cargo.* Custom Car Loader and DV Custom Cargo together let custom freight cars carry custom cargo types in the live economy — the framework the game's own 100+ cargo B100 update will later catch up to.
- *Graphics, honestly.* One liveries system (Skin Manager) plus an optional post-processor (ReShade) — no fake "ultra" filters, and no environment overhaul exists that is current and verifiable anyway.
- *No overpowered, no easier.* Nothing that hands out money, licenses, fuel or free rerails; nothing that erases a mechanic the game teaches you by doing. Mods that do exactly that are listed at the end of this chapter with reasons — they are the ones we said no to.

== The core: Unity Mod Manager

Unity Mod Manager is the *best mod manager for an avid modder* in this community, and it is the only one this guide uses. It is covered in detail in chapter 1 — the short version: drag-and-drop installs, an in-game mod menu (#key("Ctrl+F10")), per-mod settings, per-mod enable/disable, update checks, and a huge multi-game user base that keeps it alive. Everything else in this list runs on top of it.

== Foundations

These five are frameworks: they add little by themselves and enable everything else. Install them first, in this order.

#mod(
  name: "Custom Car Loader (CCL)",
  tag: "Required — the rolling stock framework · v3.1.8",
  what: "The backbone of the modern Derail Valley mod scene: lets the game load, spawn and simulate community-created locomotives and cars, from the car model in Unity to an assetbundle in your mods folder. Custom locomotives can appear in the world naturally, custom cars can show up in jobs with cargo, and some work trains become purchasable through the regular Work Train menu. It also brings its own custom cargo support (custom cargo types and configurable cargo models for cars) and saves custom-loco state across restarts. Explicitly supports B99.7+ only; all pre-3.0.0 CCL mods are unsupported.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/324")[Nexus — derailvalley/mods/324] · #link("https://github.com/derail-valley-modding/custom-car-loader")[GitHub]],
  install: "Download the zip and drag it into UMM's Mods tab, after Unity Mod Manager and Language Helper.",
  risk: "None — it is the ecosystem itself. Keep it updated; and remember it is NOT compatible with Number Manager.",
)

#mod(
  name: "Language Helper",
  tag: "Required — localization library",
  what: "A common library that lets other mods ship translations. It does nothing on its own, but Custom Car Loader, Custom Licenses and Skin Manager all list it as a requirement — install it once and forget it.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/823")[Nexus — derailvalley/mods/823] · #link("https://github.com/derail-valley-modding/language-helper")[GitHub]],
  install: "Drag the zip into UMM's Mods tab, before the mods that require it.",
  risk: "None.",
)

#mod(
  name: "Custom Licenses",
  tag: "Required — license framework · by WhistleWiz · v1.1.3",
  what: "A framework for adding custom licenses to the game, so community locomotives can be gated behind their own earnable career licenses instead of being handed out for free. By itself it does nothing; several locomotive packs in this list require it, and the custom licenses appear in the Career Manager like the vanilla ones.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1036")[Nexus — derailvalley/mods/1036] · #link("https://github.com/WhistleWiz/dv-custom-licenses")[GitHub]],
  install: "Drag the zip into UMM's Mods tab (needs Language Helper).",
  risk: "Low — a framework only.",
)

#mod(
  name: "Comms Radio API",
  tag: "Required — comms radio framework · by fauxnik (Niko Fox) · v1.0.3",
  what: "Lets other mods add their own modes to the in-game Comms Radio device — the same handheld you use for the vanilla car spawner and remote control. Loco Ownership builds on it.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/813")[Nexus — derailvalley/mods/813] · #link("https://github.com/fauxnik/dv-comms-radio-api")[GitHub]],
  install: "Drag the zip into UMM's Mods tab.",
  risk: "Low. Last updated in the B98 era; still the required dependency for current mods — watch it after B100.",
)

#mod(
  name: "DV Custom Cargo",
  tag: "Cargo framework · by WhistleWiz · MIT",
  what: "Adds the ability to create and use custom cargo in Derail Valley, fully compatible with Custom Car Loader — so custom freight cars can haul custom commodity types in the live economy, with mass, value and wagon compatibility defined per cargo. Known caveat (from the author): changing the cargo set can clear hazmat-map data in an existing save (visual world markers), so add cargo mods before starting a career, not mid-career.",
  source: [#link("https://github.com/WhistleWiz/dv-custom-cargo")[GitHub — WhistleWiz/dv-custom-cargo]],
  install: "Download from GitHub and drag the zip into UMM's Mods tab, after CCL.",
  risk: "Low. Framework only; read the hazmat-map caveat above before changing the cargo set on an existing save.",
)

== Rolling stock

Five community locomotives, all on Custom Car Loader, all updated in the B99.x era. Each one is a real cab experience — no overpowered stats, no free power: they fit the sim's physics, load ratings and career economy, and several gate themselves behind custom licenses you earn in the Career Manager.

#mod(
  name: "Santa Fe 2900 Class Northerns",
  tag: "Steam 4-8-4 · by GingerBeardLocomotiveWorks · updated 2026-07-27",
  what: "An ATSF 2900 Class 'Northern' 4-8-4 (Baldwin, 1943–44) in the guise of No. 2901. An oil-burner that runs on diesel fuel in-game, with an eight-axle tender, custom bell animation and extra particle effects, and VR-tested. Big steam for the mainline — think S282 scale, US-style.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1610")[Nexus — derailvalley/mods/1610]],
  install: "Drag the zip into UMM. Requires CCL + Custom Licenses.",
  risk: "Low. Check the page for the exact license the custom license adds and what service points it needs.",
)

#mod(
  name: "S484-841 'Sunset'",
  tag: "Steam 4-8-4 · by LittleNiko36 · v1.0.6",
  what: "A fictional N.E.C.O. 'Sunset' 4-8-4 whose prototype is the SP GS-4 4449 'Daylight' (the page is explicit that this is not 4449 itself). The first Derail Valley steam locomotive that burns diesel instead of heavy oil — no heavy oil exists in-game — with a 190 km/h design speed, load ratings around 4000 t on flat / 2400 t on a 2% grade, a Mars light and a multi-person cab. VR-tested.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1549")[Nexus — derailvalley/mods/1549]],
  install: "Drag the zip into UMM. Requires CCL + Custom Licenses.",
  risk: "Low. It is a fast, powerful steam locomotive — respect its braking like you would any big steamer.",
)

#mod(
  name: "VR Class Jk3",
  tag: "Steam 0-8-0 shunter · by CruzerBlade9369 & Lilla · v1.0.1",
  what: "A fictional 0-8-0 'S080-400' shunter from the 1897–1912 era — roughly an S060-equivalent with better range: about 105 kN tractive effort, a low-profile three-axle tender, 2,500 kg coal and 5,500 L water, a 65 km/h safe maximum, and good visibility both directions for yard work. Fires up, coals up and works the yard like a proper heritage shunter.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1334")[Nexus — derailvalley/mods/1334]],
  install: "Drag the zip into UMM. Requires CCL + Custom Licenses.",
  risk: "Low. Steam shunting means water discipline — keep an eye on the tender gauge in the yard.",
)

#mod(
  name: "N Class",
  tag: "Diesel 6-axle · by Sam24815 · v1.1",
  what: "A V/Line (Australian broad gauge) dual-cab six-axle diesel with power in the DE6 ballpark — a modern mainline hauler with a cab at each end for easy run-arounds. Compatible with passenger jobs, and the page notes optional compatibility with Zeibach's legacy Couplers mod (not used in this list).",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1323")[Nexus — derailvalley/mods/1323]],
  install: "Drag the zip into UMM. Requires CCL v3.1.8+.",
  risk: "Low. Not yet VR-tested by the author at the time of writing — fine for desktop play.",
)

#mod(
  name: "EMC-E Series",
  tag: "Streamlined diesel · by TheDriver01 & Baronvonloco · v1.2.1",
  what: "A streamlined EMC-E4-inspired E-series diesel with a fully operational Booster B-unit — the classic 'streamlined passenger train' look of the 1930s. About 2,000 hp, a ~190 km/h top end and roughly 1,000 t on a 2% grade, with 16 livery combinations, full VR and HUD support, natural map spawns and Loco Ownership compatibility. Needs the in-game DE6 license to drive — a genuine career gate, not a handout.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/1497")[Nexus — derailvalley/mods/1497]],
  install: "Drag the zip into UMM. CCL-based custom car; the page's requirements are sparse, so confirm CCL + Language Helper are current.",
  risk: "Low. Fast and streamlined — read the cab instruments; this one rewards the careful driver.",
)

== Detail & immersion

#mod(
  name: "Skin Manager",
  tag: "Liveries · by cbethax, Katycat, Zeibach, Cruzer · v4.4.1",
  what: "The community's livery system: repaint any locomotive or rolling stock (base game or custom) with your own skins through a Comms Radio 'reskin' mode and in-game paint cans, with a packager to bundle your work. Explicitly CCL-compatible. Pure detail — it changes how your fleet looks, never how it runs.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/34")[Nexus — derailvalley/mods/34] · #link("https://github.com/derail-valley-modding/skin-manager")[GitHub]],
  install: "Drag the zip into UMM. Requires Language Helper and current UMM; skin packs go into the mod's Skins folder.",
  risk: "Low. Purely cosmetic.",
)

#mod(
  name: "Loco Ownership",
  tag: "Fleet management · by CruzerBlade9369 · v1.6.1",
  what: "Lets you buy and own locomotives outright, beyond the museum demonstrators the game hands you. Owned locos stay where you park them (no despawn), can be painted, must be serviced like real machines, and can be sold. Prices come from the in-game locomotive catalog and the relevant license is required — you earn it the hard way, then pay catalogue price. This deepens the career's fleet layer; it does not make anything cheaper or easier.",
  source: [#link("https://www.nexusmods.com/derailvalley/mods/977")[Nexus — derailvalley/mods/977]],
  install: "Drag the zip into UMM. Requires Comms Radio API + Language Helper.",
  risk: "Low. Build-99 compatible; watch for updates when B100 lands.",
)

== Optional: graphics

#mod(
  name: "ReShade",
  tag: "Optional post-processing · reshade.me",
  what: "A generic post-processing injector (not a Derail Valley-specific mod) used across PC gaming: ambient light, colour grading, sharpening, and other effects on top of the game's renderer. Included as the *only* honest graphics option that is both current and verifiable — no Derail Valley environment overhaul exists that is maintained for the B99 line. No community preset was verified for this guide, so the honest advice is to tune it yourself and keep it subtle: night railroading is dark by design.",
  source: [#link("https://reshade.me")[reshade.me]],
  install: "Run the official installer, pick Derail Valley's executable and the Direct3D 10/11/12 API, then toggle the overlay in-game with the Home key",
  risk: "Optional — skip it if you value pure vanilla rendering. Disable it before reporting performance or graphical issues, and never pair it with a crashed mod hunt.",
)

#info[
  The one 'modern comfort' in this list is ReShade, and it is optional. The line we draw everywhere else: *friction you can feel is the game*. Detail mods and honest performance work deepen it; anything that quietly removes a mechanic, a limit, or a source of tension is out — even when it is popular.
]

== What we deliberately left out

Every mod below is real, and several are popular — and each one fails a pillar. The reasons are recorded in STATUS.md as well.

- *Number Manager* — dynamic unique numbers on rolling stock, but _Custom Car Loader is explicitly incompatible with it_ (CCL's own page says so). Our list is CCL-based; the conflict is not worth the numbers.
- *DV Utilities* — a developer/cheat toolkit: money and license unlocks, unlimited fuel/water/coal, disabling derailment and wheelslip, free rerail, time/weather override. Every one of those makes the game easier, and it is unmaintained since February 2024 (pre-B99).
- *Expanded Station Range* — increases the distance you can leave a station before its jobs despawn. It is a quality-of-life idea, but the mod is unmaintained since July 2023 with no current-build statement; and honestly, the station-range limit is a designed constraint of the career's yard work.
- *Improved Job Overview* — adds track numbers to the job overview before you accept. Last updated August 2023 and officially unmaintained; community reports say it still runs, but the page itself claims nothing.
- *Zeibach's Couplers* — realistic coupler physics (AAR knuckle, SA3, Scharfenberg, link-and-pin). A legend of the older scene, but legacy: the author joined the Altfuture development team and the game's own coupling rework is on the roadmap. No current-build guarantee.
- *DRG Class 01* — a gorgeous 4-6-2, but hidden by its author since September 2023 ("currently not supported"). Unavailable.
- *Class 66, TEM2 / ChME3 and similar* — mentioned in community round-ups, but no currently available release could be verified at build time. Not included rather than guessed at.
- *Booklet Organizer, LightingOverhaul, EasyTex, "Map Enhancer"* — no verifiable current page exists. (Map Enhancer is a *Railroader* mod; LightingOverhaul appears to be an old private BepInEx-era project.) Skin Manager, CCL and the rest of this list cover those pillars with far less risk.
- *Money / cheat / "easy mode" mods generally* — anything that raises income, removes fees, or unlocks licenses is out by the pillar, no matter how polished.

== Download sources

- Nexus Mods — Derail Valley hub: #link("https://www.nexusmods.com/derailvalley")[nexusmods.com/derailvalley] (all mod cards link their own pages)
- Unity Mod Manager: #link("https://www.nexusmods.com/site/mods/21")[nexusmods.com/site/mods/21]
- GitHub — DV Custom Cargo: #link("https://github.com/WhistleWiz/dv-custom-cargo")[github.com/WhistleWiz/dv-custom-cargo]
- ReShade (optional): #link("https://reshade.me")[reshade.me]

Every mod card above links its own page — check the *Requirements* and *Last updated* fields there before installing; versions move faster than any printed guide, and Derail Valley's next big build (B100) will move them again.
