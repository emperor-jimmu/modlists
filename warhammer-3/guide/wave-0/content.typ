#let mod-entry(name, url, version, deps, impact) = {
  block(
    fill: rgb("#f8f9fa"),
    inset: 10pt,
    radius: 4pt,
    stroke: 0.5pt + rgb("#dfe6e9"),
  )[
    #if url != "" and url != none {
      link(url)[#text(weight: "bold", size: 11pt, name)]
    } else {
      text(weight: "bold", size: 11pt, name)
    }
    #if version != "" and version != none [
      #v(4pt)
      *Version:* #version
    ]
    #if deps != "" and deps != none [
      #v(3pt)
      *Dependencies:* #deps
    ]
    #if impact != "" and impact != none [
      #v(3pt)
      *Impact:* #impact
    ]
  ]
}


== Wave 0 — Content Mods

Light, lore-friendly content additions that expand the vanilla experience without disrupting balance. Nothing here adds new factions, units, or mechanics — these enrich the world you already know.

#mod-entry("Legendary Lore", "https://steamcommunity.com/sharedfiles/filedetails/?id=2789857945", "v8.1 (May 2026)", "", "Adds lore-flavoured narrative text to the campaign: travel to significant locations to learn your lord's story, conquer racial capitals to trigger loreful events, and discover regional lore by building settlements and recruiting units. No gameplay impact whatsoever — pure flavour for the Old World.")

#mod-entry("Recruit Defeated Legendary Lords", "https://steamcommunity.com/sharedfiles/filedetails/?id=2854819509", "v8.1 (Jul 2026)", "", "When a faction is destroyed, its legendary/immortal lords and heroes become available to surviving factions of the same race (player preferred, AI also benefits). Adds a refugee dilemma so you choose who joins you. A small campaign convenience that prevents lost lords from vanishing forever.")

== Notes

Content mods in Wave 0 add flavour and light conveniences. They do not introduce new mechanics or faction-specific systems — heavy content arrives with Wave 1.
