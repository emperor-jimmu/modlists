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


== Wave 0 — Modlist: Vanilla + UI/QoL

This wave contains only vanilla-compatible and QoL UI mods. No gameplay-altering mechanics are included.

== UI & Quality of Life

#mod-entry("Improved Campaign UI", "https://example.com/mod-campaign-ui", "v1.0", "", "Improves tooltip readability and streamlines the campaign map interface. Makes province management and agent assignments more intuitive.")

#mod-entry("Streamlined Army Management", "https://example.com/mod-army-ui", "v0.9", "Improved Campaign UI", "Reduces the number of clicks needed to manage army reinforcement, auto-sort, and embark. Army recruitment menus are redesigned for clarity.")

#mod-entry("Better Turn Flow", "https://example.com/mod-turnflow", "v1.2", "", "Speeds up non-combat turn processing and adds batch-end-turn functionality. Reduces micro-management without removing strategic depth.")

#mod-entry("Enhanced Notification Panel", "https://example.com/mod-notifications", "v1.1", "", "Consolidates in-game notifications into a single, sortable panel. Prevents important event popups from being lost in the UI clutter.")

#mod-entry("Quick Select Toolbar", "https://example.com/mod-quickselect", "v0.8", "Better Turn Flow", "Adds a customizable quick-access toolbar for frequently used commands: retreat, fortify, auto-battle, and army stance.")

== Notes

Wave 0 is designed for new players. The mods here only improve the interface and quality of life — nothing changes core game balance or mechanics.