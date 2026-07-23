// 10-le2.typ -- LE2 Mods

#import "lib.typ": mod-entry, callout

#pagebreak()

= Mods for Mass Effect 2

== Bugfixes and Community Patches

#mod-entry(
  name: "Unofficial LE2 Patch",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/8",
  game: "LE2",
  version: "v0.9.6",
  last-checked: "2025-11",
  deps: (),
  impact: [Comprehensive bugfix patch for Mass Effect 2 Legendary Edition by Team Pyjak. Fixes hundreds of bugs including floating props, incorrect lighting, bad camera angles, cloaking ability bugs, dust card pop-in, and audio issues.],
  notes: none,
)

#mod-entry(
  name: "Conrad Verner Remembers (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/385",
  game: "LE2",
  version: "v2.1",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Fixes the long-standing Conrad Verner import bug where he always believes Shepard pointed a gun at him in ME1, regardless of actual choices. Introduces an in-universe mechanic: inspect Conrad's picture in the Normandy cabin before ever landing on Illium to set the correct import flags. Also updates Conrad's appearance and dialogue to match your Shepard's decisions.],
  notes: [Must inspect the cabin picture BEFORE landing on Illium. Companion mod for ME3: Conrad No Apology (mod #579). Fully compatible with Unofficial LE2 Patch v0.9.5+.],
)

== Utilities and Frameworks

#mod-entry(
  name: "LE2 Prologue Framework",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2138",
  game: "LE2",
  version: "v1.1",
  last-checked: "2026-07",
  deps: ("Unofficial LE2 Patch",),
  impact: [Streaming framework that moves NPCs to their own files during the prologue (opening scene through Minuteman Station), dramatically improving compatibility between mods and reducing patch requirements. Functions similarly to the streaming framework in the LE3 Community Patch. Installing on its own produces no visible changes -- it is a dependency used by many character and appearance mods.],
  notes: [Required by 14+ mods including Expanded Shepard Armory, Liara Consistency Mod, Casual Hubs, and Armored Squad. Must be installed AFTER Unofficial LE2 Patch. Read the compatible/incompatible mod list on the mod page before installing.],
)

#mod-entry(
  name: "LE2 Improved Functionality",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1458",
  game: "LE2",
  version: "v2.0",
  last-checked: "2026-03",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Framework mod providing engine-level improvements required by certain LE2 mods and serving as a resource for other mod developers. Features include: helmet hides hair for henchmen, Arc Projector CTD fix, configurable armor/helmet matching system, coalesced-configurable camera shake, pawn sight radius, tracer speed, corpse cleanup disable, and power use configuration.],
  notes: [Required by mods from RepugnantPear (Armored NPCs, Armored Squad, etc.). Permissions open to all MELE mod developers with credit. Reporting bugs requires installation log.],
)

== Gameplay and Mechanics

#mod-entry(
  name: "DLC Timings Mod (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/382",
  game: "LE2",
  version: "v2.2",
  last-checked: "2025-11",
  deps: (),
  impact: [Delays Mass Effect 2 DLC content to more lore-appropriate moments. Normandy Crash Site unlocks after one main mission. Lair of the Shadow Broker requires meeting Liara on Illium first. Overlord can optionally be delayed until after Horizon. Arrival unlocks after the Collector Ship mission.],
  notes: none,
)

#mod-entry(
  name: "Early Recruitment (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/384",
  game: "LE2",
  version: "v2.1.5",
  last-checked: "2026-05",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Allows early recruitment of squadmates and early access to hubs: recruit Thane, Samara, and Tali earlier than vanilla, plus early access to Illium and Tuchanka. Also includes the Early Legion module for recruiting Legion before the IFF mission. Provides more freedom in squad composition throughout the game.],
  notes: none,
)

#mod-entry(
  name: "Geth Retrofits (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2600",
  game: "LE2",
  version: "v1.1.1",
  last-checked: "2026-06",
  deps: (),
  impact: [Overhauls the Geth faction in Mass Effect 2 for visual consistency with their Mass Effect 3 appearances. Updates Geth Trooper, Rocket Trooper, Hunter, and Prime meshes and textures to match LE3. Renames Geth Destroyer to Geth Pyro and matches LE3 appearance. Adds Geth Juggernauts to Hammerhead DLC.],
  notes: [Includes compatibility patches for Children of Rannoch and Subtle Faces for Quarians. Created by Audemus.],
)

#mod-entry(
  name: "EGM Weapons in Cutscenes (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2059",
  game: "LE2",
  version: "v1.5",
  last-checked: "2023-12",
  deps: (),
  impact: [Ported from EGM's code: makes Shepard and squadmates use their currently carried weapon in cutscenes instead of defaulting to the Avenger or Predator. Respects weapon animation types (single-handed vs. two-handed) to avoid animation glitches. All languages supported.],
  notes: [Split from the main EGM page for easier use in LE2-focused collections. Contents identical to the EGM version.],
)

#mod-entry(
  name: "Risky Suicide Mission (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1308",
  game: "LE2",
  version: "v1.9",
  last-checked: "2026-02",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Raises the stakes of Mass Effect 2's iconic Suicide Mission finale, making squadmate survival depend on more than just loyalty and ship upgrades. Adds a readiness tracking terminal to the Normandy cabin so you can check squad status during the campaign. Compatible with Early Recruitment, Virmire Savior Mod, and LE3 import.],
  notes: none,
)

#mod-entry(
  name: "Alternative Persuasion (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1983",
  game: "LE2",
  version: "v1.1",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Replaces the vanilla binary Charm/Intimidate threshold system with a probability-based persuasion mechanic. Charm and Intimidate options become dice-roll checks rather than hard point-gated requirements. Eliminates the strong incentive to go all-Paragon or all-Renegade, making Paragade and Renegon playstyles equally viable. Multiple difficulty options available.],
  notes: [Not compatible with Paragade Persuasion mod (#1673). Can be re-installed mid-playthrough to change difficulty. Save-scumming is prevented by design.],
)

#mod-entry(
  name: "Nos Astra Mineral Exchange",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1205",
  game: "LE2",
  version: "v1.2",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Adds a mineral exchange machine to Nos Astra on Illium, allowing players to purchase iridium, palladium, platinum, and element zero using credits. Provides an alternative to planet scanning for resource acquisition.],
  notes: none,
)

== UI and Quality of Life

#mod-entry(
  name: "Honest Fuel Depot",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1655",
  game: "LE2",
  version: "v1.0.1",
  last-checked: "2023-03",
  deps: (),
  impact: [Configurable, honest charging system for fuel depots in Mass Effect 2. No longer pays full price when you only need a partial refill of fuel or probes. Prices and resource amounts per tick are user-configurable. Fixes the vanilla oversight where partial purchases cost the same as full ones.],
  notes: none,
)

#mod-entry(
  name: "Updated Codex and UI Images (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1953",
  game: "LE2",
  version: "v1.1",
  last-checked: "2023-09",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Replaces outdated hand-created codex and user interface images from the original Mass Effect 2 with new images captured using Legendary Edition assets. Updates 30+ images including characters, races, weapons, and Normandy decks. Also fixes a bug where the Reaper IFF mission used the incorrect save/load image.],
  notes: none,
)

#mod-entry(
  name: "Let Me Stay (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1872",
  game: "LE2",
  version: "v1.0",
  last-checked: "2023-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Removes the constant and insistent on-screen hints telling you to leave the Quarian Fleet after Tali's trial. The hint now appears once for 5 seconds and never again. Players can still leave via the docking airlock or by pressing the default key.],
  notes: none,
)

#mod-entry(
  name: "HUD Enhancements LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1895",
  game: "LE2",
  version: "v1.1",
  last-checked: "2023-08",
  deps: (),
  impact: [Various improvements to the Mass Effect 2 HUD. Supports up to 6 weapon types per squadmate with Truly Unrestricted Weapons, allows controller Y-button power remapping on the fly, fixes all known mixed input issues (no UI flickering), enables hotkey bar toggle with Y key, and remembers hotkey bar hide state across saves. Fixes minor visual issues with weapon wheel and squadmate weapon icons.],
  notes: [All languages supported. Works with Myriad Pro Begone. Can lock interaction prompts to always show controller or keyboard prompts for mixed input setups like Steam Deck.],
)

#mod-entry(
  name: "LE2 Mission Results Screen Fix",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/896",
  game: "LE2",
  version: "v1.0",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Fixes the mission results screen in Mass Effect 2 that was broken in the Legendary Edition. Corrects the aspect ratio and positioning of UI elements for both standard 16:9 and ultrawide 21:9 displays.],
  notes: none,
)

#mod-entry(
  name: "Myriad Pro Begone",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1070",
  game: "Launcher",
  version: "v1.4",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Replaces the Myriad Pro font used throughout all three games' user interfaces with a cleaner, more readable alternative. Fixes character differentiation issues (L/I distinction), improves text alignment, adds drop shadows to LE2 dialogue wheel text, and fixes various UI text scaling issues across LE1, LE2, and LE3. Uses M3's merge functionality for compatibility.],
  notes: [Applies to all three games (LE1, LE2, LE3). Compatible with EGM's expanded Squad Select UI (v1.4+). Native support for iOS Datapad Messages Integration (v1.3+).],
)

== Weapons and Armor

#mod-entry(
  name: "Expanded Shepard Armory (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/5",
  game: "LE2",
  version: "v3.4",
  last-checked: "2026-07",
  deps: ("LE2 Prologue Framework", "ME3Tweaks Mod Manager", "Unofficial LE2 Patch"),
  impact: [Massive armor and casual outfit expansion featuring helmetless versions of all official DLC armors. Adds new armors ported from ME1, ME3, and Andromeda with brand-new textures including Blue Suns, Eclipse, Shadow Broker, and Spectre sets. Adds 20+ new casual outfits, helmet options, visors, and headgear. Features a "choose your gear on landing" system for every galaxy map location. New armors must be acquired through stores, research, or looting from faction-related missions.],
  notes: [Requires LE2 Prologue Framework, Unofficial LE2 Patch, and ME3Tweaks Mod Manager 8.1+. Sheploo Appearance Consistency Project strongly recommended for correct male Shepard tinting. Open ESA framework allows other modders to integrate their outfit creations. Includes ESA Lite option for vanilla purists.],
)

== Content

#mod-entry(
  name: "Optional Flirting Mod (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/839",
  game: "LE2",
  version: "v1.4.1",
  last-checked: "2023-07",
  deps: (),
  impact: [Makes flirting in Mass Effect 2 optional by clearly separating friendly and romantic dialogue choices. Adds Paragon/Renegade interrupt prompts for key romance moments. Prevents accidental romance lock-in. Includes Silent Kelly compatibility.],
  notes: none,
)

#mod-entry(
  name: "Same-Gender Romances for LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1115",
  game: "LE2",
  version: "v1.1.3",
  last-checked: "2025-11",
  deps: ("ME3Tweaks Mod Manager", "Unofficial LE2 Patch"),
  impact: [Allows Tali and Thane to be romanced by both male and female Shepard using restored and repurposed voiced dialogue from across the trilogy. Fixes imported FemShep/Ashley and MaleShep/Kaidan romance recognition. Adds same-gender flirt options for Gianna Parasini, Meln, Donovan Hock, and the Blue Suns recruiter. Dark Star and Sophist advertisements now properly reflect Shepard's romance history.],
  notes: [Requires Unofficial LE2 Patch. Native compatibility with F.I.S.H. Mod. Includes compatibility patch for Genesis Intro Dialogue Undo Mod.],
)

#mod-entry(
  name: "Spectre Expansion Mod - LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1888",
  game: "LE2",
  version: "v0.3.4",
  last-checked: "2023-11",
  deps: ("Unofficial LE2 Patch",),
  impact: [Expands Mass Effect 2 with the companion mod to the acclaimed LE3 Spectre Expansion Mod. Adds new star clusters (Nemean Alpha, Sin'kelar Cluster), restores cut galaxy map content (Iota Urania, Leyya, Susskind Station), introduces new emails and intelligence reports, standardizes email formatting to match ME3 style, and adds unique artwork for Baria Frontiers star charts.],
  notes: [Alpha stage. Fully playable but still receiving content updates. Requires Unofficial LE2 Patch. Compatible with Pinnacle Station Apartment mod.],
)

#mod-entry(
  name: "Earlier Cabin Invites (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1220",
  game: "LE2",
  version: "v2.0",
  last-checked: "2026-04",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Unlocks the short, post-romance cabin invite scenes with your Love Interest before the Suicide Mission, rather than only after it. Once you accept a romance with Miranda, Tali, Jack, Thane, Jacob, or Garrus, they can be invited to the cabin. Kelly is now also fully supported. Does not unlock romance culmination scenes early, only the post-Suicide Mission invites.],
  notes: [Tested with More Gay Romances, Extended Romance Scenes, and Multiple Romances. Unofficial LE2 Patch recommended but not required.],
)

#mod-entry(
  name: "Immersive Citizens LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1680",
  game: "LE2",
  version: "v1.0.3.6",
  last-checked: "2024-04",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Significantly increases NPC density in the main hubs of Mass Effect 2 -- Omega, Citadel, and Illium -- making them feel much more alive and bustling. Adds hundreds of new NPCs and dozens of props including benches, chairs, tables, couches, bottles, and plants across all hub areas. Built to make the galaxy feel truly populated.],
  notes: [Omega and Illium hubs completed. Citadel update planned. May impact performance on lower-end systems due to increased crowd density. Compatible with most texture mods and major LE2 mods. Built on Unofficial LE2 Patch fixes as a baseline.],
)

#mod-entry(
  name: "Interactive Intai'sei Apartment (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2536",
  game: "LE2",
  version: "v1.2.1",
  last-checked: "2026-04",
  deps: ("Extended Galaxy Map LE2", "ME3Tweaks Mod Manager", "Pinnacle Station DLC", "Unofficial LE2 Patch"),
  impact: [Ports the apartment from the lost Mass Effect 1 Pinnacle Station DLC into Mass Effect 2 with a fully interactive and upgraded space. Features cutscenes and interactions for both single and romanced Shepards who can invite Miranda, Jacob, Tali, Garrus, Jack, Thane, Kelly, or Liara. Includes weapon/armor lockers, medigel station, mail terminal, and real-time lighting throughout. Retrofitted with modern ME3 and Andromeda assets for a polished look.],
  notes: [Requires earning the apartment in LE1 via Pinnacle Station DLC and importing with Unofficial LE2 Patch + Extended Galaxy Map LE2 with ME1 Clusters enabled. Requires ME3Tweaks Mod Manager 9.2+. Grants access via email after 2 main quests. Compatible with Same-Gender Romances, More Gay Romances, Casual Hubs, and Liara Consistency Mod.],
)

#mod-entry(
  name: "Extended Galaxy Map LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2535",
  game: "LE2",
  version: "v1.9.1",
  last-checked: "2026-05",
  deps: ("Unofficial LE2 Patch",),
  impact: [Restores cut galaxy map content to Mass Effect 2, adding back systems and planets that were present in Mass Effect 1 but removed in ME2. Restores planet descriptions, locations, and galaxy map visuals including missing planet textures. Extends the explorable galaxy to feel more connected to the first game.],
  notes: [Beta status. Requires Unofficial LE2 Patch v0.9.6 or higher.],
)

== Characters and Appearance

#mod-entry(
  name: "Liara Consistency Mod (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1062",
  game: "LE2",
  version: "v4.3",
  last-checked: "2026-02",
  deps: ("LE2 Prologue Framework", "Unofficial LE2 Patch"),
  impact: [Makes Liara's facial appearance fully consistent within Mass Effect 2. Choose between her original ME1 basegame look, her Lair of the Shadow Broker look, or her Mass Effect 3 appearance.],
  notes: none,
)

#mod-entry(
  name: "Sheploo Appearance Consistency Project",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/484",
  game: "LE2",
  version: "v2.0",
  last-checked: "2022-03",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Fixes default Male Shepard's (Sheploo) inconsistent appearance in Mass Effect 2. Restores the tintable, unpainted face and scalp textures from Mass Effect 1, resolving the orange "cheetoh" look that doesn't properly tint with any outfit. Also corrects eyelash opacity to match ME1 and ME3.],
  notes: none,
)

#mod-entry(
  name: "Oriana looks like Miranda's Twin (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/413",
  game: "LE2",
  version: "v1.2.1",
  last-checked: "2026-03",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Small lore-friendly mod that changes Oriana's face to match Miranda's, so they actually look like genetic twins. Offers two hairstyle options: a new style based on Project Variety or her original classic hairstyle. Uses softer, younger Miranda textures.],
  notes: none,
)

#mod-entry(
  name: "Cat Suits for Female Shepard (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1065",
  game: "LE2",
  version: "v1.0",
  last-checked: "2022-02",
  deps: (),
  impact: [Adds several new cat suit outfits for female Shepard. Suits are added to Shepard's closet and can be worn as casual outfits or as armor pieces. To use as armor, pair with a mod that hides vanilla armor parts such as Mr. Jack's Mod (#417). LE1 and LE3 versions also available by the same author.],
  notes: none,
)

#mod-entry(
  name: "Children of Rannoch - A Quarian Overhaul (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/2156",
  game: "LE2",
  version: "v1.1.2",
  last-checked: "2026-04",
  deps: ("Unofficial LE2 Patch",),
  impact: [Extensive visual overhaul for all quarians in Mass Effect 2. Adds unique face morphs for each quarian, diverse face textures with emissive freckles and face markings, new varied outfits and cloth patterns, visor transparency options, and more detailed meshes. Inspired by official concept art. Provides compatibility patches for many major LE2 mods.],
  notes: [Hard requirement: Unofficial LE2 Patch. Not compatible with mods that change Tali or other quarians. Includes Tali wardrobe addon (mod #2171). LE1 version also available (mod #1812).],
)

#mod-entry(
  name: "Miranda Butt Shot Restoration (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/393",
  game: "LE2",
  version: "v1.0",
  last-checked: "2021-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Restores Miranda's various butt shots that were removed from Mass Effect 2 Legendary Edition. The LE3 version of this mod (mod #392) is also available.],
  notes: [Adult content mod. LE3 counterpart available as mod #392.],
)

#mod-entry(
  name: "Armored NPCs (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1998",
  game: "LE2",
  version: "v1.8",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager", "Unofficial LE2 Patch"),
  impact: [Outfits key NPCs throughout Mass Effect 2 with custom, lore-appropriate armor. C-SEC officers on the Citadel wear custom light armor and carry weapons. Alliance Marines use LE3-style armor. Nos Astra security, Omega guards, and Cerberus crew receive appropriate gear. Horizon squadmates (Ashley and Kaidan) wear Alliance heavy armor. Arrival mission Batarians get custom helmets and armor.],
  notes: [Includes compatibility patches for Expanded Shepard Armory, F.I.S.H. Mod, and Casual Hubs. Built on Unofficial LE2 Patch and LE2 Improved Functionality.],
)

#mod-entry(
  name: "Aria Consistency Mod (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1068",
  game: "LE2",
  version: "v1.1",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Makes Aria T'Loak's appearance consistent with her look from the Omega DLC. Updates her outfit and facial features with improved models and textures, including proper fingerless gloves. Planned as part of Project Variety for MELE2.],
  notes: none,
)

#mod-entry(
  name: "Anderson and Hackett Consistency Mod (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1063",
  game: "LE2",
  version: "v2.1",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Gives Admiral Hackett and Admiral Anderson their unique dress blues from Mass Effect 3. Anderson's face can optionally be replaced with his ME1 or ME3 version. Also replaces Anderson's picture of Kaidan with Kahlee Sanders. Appearance options selectable at install time.],
  notes: [Fully compatible with Expanded Shepard Armory. Planned as part of Project Variety for MELE2.],
)

#mod-entry(
  name: "More Hair for Femshep (ME2LE)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/481",
  game: "LE2",
  version: "v1.2",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager", "Trilogy Save Editor"),
  impact: [Adds a large collection of new hairstyles for female Shepard in Mass Effect 2, ported from Sims 4 hairs by Anto. Hairstyles must be applied using the Trilogy Save Editor. Also serves as a modder's resource for other hair mods.],
  notes: [Requires Trilogy Save Editor to apply hairstyles to Shepard. LE1 version (mod #495) and LE3 version (mod #493) also available.],
)

== Texture Mods

#mod-entry(
  name: "Relay Jump Remaster (LE2)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/418",
  game: "LE2",
  version: "v4.0",
  last-checked: "2026-05",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Completely redesigned 4K relay jump video for Mass Effect 2 combining an entirely new CGI shot with edited Mass Effect 3 relay footage. Uses Bink 2 format at 4K 60fps with AI-based interpolation and high-quality Wwise audio. Created by the team behind ALOV.],
  notes: [Requires ME3Tweaks Mod Manager 8.1 or newer.],
)

#mod-entry(
  name: "Improved Normandy Crash Site Flashback Textures",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/874",
  game: "LE2",
  version: "v2.0",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Replaces all 8 flashback textures shown during the Normandy Crash Site DLC with new 4K versions. The vanilla textures still used low-resolution ME1 Xbox 360 graphics at 1024x512. Includes an Alliance Uniform Consistency continuity version for players using that mod in LE1.],
  notes: [Requires ME3Tweaks Mod Manager 9.2 or newer for the Texture Override system. A Unofficial LE2 Patch compatible version is available and recommended if using both mods. Install BEFORE content mods if possible.],
)

#mod-entry(
  name: "GunMetal Weapon Textures (LE2 and LE3)",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1772",
  game: "LE2",
  version: "v1.0",
  last-checked: "2026-07",
  deps: (),
  impact: [Texture replacement for various weapons in LE2 and LE3 that removes ugly labels and decals from albedo and normal maps, and alters tint maps so only the weapon light color changes on upgrade. LE2 covers: Predator, Phalanx, Viper, Geth Rifle, Vindicator, and Katana. LE3 covers: Arc Pistol, Predator, Phalanx, Viper, and Geth Rifle.],
  notes: [Applies to LE2 and LE3. Requires Mass Effect Modder (MEM) to install. Vanilla .mem files included for each weapon if you want to revert. Always install texture mods AFTER content mods.],
)

#mod-entry(
  name: "A Lot Of Textures (ALOT) -- LE2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/363",
  game: "LE2",
  version: "v2021.1.0",
  last-checked: "2026-07",
  deps: (),
  impact: [Massive vanilla-friendly graphical overhaul for Mass Effect 2. Combines hand-crafted texture replacements from the original OT ALOT project (endorsed by BioWare as a key inspiration behind the LE) with a vastly improved Improved Static Lighting (ISL) component. ISL runs ~40,000 light and shadow maps through neural network-based denoising, antialiasing, and upscaling to eliminate blocky shadows and lighting artifacts. Fixes the most glaring upscaling issues in LE with textures for the Presidium sky, text holograms, Legion, Tali, EDI, Garrus, Liara, and more.],
  notes: [Separate download files for LE1, LE2, and LE3 on the same mod page. Two installation methods: MEM (Mass Effect Modder) replaces all matching textures globally and must be installed AFTER all content mods; M3TO (ME3Tweaks Mod Manager Texture Override) replaces at runtime by asset name, can be toggled on/off, and should be installed BEFORE any .mem mods. M3TO is faster and more flexible. Always install texture mods AFTER content mods.],
)

#mod-entry(
  name: "LEUITM2",
  url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/1827",
  game: "LE2",
  version: "v1.0",
  last-checked: "2026-07",
  deps: ("ME3Tweaks Mod Manager",),
  impact: [Lore-friendly HD texture pack for Mass Effect 2 and companion to LEUITM for LE1. Hand-crafted texture replacements for character faces, armor, environments, and props with many LE-specific bug fixes. Resolves upscaling artifacts, UV mapping issues, unaligned character teeth, specular and normal map miss-mapping, and Asari color correction (removes neon blue skin). Features variant options for Asari skin, Liara face progression, Garrus armor style, and Wrex appearance. Each variant is optional and mutually exclusive per category.],
  notes: [Install AFTER all content mods and DLC mods. Designed to complement LEUITM for LE1. Install via ME3Tweaks Mod Manager texture tools (.mem files). Choose only one variant per character/category.],
)

=== Recommended Load Order

Install texture mods in the following order using Mass Effect Modder (MEM). Later mods overwrite earlier ones, so install higher-priority mods last:

#callout("info", [
  + ALOT
  + ALOT ISL
  + 4k Upscaled Armor and Cloth Textures
  + LEUITM2
  + Primitives
  + 4k Enhanced Textures MEM
  + Exoplanets
  + Complexion
  + Paramour
  + Relay Jump Remaster
  + Improved Normandy Crash Site Flashback Textures
  + GunMetal Weapon Textures
])
