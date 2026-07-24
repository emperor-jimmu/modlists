#let mod-entry(name, url, version, deps, impact) = {
  grid(
    columns: (auto, 1fr),
    rows: (auto, auto),
    gutter: 0.2em,
    {
      if url != "" and url != none {
        link(url)[#text(weight: "bold", size: 10.5pt, name)]
      } else {
        text(weight: "bold", size: 10.5pt, name)
      }
    },
    {
      if version != "" and version != none [
        *Version:* #version
      ]
      if deps != "" and deps != none [
        *Dependencies:* #deps
      ]
      if impact != "" and impact != none [
        *Impact:* #impact
      ]
    },
  )
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