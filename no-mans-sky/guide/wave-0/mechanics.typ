#import "../helpers.typ": *

==== Wave 0: Mechanics

Wave 0's mechanics chapter explains the systems a beginner actually interacts with, and where UI/QoL mods are allowed to help without breaking the wave's rule. If a tool tells you more about the game, that is allowed. If it changes what the game *is*, it belongs to a later wave.

===== Survival & Inventory

The survival loop lives on two meters and four inventories. Beginner mechanics to understand: life support (oxygen), hazard protection (sodium), and the fact that inventory space, not money, is your real early-game resource.

This is the most common home for Wave 0 mods: inventory conveniences, stack-size clarity, and survival-meter readability are all "easier to operate" — allowed here, as long as nothing changes the rates the game uses.

#mod-entry(
  "Better Ship Transfer Ranges",
  url: "https://www.nexusmods.com/nomanssky/mods/1201",
  deps: "None",
  impact: "Raises the distance at which you can transfer items to your ship from 50 m to 200 m (and the teleport-module transfer from 100 m to 400 m), so the game stops telling you the ship is out of reach while you are mid-inventory. A convenience distance, not a rate change.",
  notes: "by Lo2k, v6.0, updated 2025-10-06. Two small files (ship range + teleport module range); both are safe to install together.",
)

===== Scanning & Navigation

Scanning and the analysis visor are how you see the world: flora and fauna discovery, resource deposits, points of interest. The mission log and galaxy map are your navigation.

Mods that make discovery data clearer or navigation easier to read fit here. Mods that reveal things the game hides (such as exact planet resource surveys) are a judgement call: if the information is something the game shows you anyway, reformatted, it is allowed; if it is information the game withholds, it changes the planning challenge and belongs to a later wave.

#mod-entry(
  "Faster Scanning",
  url: "https://www.nexusmods.com/nomanssky/mods/2284",
  deps: "None",
  impact: "Shortens the analysis-visor scan and its cooldown so tagging minerals, plants, fauna, and points of interest stops interrupting you. Scan timing is an animation delay, not a game value — nothing you scan changes.",
  notes: "by Flugelwulff, v6.45, updated for game 6.45 — matches this guide's target version. Pick one speed variant; the instant option is the most aggressive.",
)

#mod-entry(
  "Exact Markers",
  url: "https://www.nexusmods.com/nomanssky/mods/1375",
  deps: "None",
  impact: "Restores the old marker behaviour where waypoint icons sit exactly on top of the resource or building they mark, instead of floating far above it. Makes tagged targets easier to find and track — readability only.",
  notes: "by Lo2k, v2.4, updated 2025-01-29 (Worlds Part II modding scheme).",
)

===== Ship & Exosuit QoL

Your ship and exosuit are your body in this universe. Beginner-relevant QoL: refuelling reminders, inventory transfer shortcuts, launch-thruster visibility.

Wave 0 mods here may only make these interactions clearer — never cheaper, faster, or stronger. A reminder that your launch fuel is low is allowed; a mod that makes launch fuel last longer is not (that is a numbers change).

#mod-entry(
  "Better Pulse Drive Aim",
  url: "https://www.nexusmods.com/nomanssky/mods/2573",
  deps: "None",
  impact: "Shrinks the invisible target zones the pulse drive locks onto, so your ship only engages pulse toward something you are genuinely pointing at — no more yanking you toward a random building when you meant to skim the rings. Control QoL, no speed or fuel changes.",
  notes: "by Andarius, maintained by Lo2k (v2.3, updated 2025-01-31, Worlds Part II scheme). If you later add a mod that edits the same ship-globals file, merge via the author's AMUMSS article.",
)
