#import "helpers.typ": *

=== The Base Toolset

This chapter documents the *foundational plugins and tools* of Ace's Realm. They are the base of the modlist: installed once, available in every wave, and assumed by the wave guides. They were supplied as a group — Navigraph, LittleNavMap, AutoOrtho, X-Camera, AviTab, X-ATC-Chatter, openSAM, and Better Pushback — and each entry below explains what it does, how to install it, and how to use it.

#callout("Note:", [
  Provenance. The usage and installation prose in this chapter is general guidance written from general knowledge, not verified against each tool's current release — per this project's rules, mods are not researched here. Exact versions, current menu labels, and compatibility with your 12.4.3 install are yours to confirm from each mod's own page (use the patch/release-date heuristic from the Installation chapter). The download links below were added at your request and verified to resolve on 2026-08-05 — each points to the tool's official site or repository, which is also where you confirm the current version.
])

===== Navigraph (subscription & setup)

Navigraph is a subscription service that keeps your simulator's navigation data and charts current. It is less a single mod and more a *data and planning service* that several other tools (AviTab below, and any FMS-equipped aircraft) plug into.

*What it does* — two main products:

+ *Navigation data (AIRAC cycles)* — real-world navigation databases (waypoints, airways, airports, procedures) refreshed on a ~28-day cycle. Without a subscription, a sim's navdata ages and drifts from the real world; with it, your FMS and GPS match today's charts.
+ *Charts* — professional Jeppesen-style instrument charts (SIDs, STARs, approaches, airport diagrams) delivered via web, desktop/mobile apps, and in-sim through AviTab.

*Install & setup*:

1. Create an account at the service's site and take a subscription (the tiers differ in products and device limits — pick the one that covers your sims).
2. Install the *Navigraph Hub* application (the account/launcher/update center) from the official site — #link("https://navigraph.com")[navigraph.com].
3. Inside the Hub, install the *FMS Data Manager* component, tell it about X-Plane 12, and download the current AIRAC cycle. It writes the data into the sim's `Custom Data/` folder.
4. For charts in the cockpit, see AviTab below — with your account linked, AviTab's tablet can show your Navigraph charts.
5. Keep the subscription active and refresh the cycle each month (the Hub notifies you); every 28 days a new cycle lands.

*Wave fit* — Wave 0 can learn with the sim's default data; the subscription becomes valuable from Wave 1 onward (flight planning) and is essentially assumed by Waves 2-5 (IFR, FMS, airline ops).

#mod-entry(
  "Navigraph",
  url: "https://navigraph.com",
  deps: none,
  impact: "Replaces/updates the sim's navigation data with current AIRAC cycles and provides real instrument charts (also in the cockpit via AviTab).",
  notes: "Subscription-based; monthly data refreshes; writes to the sim's Custom Data folder. Current version and any dependencies: user to provide.",
)

===== LittleNavMap

LittleNavMap is a free, external (separate-window) flight planning and moving-map application for Windows, macOS, and Linux. It runs *outside* X-Plane 12 and connects to it over the network for live aircraft position.

*What it does* — a full map of the world with airports, navaids, airspace, and procedures; flight planning tools that export plans the sim can load; and a live moving map of your aircraft while you fly. It is the planning companion the wave guides reference.

*Install*:

1. Download the latest release from the official site — #link("https://littlenavmap.org")[littlenavmap.org] — and extract the archive to any folder — no installer needed.
2. Launch the application (e.g., `LittleNavmap.exe` on Windows).

*Setup & usage*:

1. *Simulator database* — on first start, point it at your X-Plane 12 folder so it reads the sim's scenery/nav database (it needs to know where the sim is to show airports and procedures correctly).
2. *Live connection* — enable live position reporting: in X-Plane 12's Data Output settings, turn on the UDP data items (position, attitude, etc.), and in LittleNavMap's simulator connection settings match the IP/port (local loopback and the sim's UDP data port are typical defaults; confirm the exact labels in the current documentation).
3. *Plan a flight* — pick a departure and destination, let it build a route, review it, and export it in the sim's flight-plan format (`.fms`). Load the plan in X-Plane 12 (the sim's flight-plan load feature reads plans saved to its output folder).
4. *Fly* — with the connection live, your aircraft shows as a moving symbol on the map, with track, altitude, and progress against the plan.

*Wave fit* — a Wave 0 learning aid (see where you are), essential from Wave 1 onward for cross-country and IFR planning, and used by every later wave.

#mod-entry(
  "LittleNavMap",
  url: "https://littlenavmap.org",
  deps: none,
  impact: "External flight planning and moving map; exports flight plans the sim loads; live-tracks your aircraft over UDP.",
  notes: "Freeware; runs outside the sim; needs the sim's UDP data output enabled for live tracking. Current version and any dependencies: user to provide.",
)

===== AutoOrtho

AutoOrtho streams orthophoto imagery (real satellite/aerial photos) into X-Plane 12 *on demand*, instead of downloading terabytes of ortho scenery in advance. Where it has tiles, the ground looks photoreal; elsewhere the sim's default scenery still shows.

*What it does* — a launcher app and a scenery link. You pick imagery sources and regions; it downloads and caches tiles as you fly over them, and presents itself to the sim as a normal scenery pack.

*Install & setup*:

1. Download the AutoOrtho application from its official repository — #link("https://github.com/kubilus1/autoortho")[github.com/kubilus1/autoortho] (the current build is on the releases page) — and install it.
2. Point it at your X-Plane 12 folder and choose an imagery source and region(s) you fly in; let it build/download the tile set (the first download is the big one — after that it streams).
3. The app installs/links its scenery entry into `Custom Scenery/` — make sure it sits in the ortho/mesh position of the load order: *below* airports and overlays (see Scenery Load Order in the Installation chapter). XFast Manager's smart sorting handles this.
4. Start the AutoOrtho launcher *before* X-Plane 12 each session, then fly normally.

#callout("Tip:", [
  Cache and bandwidth: AutoOrtho needs a decent internet connection and a few dozen GB of disk cache for the regions you fly. Pre-download regions you fly often; let the cache grow for everywhere else. If the ground flickers or falls back to default textures, the scenery order or the cache is the first thing to check.
])

*Wave fit* — optional but transformative from Wave 1 on, where cross-country flights over real terrain shine. Not needed to learn in Wave 0.

#mod-entry(
  "AutoOrtho",
  url: "https://github.com/kubilus1/autoortho",
  deps: none,
  impact: "Streams photoreal ortho ground textures into the sim on demand (scenery/visual only; no flight-model or system changes).",
  notes: "Requires internet while flying, disk cache, and correct scenery load order (below airports/overlays). Launcher must run before the sim. Current version and any dependencies: user to provide.",
)

===== X-Camera

X-Camera is a freeware camera system plugin. The sim's default views work, but X-Camera gives you *your own* saved camera positions with smooth transitions — cockpit close-ups, wing views, tower-style chase shots, and more.

*What it does* — define named cameras anywhere around the aircraft, assign them to joystick buttons/keys, move between them with animated transitions, and save per-aircraft camera sets.

*Install*:

1. Download X-Camera from the developer's site — #link("https://www.stickandrudderstudios.com/x-camera/")[stickandrudderstudios.com/x-camera] (a free version is available there) — and extract the plugin folder.
2. Copy the plugin folder into `X-Plane 12/Resources/plugins/` — either by hand (folder, not contents) or by dropping the archive onto XFast Manager.

*Setup & usage*:

1. *Bind controls* — in X-Plane 12's Settings → Keyboard/Joystick, search for the X-Camera commands and bind what you want: enable camera control, next/previous camera, and transition on/off. This is the one-time chore that makes everything else quick.
2. *Build cameras* — with camera control active, fly the aircraft to a view you like (pan with the mouse/controls), then save it as a camera in the X-Camera configuration panel. Do this for a pilot's view, a co-pilot view, a wing view, a tail chase, etc.
3. *Assign & save* — assign each camera to a button/key, then save the camera set for that aircraft (X-Camera keeps per-aircraft sets, so each plane remembers its own cameras).
4. *Fly* — tap through your cameras mid-flight with the bound buttons.

*Wave fit* — pure quality of life; useful from Wave 0 (find the best instructional views) through Wave 5 (external views of the big freighter).

#mod-entry(
  "X-Camera",
  url: "https://www.stickandrudderstudios.com/x-camera/",
  deps: none,
  impact: "Custom camera system: saved views, transitions, per-aircraft sets; camera/immersion only.",
  notes: "Bindings are set in the sim's Keyboard/Joystick settings; per-aircraft camera sets save with each aircraft. Current version and any dependencies: user to provide.",
)

===== AviTab

AviTab is a freeware plugin that puts a tablet in the cockpit. It shows PDFs (approach plates, manuals, checklists) and maps, and can display Navigraph charts when your account is linked.

*What it does* — an in-cockpit moving map and PDF viewer: put your charts and manuals in AviTab's folder, open the tablet in the sim, and page through them without leaving the cockpit.

*Install*:

1. Download AviTab from its repository — #link("https://github.com/TeamAvitab/avitab")[github.com/TeamAvitab/avitab] (the active home; downloads are on the releases page) — and extract the plugin folder.
2. Copy it into `X-Plane 12/Resources/plugins/` (by hand or via XFast Manager).

*Setup & usage*:

1. *Add documents* — copy PDF charts/manuals into AviTab's document folder inside the plugin directory (`Resources/plugins/AviTab/...`). Organize them in subfolders per region or aircraft.
2. *Open the tablet* — bind a key/joystick button to the AviTab command in the sim's Keyboard/Joystick settings; aircraft with a built-in 3D tablet open it by touching the tablet; the key command is the universal fallback.
3. *Charts* — if you have a Navigraph subscription, link the account and pull current charts straight into the tablet (cross-reference the Navigraph section above).
4. *Maps* — the tablet can show a moving map of your position with the charts loaded.

*Wave fit* — the classic Wave 0 companion (checklists and airport diagrams on a tablet) and indispensable from Wave 1 on for approach plates.

#mod-entry(
  "AviTab",
  url: "https://github.com/TeamAvitab/avitab",
  deps: none,
  impact: "In-cockpit tablet: PDF charts/manuals, moving map, optional Navigraph charts integration.",
  notes: "PDFs go into the plugin's document folder; bind a key/button to open it in aircraft without a 3D tablet. Current version and any dependencies: user to provide.",
)

===== X-ATC-Chatter

X-ATC-Chatter is a freeware ambient-radio plugin. It plays realistic, location-aware background ATC/company radio chatter so the frequency feels alive — even where there is no real controller.

*What it does* — generates simulated radio traffic (clearances, position reports, other aircraft talking to "their" controllers) based on your region and phase of flight, as ambient audio. It does not replace or control the sim's ATC; it layers believable background noise on top.

*Install*:

1. Download X-ATC-Chatter from the developer's site — #link("https://www.stickandrudderstudios.com/x-atc-chatter-1-7-2/")[stickandrudderstudios.com/x-atc-chatter-1-7-2] — and extract the plugin folder.
2. Copy it into `X-Plane 12/Resources/plugins/` (by hand or via XFast Manager).

*Setup & usage*:

1. Open the plugin's configuration panel from the sim's Plugins menu.
2. Choose the chatter content/volume you like — the plugin ships with default chatter; tune the volume so it sits under your own radio calls.
3. Fly. Chatter follows your situation: busier near airports, quieter en route. Toggle it when you want silence (e.g., while practicing instrument procedures where you must hear the sim's ATC clearly).

*Wave fit* — immersion from Wave 0 onward; most at home in Waves 1-3, where radio work is constant.

#mod-entry(
  "X-ATC-Chatter",
  url: "https://www.stickandrudderstudios.com/x-atc-chatter-1-7-2/",
  deps: none,
  impact: "Ambient background ATC/company radio chatter (immersion/audio only; does not change the sim's ATC or flight model).",
  notes: "Configure volume and packs in the plugin menu; mute it when you need to hear the sim's real ATC. Current version and any dependencies: user to provide.",
)

===== openSAM

openSAM is the open-source scenery-animation system you supplied — #link("https://github.com/hotbso/openSAM")[github.com/hotbso/openSAM]. It provides the *Scenery Animation Manager*-style features for airports that support them: animated jetways, docking guidance, marshallers, and ground service animations — as a free, open-source project.

*What it does* — at compatible airports, animated jetways extend to your aircraft, marshallers guide you to the stand, and ground services animate around you. It fills the "the airport is alive" gap that static scenery leaves.

*Install* (follow the project's own instructions from the supplied URL; general outline):

1. Download the latest release from the project's releases page (linked above).
2. Install the plugin part into `X-Plane 12/Resources/plugins/` and the library part into `X-Plane 12/Custom Scenery/` as the project's install notes direct.
3. Confirm the scenery library sits in the *libraries* position of the load order (see Scenery Load Order in the Installation chapter) — XFast Manager's sorting handles it.

*Usage* — mostly automatic: at airports built with SAM-style animation, jetways/marshallers respond to you pulling up to the stand. Pair it with Better Pushback below for a complete ground experience.

*Wave fit* — from Wave 0's home-field circuits to Wave 5's cargo terminals; it shines wherever you park at a gate.

#mod-entry(
  "openSAM",
  url: "https://github.com/hotbso/openSAM",
  deps: none,
  impact: "Open-source SAM-style scenery animation: animated jetways, docking guidance, marshallers, ground services at supporting airports.",
  notes: "URL supplied by the user. Plugin + library install (see the project's own instructions); library belongs in the scenery load order. Current version and any dependencies: user to provide.",
)

===== Better Pushback

Better Pushback is a freeware plugin that gives you a proper pushback tug with a route you draw, instead of the sim's default straight-line push.

*What it does* — press the pushback command, and a tug appears and connects; drag a path on the screen and the tug pushes the aircraft along it, steering exactly where you drew, then disconnects when done. You stay in control of the ground flow at gates and ramps.

*Install*:

1. Download Better Pushback from its repository — #link("https://github.com/skiselkov/BetterPushbackC")[github.com/skiselkov/BetterPushbackC] (downloads are on the releases page) — and extract the plugin folder.
2. Copy it into `X-Plane 12/Resources/plugins/` (by hand or via XFast Manager).

*Setup & usage*:

1. *Start* — trigger the pushback command (a default key is assigned by the plugin; rebind it in Settings → Keyboard if you prefer).
2. *Draw the route* — with the tug connected, click/drag on the screen to lay out the path (clear of obstacles, out of the stand).
3. *Watch it work* — the tug follows the route, stops, and disconnects; you release the parking brake, start engines, and taxi normally.
4. *Preferences* — the plugin keeps its settings in the sim's preferences; adjust behavior there (e.g., auto-start, volume of the tug's sounds) as you like.

*Wave fit* — a Wave 0 convenience (parking and pushing at the school field) that becomes a daily ritual in Waves 3-5 at big airports.

#mod-entry(
  "Better Pushback",
  url: "https://github.com/skiselkov/BetterPushbackC",
  deps: none,
  impact: "Interactive pushback tug with a drawn route (ground handling/QoL; no flight-model changes).",
  notes: "Trigger command and rebind in the sim's keyboard settings; pair with openSAM for a full gate experience. Current version and any dependencies: user to provide.",
)

=== Where They Fit

The eight tools divide naturally into *planning* (Navigraph, LittleNavMap), *cockpit* (AviTab, X-Camera), *immersion* (X-ATC-Chatter, openSAM, Better Pushback), and *visuals* (AutoOrtho). Every wave assumes the base toolset is installed; the wave chapters tell you when a specific tool becomes central — LittleNavMap and Navigraph from Wave 1, AutoOrtho's photoreal terrain from Wave 1's cross-country legs, and the ground/animation trio every time you fly a gate.
