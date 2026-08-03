#let callout(title, body) = block(
  fill: rgb("#f7e8d8"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#d97b3a"),
)[*#title* #body]

This chapter takes you from a fresh Kenshi install to a running, verified modded setup: the exact game build, the mod manager, where every mod in this guide comes from, and the load order the whole guide assumes. It is written against *Kenshi 1.0.68* (released April 1, 2024) and against *KMM — Kenshi Mod Manager* (Nexus mod 1765), which the project's verification (Task 3) judged COMPATIBLE with that build. Every claim in this chapter was checked against that verification before it was written; where a detail could not be confirmed, the chapter says so instead of guessing.

If you are following the waves in order, you do the setup here exactly once, up front. Each wave then adds its own content on top of the base you build now, and the final section of this chapter explains how to switch between waves without rebuilding anything.

The whole chapter, in one glance:

1. *Game prep* — Kenshi 1.0.68 from Steam, confirmed and pinned.
2. *Install KMM* — the mod manager (Nexus 1765), extracted and run.
3. *Point KMM at the game* — the Steam path resolves.
4. *Fetch the mods* — Workshop subscribes plus the four Nexus downloads.
5. *Load order* — the canonical ordering every wave follows.
6. *Launch & verify* — the launcher's Mods tab shows everything loading.
7. *Per-wave switching* — the playset discipline that keeps waves scoped.

Each step is one short section below. None of them should take more than a few minutes, and the order they are written in is the order you should do them — the load order section depends on the mods being fetched, which depends on KMM being pointed at the game, which depends on the game being prepped.

=== Game Prep

Start with a clean, current Kenshi from Steam. Steam is the primary mod source for this guide — nearly every mod in the list is subscribed from the Steam Workshop — so install the game through Steam and let it fully download before you touch anything else. Run the game once to generate its install-folder files and confirm it launches; that first run also proves which build you actually have before anything else gets layered on top. (KMM itself works with both the Steam and GOG versions of Kenshi, but the guide assumes Steam because that is where its mods live.)

The build matters. This guide targets *1.0.68*, the version released on *April 1, 2024* — that is the exact build every mod in this list was verified against, and the build every fact in the wave chapters was checked against. Confirm your install is at that build before you begin, and once it is, tell Steam not to update Kenshi automatically. Every mod card in this guide was checked against 1.0.68, and keeping the game pinned to that build is what makes the rest of the guide's claims hold.

#callout("Warning:", [If Kenshi auto-updates off 1.0.68 later, re-confirm the build before continuing. The mods in this list were verified against 1.0.68 specifically; a different build is outside this guide's guarantees. After you have confirmed the version once, disable automatic updates for Kenshi in Steam so it stays there.])

Kenshi keeps its mod data in its install folder and its Workshop downloads in Steam's own workshop folders, so there is nothing else to install for the game itself. Kenshi's launcher carries a *Mods* tab (its built-in mod manager) that lists every installed mod and the load order the game will use — it is the ground truth of what the game will actually load, and every verification step in this chapter points at it. With a clean 1.0.68 confirmed and pinned, the next step is the mod manager.

A note for the GOG alternative: KMM's requirements list "Kenshi (Steam or GOG version)", so GOG owners can use it too. But this guide's mod list is built around Steam — the primary source for the list is the Steam Workshop, and the Wave 0 base includes Workshop-published texture and performance mods that are most simply subscribed there. If you play on GOG, you would be downloading the Workshop-only mods from their Nexus mirrors or manual files instead, which is doable but outside the steps written here; this chapter assumes Steam.

=== Install KMM (Nexus Mod 1765)

The mod manager for this guide is *KMM — Kenshi Mod Manager*, by Aze4ka, on Nexus Mods:

- Mod: #link("https://www.nexusmods.com/kenshi/mods/1765")[KMM - Kenshi Mod Manager] (Nexus mod 1765)
- Source code: #link("https://github.com/nonniks/KenshiModManager")[github.com/nonniks/KenshiModManager]
- First uploaded 2025-10-12; last updated 2025-10-19; current release *v1.0.0*.

Its requirements, as listed on the mod page: *Windows 10+ (64-bit)*, *Kenshi (Steam or GOG version)*, and — importantly for a smooth install — it is *self-contained*, so it needs *no separate .NET install* and no other runtime. Download the archive from the mod page, extract it to a folder you can keep (anywhere outside the game folder works; KMM does not need to live inside Kenshi), and run the executable it contains.

#callout("Warning:", [Grab the *current* KMM — Aze4ka's, released October 2025. The Nexus ID 1765 previously pointed to a different, older "Kenshi Mod Manager" by MillerScout, and the two are separate projects. The verification behind this guide (and every instruction that follows) applies to the current holder of Nexus 1765: Aze4ka's KMM, version 1.0.0.])

KMM's verified feature list is what the rest of this chapter builds on: it *automatically finds Kenshi and Steam installation paths*; it manages load order by *drag & drop reordering* (its own usage text: "Drag mods to reorder load priority"); it keeps *playsets*, each saved as its own separate `.cfg` file; it offers *Save & Launch* — which applies your changes and starts Kenshi; and it detects *Steam, local, and custom* mod sources. All of those features are confirmed in the project's GitHub README and Nexus description, and every step below uses only them.

One honesty note before you start clicking. The compatibility verdict behind this chapter is COMPATIBLE, but it rests on the evidence the verification could actually reach: KMM is actively maintained (last updated 2025-10-19, well after 1.0.68), its requirements pin no specific Kenshi version, and no breakage reports were found in its sources. What could *not* be obtained is an explicit community confirmation of running KMM under 1.0.68 — the Nexus comment threads are rendered by JavaScript and could not be fetched for verification. That is a hole in the evidence, not a reason to avoid KMM; the verdict stands, but treat the first launched game in this chapter as the real confirmation. Everything this guide needs from KMM — playsets, drag & drop ordering, Steam detection, Save & Launch — is documented by the tool itself.

=== Point KMM at Your Game

KMM's first and most useful feature is that it *automatically finds Kenshi and Steam installation paths* — this is stated in its GitHub README and is the intended first-run behaviour. When you start KMM, let it detect the install, and then confirm that the path it resolved points at your real Kenshi installation (the folder that contains the game's executable and its `data` folder).

If your setup is not found automatically — for example, if Kenshi lives in a non-standard Steam library location or on a different drive — you can point KMM at the game yourself. The exact wording of the control for this may vary by KMM version, so do not hunt for a specific label: the intent is simply *make KMM load the order from your Kenshi install* and *let it see the mod folders in that install*. KMM does not document the mechanism it uses to detect Steam paths (registry lookup versus library scan is unconfirmed), so a manual pointer is the reliable fallback whenever automatic detection fails.

#callout("Tip:", [After pointing KMM at the game, launch Kenshi once through KMM before installing any mods (its Save & Launch button applies changes and starts the game). If the game opens normally, KMM has the right install. If it does not, re-check the path — an unverified path will only cause confusing problems later, after mods are already on top of it.])

=== Fetch the Mods

Every mod in this guide comes from one of two places: *Steam Workshop* (primary) or *Nexus Mods* (secondary). The split is recorded per mod in its card in the wave chapters — each card's URL is the verified source, and the verification method for each is logged in the project's STATUS file.

For the Workshop mods, subscribe to each one on its Steam page. Steam downloads the files itself, and because KMM detects Steam mod sources, the subscribed mods appear in KMM automatically once the game's Workshop content is in place. For the Nexus mods, download the archive from Nexus and make it available to KMM through its local/custom mod detection; the exact import flow for a local mod may vary by KMM version, but the intent is always the same — the mod ends up inside Kenshi's mod data, where the game (and KMM) can see it. If a mod is available on both Workshop and Nexus, prefer the Workshop copy: it is the primary source for this list, updates through Steam automatically, and keeps the game's own workshop handling in charge.

Most of the list is Workshop. The mods whose primary source is Nexus are the four whose cards list a Nexus URL: *Particle System Override*, *Kenshi Performance Fix*, and *Kenshi CTD fix patch* (Wave 0), and *Shek Perfect Body* (Wave 1). A few Workshop mods also have official Nexus mirrors, but subscribing from the Workshop is enough for those — the mirror is an alternative, not a requirement. Each wave's Modlist section lists its exact URLs, so fetch the mods wave by wave as you reach that wave, exactly as the per-wave switching section describes below.

=== Load Order

Kenshi's load-order system is the one thing that decides whether the mods in this guide work together, so it is worth being precise. The rule, verified against both a Steam community guide and the Kenshi wiki FAQ:

> *Later in the list = higher priority.* Mods lower in the order overwrite mods higher in the order; "the mod loaded AFTER, will override the value above it."

What that means in practice: when two mods edit the same game value, the one that loads later wins — its version is the one the game keeps. That is why the ordering discipline in this guide exists at all. A texture mod loaded too late can silently override another texture mod's work; a faction mod loaded too early can have its new gear wiped by a later overhaul; a patch mod loaded before the mod it patches does nothing at all. Kenshi gives the community no automated conflict resolution — the wiki is explicit that users are responsible for load order, either by trial and error or by following author recommendations — so the whole guide's ordering rules exist to prevent that silent churn before you ever see it in game.

#callout("Tip:", [When a mod card in a wave chapter says "author instruction" about load order, it is quoting a requirement straight from that mod's page — Slopeless above Forgotten Buildings, Dwarven Weapons behind the GUI/texture/weather mods, Shiny Plate Armor last except GUI, the CTD fix patch at the very end. Those are the rules the authors themselves set, and they outrank any general guideline in this chapter.])

The load order is stored in *`mods.cfg`* in the game's data folder. KMM's drag & drop reordering is the tool you use to arrange it; its playsets are saved as separate `.cfg` files. One caveat the verification flagged honestly: KMM's documentation does not confirm whether it writes the game's `{Kenshi}/data/mods.cfg` directly, and it does not document whether its drag & drop direction (top of the list = first-loaded) matches Kenshi's "later = higher priority" exactly. The robust way to use KMM regardless of that uncertainty is to arrange the list so that the mod that must *win* a conflict sits *later* in the order, then confirm the result in the game itself — Kenshi's own Mods menu shows the order the game will actually load, and that is the source of truth.

The canonical ordering this guide follows is *base fixes and QoL first, content after*. Because the waves are cumulative (see Per-Wave Switching), the ordering below is the full shape of the list once every wave is installed; each wave's Modlist section restates the parts of it that matter at that point. Read it top to bottom as *earliest loaded → latest loaded*:

- *Compressed Textures Project* (Wave 0) — the very top of every setup. Its author instructs that it loads above all other mods, and every later wave's install order repeats that instruction so textures render correctly.
- *Base fixes and QoL* (Wave 0) — the performance and readability stack: *Dark UI*, *Nice Map*, *Particle System Override*, *Kenshi Performance Fix*. *Dark UI* and *Nice Map* are pure texture swaps, safe anywhere above content; *Expanded Craftable Weapons* (Wave 2) lists *Dark UI* as a dependency and needs it above.
- *Weather and visual pairs* — *Mood Weather* (Wave 1) pairs with *Particle System Override* (Wave 0); *Biome Edits* (Wave 3) is by the same author as *Mood Weather* and pairs with it, so keep the two near each other.
- *Map-layer mods together* — *Accurate Zones Patch* (Wave 3) edits the zone-border map texture and sits with the map-layer mods, independent of *Nice Map* (the GUI map) and *Biome Edits* (the terrain textures), so all three can load together.
- *Wave 1 content* — the settlement layer. Author-required order: *Slopeless* must sit *above* *Forgotten Buildings* (wrong order blocks placement of some buildings); *Mood Weather* already sits in the visual zone above. Do *not* run *Fish and Meat Industry* alongside its superseded sibling *Meat Production and Processing*.
- *Wave 2 content* — the forge. *Shiny Plate Armor* loads last except for GUI mods (author instruction — it touches many vanilla files); do *not* run *Radiant Vanilla Reborn Weapons* alongside *Radiant Asamarume Weapons* (they are already integrated in that mod's version 2.0); *Industrial Expansion* pairs with the vanilla research tree rather than replacing it.
- *Wave 3 content* — the expedition. *Dwarven Weapons* loads behind the GUI, texture and weather mods (author instruction); *Small Caravans* changes nothing in the base game and slots anywhere; the camping pair (*Sensible Nomadism - A Camping Overhaul* + *Tents*) stacks rather than conflicts.
- *Wave 4 content* — the conquest. *Reactive World* sits with the large overhauls, ahead of the small faction additions; *Cannibals Expanded* and *Shrieking Bandits Expanded* sit *below* *Reactive World* so their new equipment applies to the reworked factions; the *Reactive World + RP fCats - Patch* sits directly above *Recruit Prisoners for Cats*; do *not* run *Recruit Prisoners for Cats* alongside the original *Recruit Prisoners*.
- *Kenshi CTD fix patch* (Wave 0) — last of all. It auto-generates a patch mod that must sit at the very end of the load order.

#callout("Tip:", [If a mod's changes are not showing up in-game, the fix is almost always load order: move that mod *later* in the list so it loads after the mod it is conflicting with. Kenshi's rule is later = higher priority, so a mod that is being overwritten simply needs to move down the order. Check the launcher's Mods tab after every reorder to see what actually loaded.])

Each wave's Modlist section restates its own install order at the point where that wave is reached; the list above is the shape of the whole thing so you can see how the layers fit.

=== Launch & Verify

Once the mods for the active wave are fetched and ordered, start the game with KMM's *Save & Launch* — it applies your changes and launches Kenshi. Then verify that the load actually worked:

1. In Kenshi's launcher, open the *Mods* tab. It lists every installed mod and the order the game will load them — this is the authoritative view, not KMM's list.
2. Confirm every mod you enabled for this wave is present in that list, and that the order matches the canonical ordering above (top = the *Compressed Textures Project*, bottom = *Kenshi CTD fix patch*).
3. Confirm none of them reports a load problem. Every Kenshi mod is identified by its `.mod` file, so a mod whose files did not install correctly — a missing or misplaced `.mod` file — will not load, and the Mods tab is where that failure shows up.
4. Start a new game and play the first minutes of the wave's opening to confirm the mods behave before committing to the run. A wave's mechanics mods (farming, crafting, camping) are best confirmed by actually using them, not just by checking the list.

#callout("Warning:", [A mod that fails to load almost always means its files did not land where Kenshi expects them — not that the mod is broken. If the Mods tab flags one, re-fetch that single mod (re-subscribe on the Workshop, or re-download from Nexus), make sure its files are intact, and re-check. Verify every enabled mod loads cleanly *before* you invest hours in a new game, because the .mod failure is the one load-order error that cannot be fixed from inside a save.])

If the game starts and every enabled mod appears in the Mods tab with no load errors, the setup is done and you are ready for the wave you started.

=== Per-Wave Switching

The waves of this guide are one campaign played in order, and the mods you install are *cumulative*: Wave 0's six base mods (the UI, map, texture and performance stack) stay active in every wave, and each wave adds its own content on top of that foundation. The wave chapters confirm this continuously — *Expanded Craftable Weapons* (Wave 2) requires *Dark UI* (Wave 0); *Biome Edits* (Wave 3) pairs with *Mood Weather* (Wave 1); the Wave 3 expedition uses the portable turret kit from Wave 2; the Wave 4 defence doctrine assumes the Wave 2 crossbow turrets. So you never *remove* earlier mods; you *add* each wave's mods when you reach that wave.

"Enabling only the active wave's mods" means keeping the enabled set scoped to where you are in the campaign — the Wave 0 base plus the content of every wave you have reached, and nothing from the waves you have not. A Wave 0 fresh game should not carry Wave 4's faction overhauls; a Wave 2 game should not yet have Wave 3's expedition mods. In practice, switching waves means three things:

1. *Fetch the new wave's mods* (subscribe on the Workshop / download from Nexus) so they are available to KMM.
2. *Arrange them into the load order* using the canonical shape above — the new wave's content slots in below the Wave 0 base, under its own wave's ordering rules.
3. *Start the wave's setup* — continue the same save where the waves are sequential, or start (or import into) a new game for that wave's fresh start, then verify in the launcher's Mods tab that the active wave's mods all load.

Because KMM saves each playset as its own `.cfg` file, the cleanest way to manage this is to *save a playset at the end of each wave* — one for the base setup, one with each wave's content added — so switching between setups is a matter of loading the saved playset instead of re-arranging the list by hand.

#callout("Tip:", [Save a KMM playset after every wave's setup is verified. Name it for the wave ("Wave 0", "Wave 1", ...), and you have a one-click state for the whole campaign: start a new game from the playset for the wave you are on, and you can always return to the exact verified state of an earlier wave. The playset is the wave-switching mechanism KMM itself provides, so use it instead of re-ordering the list by hand.])

With the game at 1.0.68, KMM pointed at it, the mods fetched, ordered and verified, and a playset saved per wave, the installation is complete. The next chapter opens the campaign itself.
