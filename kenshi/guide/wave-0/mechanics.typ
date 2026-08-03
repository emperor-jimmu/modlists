#let mod-entry(name, url, version: none, verified: none, deps: none, impact: none, notes: none) = {
  block(fill: rgb("#f2ead9"), inset: 10pt, radius: 4pt, stroke: 0.5pt + rgb("#b3492e"))[
    #link(url)[#text(weight: "bold", size: 11pt, fill: rgb("#8c2b2b"), name)]
    #if version != none [#v(4pt) *Version/Updated:* #version]
    #if verified != none [#v(3pt) *Verified:* #verified]
    #if deps != none [#v(3pt) *Dependencies:* #deps]
    #if impact != none [#v(3pt) *Impact:* #impact]
    #if notes != none [#v(3pt) *Notes:* #notes]
  ]
}

== The Wanderer: Mechanics

These four mods do not add content — they change how the engine performs. Each one removes an inefficiency in Kenshi's OGRE-era engine (per-frame texture conversion, broken meshes, broken shaders, animation crashes) so the game runs smoother and more stable on 1.0.68. None of them touch stats, damage, prices or caps, so the power-spike test is passed untouched.

#mod-entry(
  "Compressed Textures Project",
  "https://steamcommunity.com/sharedfiles/filedetails/?id=1649794243",
  version: "Posted 9 Feb 2019 (no updates since)",
  verified: "YES — Steam Workshop page fetched; title matches",
  deps: "None — self-contained",
  impact: "Re-compresses every landscape texture from 2048 to 1024 and other assets from 4096 to 2048 in DXT5, cutting loading times, stuttering and VRAM use with almost no visible quality loss.",
  notes: "16,290 ratings, 753k+ subscribers. 1.339 GB download. Author instruction: place above all other mods. No save import required. If you later adopt RE_Kenshi, its built-in compression supersedes this mod.",
)

#mod-entry(
  "Particle System Override (PSO)",
  "https://www.nexusmods.com/kenshi/mods/950",
  version: "Updated 21 Jul 2024",
  verified: "YES — Nexus page fetched; title matches",
  deps: "None — self-contained (installer; Steam and GOG)",
  impact: "Kenshi ships particle images as .PNG files that the engine converts to .DDS every time they load, causing hitches. PSO pre-converts every particle to DXT-compressed .DDS, removing the per-frame conversion cost and stabilising FPS during fights, weather and in foliage-heavy zones.",
  notes: "Tagged Performance Optimization on Nexus. An installer walks you through the swap and keeps backups. Designed to pair with Kenshi Performance Fix (run PSO first).",
)

#mod-entry(
  "Kenshi Performance Fix",
  "https://www.nexusmods.com/kenshi/mods/1216",
  version: "Updated 8 Jul 2023",
  verified: "YES — Nexus page fetched; title matches",
  deps: "None — but pairs with Particle System Override (run PSO first)",
  impact: "One-pass overhaul that fixes broken engine meshes, repairs broken shader files, and applies the same particle and water optimisations as PSO, reducing crashes and improving frame pacing across the whole game.",
  notes: "Installer-based (Steam and GOG). Version 1.3 reworked its missing-file set to align with PSO. Alongside the CTD patch this is the standard stability core of most Kenshi modlists.",
)

#mod-entry(
  "Kenshi CTD fix patch",
  "https://www.nexusmods.com/kenshi/mods/506",
  version: "Updated 30 May 2024",
  verified: "YES — Nexus page fetched; title matches",
  deps: "None — self-contained",
  impact: "Fixes animation-related crashes-to-desktop and adds alerts for broken save files; on first launch it auto-generates a small patch mod that repairs invalid race-animation references before they can crash the game.",
  notes: "Updated a month after the 1.0.68 release, so it is current with the target build. The generated patch must sit at the very end of the load order. Widely recommended in community modlists (UWE/KAIZO etc.).",
)
