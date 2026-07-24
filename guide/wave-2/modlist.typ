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


== Wave 2 — Modlist: Mechanics

This wave introduces mechanics overhaul mods that change core gameplay systems.

== Army Loyalty & Morale Overhaul

#mod-entry("Loyalty & Mutiny System", "https://example.com/mod-loyalty", "v1.0", "", "Overhauls army loyalty mechanics. Armies now have a loyalty rating that affects performance, defection risk, and mutiny likelihood. Low loyalty causes armies to refuse orders or flip sides.")

#mod-entry("Veteran Retention Pack", "https://example.com/mod-veterans", "v0.7", "Loyalty & Mutiny System", "Adds veteran unit retention mechanics. Experienced units carry over bonuses across battles but are lost permanently if the army is destroyed.")

== Economy Overhaul

#mod-entry("Scarce Resources Overhaul", "https://example.com/mod-scarcity", "v1.2", "Loyalty & Mutiny System", "Drastically reduces resource availability. Economy requires careful management of supply lines and trade routes. No region provides infinite income.")

#mod-entry("Destruction & Decay Mechanics", "https://example.com/mod-decay", "v1.1", "Scarce Resources Overhaul", "Provinces and infrastructure now degrade over time. Unmaintained buildings collapse. Unscouted regions become dangerous without warning.")

== Battle Mechanics

#mod-entry("Fatigue & Retreat System", "https://example.com/mod-fatigue", "v1.0", "Loyalty & Mutiny System", "Redefines army stamina in battle. Exhausted units rout more easily. Forced marches cause fatigue penalties that carry into combat.")

#mod-entry("Tactical Command Overhaul", "https://example.com/mod-tactics", "v0.6", "Fatigue & Retreat System", "Revamps the battle command system. New order types, improved formations, and context-sensitive commands that respond to battlefield conditions.")

== Notes

Wave 2 mechanics mods are deep gameplay changes. They depend on each other — activate the entire dependency chain or none at all. These mods are incompatible with some Wave 0/1 content mods.