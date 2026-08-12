// The 3rd Coming - Cosmetics & Visuals category
// Cards transcribed from the user-supplied [WOTC] Core Collection baseline (2026-08-12)
// and the LWOTC Community QoL Collection (2026-08-12, advanced-wave suggestions).
// Card format:
//   #mod-entry(name: "Mod name", url: "https://steamcommunity.com/...", deps: "...", impact: "...", notes: "...")
// A field the user did not supply stays out of the card.

// mod card renderer (include scope does not share #let bindings from template.typ)
#let mod-entry(name: none, url: none, deps: none, impact: none, notes: none) = {
  let cyan = rgb("#00e5ff")
  let card = rgb("#131a26")
  let hairline = rgb("#263449")
  v(5pt)
  block(
    fill: card, inset: (x: 12pt, y: 10pt), radius: 6pt, stroke: 0.6pt + hairline,
    width: 100%,
  )[
    #if name != none [
      #if url != none [
        #link(url)[#text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)]
      ] else [
        #text(weight: "bold", size: 12pt, fill: cyan, font: "Bahnschrift", name)
      ]
    ]
    #if deps != none [#v(5pt) #text(weight: "bold", fill: cyan)[Dependencies:] #deps]
    #if impact != none [#v(3pt) #text(weight: "bold", fill: cyan)[Impact:] #impact]
    #if notes != none [#v(3pt) #text(weight: "bold", fill: cyan)[Notes:] #notes]
  ]
  v(4pt)
}

== Cosmetics & Visuals

Appearance: soldier cosmetics, environment visuals, and effects. These cards change how the game *looks*, not how it plays - unless a card's Impact explicitly says otherwise.

=== Soldier Appearance

#mod-entry(
  name: "WOTC - Configurable Headshots",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1273848330",
  notes: "This small mod generates visually more pleasing soldier portrait photos. For some strange reason Firaxis tinkered with the way soldier portrait photos ('headshots') are shot in WOTC.",
)

#mod-entry(
  name: "[WOTC] Visible Utility Items by Iridar",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2849922249",
  notes: "This small and purely visual mod will make grenades and other utility items visible at all times in the Armory, and, with some caveats, in Tactical.",
)

=== Effects & Presentation

#mod-entry(
  name: "Post Process Status Effects",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1290331416",
  notes: "Adds post-process visual effects for when a soldier is affected by Fire, Acid, Poison or Disorientation so you immediately notice that.",
)

#mod-entry(
  name: "[WOTC] Cinematic Rapid Fire (and other abilities)",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1124794449",
  notes: "Gives Rapid Fire, and it's ugly sister Chain Shot, their cinematic camera back! Also, with WotC, shows the reaper Banish ability the love too.",
)

#mod-entry(
  name: "SQUID BE GONE!",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2392049232",
  notes: "There is a mystery bug around for a very long time. Its hillarious, its scary, it comes and it goes and there was no cure to be found!",
)

#mod-entry(
  name: "Grey Smoke Grenade",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=742478385",
  notes: "Seriously! Who thought that this pink was a good idea? Gives Smoke Grenades and Smoke Bombs a grey smoke and blinking light, in case that wasn't obvious enough.",
)

#mod-entry(
  name: "[WOTC] Holographic Scanning",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=2234141519",
  notes: "A simple config edit mod with some provided materials, that changes how scanned units look. It makes units that have been scanned look like the mimic beacon holograms. The original 'solid red' look...",
)

#mod-entry(
  name: "EvilBob's Dejanker",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=3314878803",
  notes: "Inspired by, and similar to, the Avenger Dejanker mod, this mod is an attempt to fix up and improve some of the 'good enough' graphical stuff out there. It now also includes broken/missing text entries. The original Avenger Dejanker is not required.",
)

#mod-entry(
  name: "(WOTC) Zip Mode Combat Protocol Camera Fix",
  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=1278585557",
  notes: "A tiny mod to fix a tiny (but annoying) problem. If you're using zip mode, the default camera for Combat Protocol shows a close-up of your Specialist, but by the time the camera cuts away, the Gremlin is already at the target, and the whole thing just looks wrong.",
)
