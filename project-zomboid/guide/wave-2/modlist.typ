#import "../template.typ": *

= Modlist -- Wave 2

Wave 2 is the full apocalypse. Over 40 mods across every category -- realism, difficulty, content, immersion. Each adds a layer to the survival simulation. The training wheels are off. No one is coming.

== Mod Manager

#mod-entry(
  "[B42] Mod Manager",
  "3567084868",
  "UI / QoL",
  "None",
  "Mod management, profiles, load order, conflict detection.",
  "Mandatory. Create a 'Wave 2' profile. Disable all Wave 0 and Wave 1 mods. Wave 2 is a fresh start.",
)

== Frameworks & Libraries

#mod-entry(
  "Profession Framework B42",
  "3389904146",
  "Framework",
  "None",
  "Framework for adding and editing professions and traits. Simplifies modding, allows professions to have special traits (Brave, Lucky, etc.), and simplifies starting gear assignment. Required by profession-adding mods.",
  "Required by all profession/trait mods in this wave. Load early.",
)

#mod-entry(
  "Mark Dynamic Traits Framework (MDTF)",
  "3766701843",
  "Framework",
  "None",
  "Marks dynamic traits with [~] in the UI so you know which traits can be earned or lost mid-game. Supports dynamic trait mods like Evolving Traits World.",
  "Lightweight compatibility layer. Required by dynamic trait systems.",
)

#mod-entry(
  "Skill Recovery Journal PATCH EDITION (42.19)",
  "3728736631",
  "Framework",
  "None",
  "Adds craftable skill journals that preserve skill progress across death. Write down what you know, and your next survivor can recover those skills. Essential for hardcore runs.",
  "Critical for Wave 2. Death will come. Your skills don't have to die with you.",
)

#mod-entry(
  "Distillery & Biofuel Framework",
  "3768354926",
  "Framework",
  "None",
  "Framework for brewing alcohol and producing biofuel. Enables distilling systems and alternative fuel production. Required by brewing/biofuel mods.",
  "Enables alternative fuel and brewing systems. Load before crafting mods.",
)

== Survival Overhauls

#mod-entry(
  "RECIPES OF DEATH B42 HARDCORE",
  "3753700996",
  "Survival / Hardcore",
  "None",
  "Hardcore survival recipe overhaul. Deadlier crafting, more realistic material requirements, and recipes that punish mistakes. Not for the faint of heart.",
  "Makes crafting more dangerous and demanding. The name is a warning.",
)

#mod-entry(
  "Lifestyle: Hobbies 42.12 version",
  "3622178177",
  "Survival / Lifestyle",
  "None",
  "Adds a lifestyle and hobby system. Smoking, drinking, recreational activities -- manage your survivor's morale and vices alongside hunger and thirst. Vices have consequences.",
  "Adds depth to the daily survival loop. Morale matters now.",
)

#mod-entry(
  "Realistic Temperature [B42]",
  "3601329551",
  "Survival / Realism",
  "None",
  "Overhauls the body temperature system with realistic heat and cold mechanics. Clothing insulation matters. Hypothermia and heat stroke are real threats. Weather kills.",
  "No more ignoring the seasons. Dress for the weather or die.",
)

#mod-entry(
  "Knox Weather Receiver [B42] [SP/MP]",
  "3765053321",
  "Survival / Weather",
  "None",
  "Adds a weather receiver item that forecasts upcoming weather, temperature, and storm systems. Plan your supply runs around the forecast -- or get caught in a blizzard.",
  "Knowledge is survival. Check the forecast before you leave base.",
)

#mod-entry(
  "Death Burden | Realistic death",
  "3766425118",
  "Survival / Hardcore",
  "None",
  "Realistic death consequences. Corpses have weight and burden, creating both practical and psychological challenges. Cleaning up after a fight has real cost.",
  "Every kill has a consequence. You can't just walk away from a massacre.",
)

#mod-entry(
  "[B42] Take A Bath And Shower",
  "3592172476",
  "Survival / Hygiene",
  "None",
  "Adds hygiene mechanics -- bathe in tubs, shower when water works, wash in rivers. Uncleanliness affects mood, infection risk, and NPC interactions.",
  "The apocalypse doesn't mean you stop being human. Stay clean or suffer.",
)

#mod-entry(
  "Plumbed Sink Mains Water Fix [B42]",
  "3764655475",
  "Survival / QoL",
  "None",
  "Fixes plumbed sinks to properly draw from mains water supply while it lasts. Essential plumbing fix for base building and water management.",
  "Make your base plumbing actually work. Water won't last forever.",
)

#mod-entry(
  "Immersive Water Shutoff [B42.15-42.20][MP]",
  "3599665197",
  "Survival / Realism",
  "None",
  "More realistic water shutoff timeline and pressure degradation. Water does not just stop -- it fades.",
  "Water pressure drops over days before the supply dies. Gives you a gradual warning instead of an instant cutoff.",
)

#mod-entry(
  "Immersive Blackouts [B42.15-42.20][MP]",
  "3607686447",
  "Survival / Realism",
  "None",
  "Gradual power grid failure with brownouts and flickering before total blackout.",
  "The power grid does not fail all at once. Experience brownouts, voltage drops, and flickering lights before the final blackout.",
)

#mod-entry(
  "[B42.14+] Exercise With Corpses (SP/MP)",
  "3404074048",
  "Survival / Hardcore",
  "None",
  "Allows dragging corpses as a form of exertion exercise. Fits the hardcore survival theme.",
  "Move corpses for fitness. Grim, practical, and fitting for Wave 2. Every chore is training.",
)

#mod-entry(
  "Let Me Eat Rats and Mice",
  "3416205082",
  "Survival / Food",
  "None",
  "Catch and eat small rodents. Grim survival food for desperate times.",
  "Set traps or catch rats and mice. Cook them for a meal. When calories are scarce, every protein source counts.",
)

#mod-entry(
  "Exercise With Gear Again",
  "3390760692",
  "Survival / Skills",
  "None",
  "Exercise while wearing gear, backpacks, and body armor. Train like you fight.",
  "Fitness training that accounts for your worn gear. Strength and endurance gains from moving under load.",
)

== Zombie Overhauls

#mod-entry(
  "Hark's Horde Night Revamped [B42.19]",
  "3713005182",
  "Zombies / Horde",
  "None",
  "On a recurring schedule you set, the dead come for your base. Rebuilt for B42 with MP support, smarter spawning, customizable sprinter percentages, and A.E.B.S. integration. They know where you live.",
  "The centerpiece of Wave 2 zombie difficulty. Configure carefully.",
)

#mod-entry(
  "Spring Cleaning - Horde Filter [B42 / MP]",
  "3766241758",
  "Zombies / Management",
  "None",
  "Filters and manages zombie horde spawns. Control what types of zombies appear, adjust spawn rates, and keep your game performant by limiting corpse accumulation.",
  "Performance tool and difficulty tuner. Essential with large hordes.",
)

#mod-entry(
  "IT'S THRILLER TIME! [horde]",
  "3762305797",
  "Zombies / Horde",
  "None",
  "Special themed zombie horde events with synchronized swarming behavior. Adds variety and unpredictability to the undead threat.",
  "Adds chaos to the horde experience. Not all swarms are created equal.",
)

#mod-entry(
  "Raining Zombies",
  "3763651059",
  "Zombies / Chaos",
  "None",
  "Zombies literally fall from the sky during certain weather events. Chaotic, terrifying, and deeply unfair -- perfect for a world with no hope of rescue.",
  "Pure chaos mod. The sky itself is no longer safe.",
)

#mod-entry(
  "Wake Them Up -- B42.19",
  "3769013808",
  "Zombies / Behavior",
  "None",
  "Changes zombie wake-up behavior. Sleeping zombies are more sensitive to noise, light, and movement. Stealth becomes a genuine survival skill, not just a convenience.",
  "Stealth is no longer optional. Wake up the wrong room and you die.",
)

== Realism Systems

#mod-entry(
  "Firearms B42 - Suppressors and Magazines Fix",
  "3764848955",
  "Realism / Firearms",
  "None",
  "Fixes suppressors and magazine mechanics for B42 firearms. Proper attachment behavior, realistic magazine loading, and suppressor degradation over use.",
  "Makes firearms behave like firearms. Supressors aren't magic.",
)

#mod-entry(
  "Shoot Through Barricades",
  "3766143397",
  "Realism / Ballistics",
  "None",
  "Bullets can penetrate barricaded windows, thin walls, and doors. No more invincible wooden planks. Adds realistic ballistics penetration to the game.",
  "Wood planks aren't bulletproof. Neither are your barricades against you.",
)

#mod-entry(
  "Water Pipes (Continued) B42.19+",
  "3768656166",
  "Realism / Plumbing",
  "None",
  "Plumbing system for bases. Connect rain barrels to sinks, showers, and washing machines. Continued fork maintained for B42.19+. Requires tools and skill to set up.",
  "Core base-building infrastructure. Running water is a luxury you earn.",
)

#mod-entry(
  "PlumbingPlus B42 - Easy Generator Fueling",
  "3767380999",
  "Realism / Electricity",
  "Water Pipes (Continued) B42.19+",
  "Add-on for Water Pipes. Simplifies generator fueling by connecting fuel barrels directly to generators. Keep the lights on without constant refueling trips.",
  "Requires Water Pipes. Automates generator maintenance for large bases.",
)

#mod-entry(
  "Plysken Solar Revolution",
  "3725311427",
  "Realism / Electricity",
  "None",
  "Complete off-grid solar system: solar panels, battery banks, and a Solar Computer for per-device power management, plus an automatic backup generator relay.",
  "Magazine-gated recipes, batteries that degrade, and linked banks that share one charge pool. A running bank powers the whole building with no generator noise or fuel. Standalone B42 rewrite of Immersive Solar Arrays -- no ISA needed. SP & MP.",
)

#mod-entry(
  "Burnt Ground Recultivation [B42]",
  "3767187217",
  "Realism / Farming",
  "None",
  "Allows recultivation of burnt or degraded soil. Essential for long-term farming sustainability after fires, soil exhaustion, or zombie decay contamination.",
  "Long-term survival requires sustainable farming. Reclaim dead earth.",
)

#mod-entry(
  "Tanks Have Propane (B42)",
  "3676347667",
  "Realism / Resources",
  "None",
  "Propane tanks can be refilled at gas stations. Realistic propane management for welding and cooking.",
  "Empty propane tanks can be refilled at gas station pumps. No more throwing away perfectly good tanks.",
)

#mod-entry(
  "[B42] Realistic Weights - Ravense",
  "3388351722",
  "Realism / Items",
  "None",
  "Realistic item weight adjustments. Heavier tools, lighter clothes, more sensible encumbrance.",
  "Adjusts item weights to be more realistic. A sledgehammer should be heavy. A t-shirt should not.",
)

#mod-entry(
  "[B42/41] Adrenaline - Panic Counters Tiredness",
  "2807001835",
  "Realism / Physiology",
  "None",
  "Panic and adrenaline mechanics interact with tiredness. Fear keeps you awake; safety lets you crash.",
  "Adrenaline from panic counters fatigue. Coming down from a panic attack causes exhaustion. Realistic stress response.",
)

== Professions & Traits

#mod-entry(
  "[B42] NEW PROFESSIONS AND TRAITS",
  "3744666572",
  "Professions & Traits",
  "Profession Framework B42",
  "Adds new occupations and traits for character creation. Expanded roleplaying possibilities for the hardened survivor -- military, first responder, and survivalist backgrounds.",
  "Requires Profession Framework B42. More ways to define your survivor.",
)

#mod-entry(
  "Seinar's Extended Professions",
  "3765332666",
  "Professions & Traits",
  "Profession Framework B42",
  "Extended profession pack with unique occupations, starting gear, and trait combinations. More career backgrounds for the apocalypse veteran.",
  "Requires Profession Framework B42. Even more occupation variety.",
)

#mod-entry(
  "QP Survivor Contracts B42 + B41",
  "3761060249",
  "Professions & Traits",
  "None",
  "Adds survivor contract traits -- occupations tied to specific factions or groups. Background-driven character creation with unique starting scenarios and obligations.",
  "Faction-aligned starts. Your past comes with strings attached.",
)

#mod-entry(
  "Custom Start",
  "3765568727",
  "Professions & Traits",
  "None",
  "Customizable starting scenarios. Choose your starting location, gear, season, and conditions. Create truly personalized hardcore starts for Wave 2.",
  "Build your own nightmare. Start with nothing, or everything -- your call.",
)

== Crafting Expansions

#mod-entry(
  "Practice Crafting Skills",
  "3765795716",
  "Crafting / Training",
  "None",
  "Practice crafting recipes using raw materials to gain XP without wasting rare components. Train your skills safely at base before attempting critical crafts.",
  "Train without burning precious resources. Smart survivors practice first.",
)

#mod-entry(
  "Workshop Vehicle Restoration [B42.19]",
  "3768837745",
  "Crafting / Vehicles",
  "None",
  "Restore and repair vehicles at workshops. Full vehicle restoration system -- strip parts, rebuild engines, bring wrecks back to life. Requires tools, parts, and skill.",
  "Turn scrap into transport. Every wreck is a project.",
)

#mod-entry(
  "Linterna B42 (Electric & Gas Lantern)",
  "3744840515",
  "Crafting / Tools",
  "None",
  "Craftable electric and gas lanterns. Portable light sources that don't depend on batteries alone. Essential for dark nights and extended exploration.",
  "Light is life. Don't depend on flashlight batteries.",
)

#mod-entry(
  "Industrial Propane Canister",
  "3768919994",
  "Crafting / Resources",
  "None",
  "Adds larger industrial propane canisters for extended welding, cooking, and metalworking projects. More fuel, less frequent refills for serious crafters.",
  "Industrial-scale crafting requires industrial-scale resources.",
)

#mod-entry(
  "Rain Barrel Pour All",
  "3768913712",
  "Crafting / QoL",
  "None",
  "Pour water from any container into rain barrels directly. Simplifies water collection and base water management without removing the survival challenge.",
  "Saves clicks, not challenge. Water management is still deadly serious.",
)

#mod-entry(
  "[B42] Become Desensitized",
  "3713359427",
  "Skills / Combat",
  "None",
  "Earn the Desensitized trait through sustained combat. The more you fight, the less you panic.",
  "Kill enough zombies and your character becomes desensitized to violence. Panic resistance earned through experience.",
)

#mod-entry(
  "Industrial Works",
  "3680638986",
  "Crafting / Industry",
  "None",
  "Industrial-scale crafting. Heavy machinery, advanced workshops, and large-scale production.",
  "Build industrial workbenches and machines for large-scale crafting. Smelt metal, refine chemicals, mass-produce goods.",
)

#mod-entry(
  "[B42] Buildable Garage Doors",
  "3727753275",
  "Building / Vehicles",
  "None",
  "Craft and build garage doors for vehicle bases. Secure your parking.",
  "Build functioning garage doors for your base. Roll-up and sectional doors that zombies cannot bash through easily.",
)

#mod-entry(
  "[42.20MP] Repairable Windows",
  "3378304610",
  "Building / QoL",
  "None",
  "Repair broken windows with glass and tools. No more boarding up every shattered pane.",
  "Fix broken windows using glass panes, putty, and tools. Restore your base to its former condition.",
)

#mod-entry(
  "Long Term Preservation [B42.13]",
  "3406392630",
  "Crafting / Food",
  "None",
  "Long-term food preservation methods. Canning, salting, pickling, and drying for indefinite storage.",
  "Preserve food for months or years using historical methods. Can jars, salt meat, pickle vegetables. Time-consuming but life-saving.",
)

#mod-entry(
  "Dynamic Backpack Upgrades [B41-B42.15]",
  "2996978365",
  "Crafting / Items",
  "None",
  "Craft backpack upgrades -- add pockets, straps, and reinforcements. Customize your carry capacity.",
  "Upgrade any backpack with sewing, straps, and modifications. More pockets, better weight distribution, reinforced seams.",
)

== Maps & Locations

#warning[
  B42 map mods are extremely scarce. The map format changed significantly in Build 42, and most classic map mods (Raven Creek, Eerie Country, etc.) have not been updated. The mods below add location content without requiring full map overhauls. Check compatibility before adding any additional maps.
]

#mod-entry(
  "Lemon's Immersive Louisville Bridge Detonation",
  "3764257553",
  "Map / Event",
  "None",
  "The Louisville checkpoint bridge is rigged to blow. A countdown event that permanently changes the map. Cross before it's too late, or find another way -- if one exists.",
  "Permanently alters the game world. Time-limited. No second chances.",
)

#mod-entry(
  "Blackout Predators",
  "3766513120",
  "Map / Wildlife",
  "None",
  "Adds dangerous predator animals to the Kentucky wilderness. Wolves, bears, and other threats that make the forests as deadly as the towns. Nature is not your friend.",
  "The woods aren't safe anymore. Zombies aren't the only thing hunting you.",
)

#mod-entry(
  "UH-1B Helicopter [B42.19 Fix]",
  "3743113862",
  "Map / Vehicles",
  "None",
  "Adds a flyable UH-1B Huey helicopter. End-game vehicle requiring massive investment in parts, fuel, and skill. Not easy to obtain or maintain. Changes how you traverse the map.",
  "The ultimate map traversal tool -- if you can earn it. Massive investment required.",
)

#mod-entry(
  "Federal Ranger's [Chimera]",
  "3766693411",
  "Map / Vehicles",
  "None",
  "Adds a heavy armored military truck. Slow, fuel-hungry, but nearly indestructible. The ultimate survivor vehicle for crossing hostile territory.",
  "A mobile fortress. Slow, loud, expensive to run -- and nearly unkillable.",
)

== Immersion & Atmosphere

#mod-entry(
  "Nuclear Protocol",
  "3764265933",
  "Immersion / Event",
  "None",
  "Nuclear strike event system. Sirens, countdowns, and the unthinkable becomes reality. Adds existential dread to the apocalypse -- because zombies weren't bad enough.",
  "The ultimate atmosphere mod. The world can get worse. It will.",
)

#mod-entry(
  "ahz clothing b42.19 fixed",
  "3765814383",
  "Immersion / Clothing",
  "None",
  "Expanded clothing variety for B42. More civilian and survivor outfit options. Look like you've actually been surviving for months, not shopping at the mall.",
  "Visual variety for your hardened survivor. Form follows function.",
)

#mod-entry(
  "Armor Pack B42",
  "3763817407",
  "Immersion / Protection",
  "None",
  "Adds craftable and lootable armor pieces. Ballistic vests, limb protection, improvised armor. Protection has weight and movement penalties -- choose wisely.",
  "Protection has a cost. Heavy armor slows you down. Light armor doesn't stop bites.",
)

#mod-entry(
  "Spongie Clothing & Open jackets Fix B42",
  "3760398425",
  "Immersion / Clothing",
  "None",
  "Clothing expansion with open jacket variants and layered outfit options. More visual variety for your survivor without gameplay impact.",
  "Cosmetic clothing variety. More ways to express your survivor's identity.",
)

#mod-entry(
  "Necroa - Z Com Hazmat Suits [42.19]",
  "3768183922",
  "Immersion / Gear",
  "None",
  "Adds hazmat suits and protective gear inspired by zombie outbreak response teams. Full-body protection with realistic movement and visibility penalties.",
  "Maximum protection, maximum penalty. Hazmat gear is not combat gear.",
)

#mod-entry(
  "Ergonomic UI [B42]",
  "3762749124",
  "Immersion / UI",
  "None",
  "Streamlined UI improvements for B42. Cleaner inventory, better tooltips, and more intuitive crafting menus. Quality of life without reducing difficulty.",
  "Better interface, same brutal game. The apocalypse doesn't need a bad UI.",
)

#mod-entry(
  "Checklist [B42.19]",
  "3768513431",
  "Immersion / Tracking",
  "None",
  "Track your progress with in-game checklists. Mark off crafting milestones, loot targets, and survival goals. Stay organized when everything is falling apart.",
  "Organize your survival. Track what matters when nothing else does.",
)

#mod-entry(
  "[B42] Play Dead Weapon Mod",
  "3761020074",
  "Immersion / Weapons",
  "None",
  "Adds unique and creative melee weapons. Improvised, brutal, and fitting for a world where everything is a potential weapon and nothing is clean.",
  "More ways to fight. The apocalypse doesn't provide -- you improvise.",
)

#mod-entry(
  "Vehicle Repair Overhaul",
  "2757712197",
  "Immersion / Vehicles",
  "None",
  "Overhauled vehicle repair with more parts, more steps, and more realistic mechanics.",
  "Vehicle repair is no longer just replace-part-and-go. More components, more tools, more satisfaction when it runs.",
)

#mod-entry(
  "BrighterHeadlights",
  "3425507560",
  "Immersion / Vehicles",
  "None",
  "Increases vehicle headlight illumination range for safer night driving.",
  "Brighter, longer-range headlights for all vehicles. Night driving becomes viable without being unrealistic.",
)

#mod-entry(
  "Taillights and Stoplights",
  "3687394815",
  "Immersion / Vehicles",
  "None",
  "Working taillights and brake lights on vehicles. Visual immersion for night driving.",
  "Vehicles now show brake lights when slowing and taillights at night. Small detail, big immersion boost.",
)

#mod-entry(
  "Stairs Alert",
  "3044807092",
  "Immersion / Safety",
  "None",
  "Shows how many zombies are on upper floors when looking at stairs. Know before you go up.",
  "Check how many zombies are waiting upstairs before you climb. Simple UI element that saves lives.",
)

#mod-entry(
  "Danger Awareness",
  "3170356924",
  "Immersion / Safety",
  "None",
  "Visual indicator when zombies are nearby but not in direct line of sight. Heightened situational awareness.",
  "A subtle UI indicator when zombies are close but hidden behind walls or objects. No wallhacks, just awareness.",
)

== Building & Base

#mod-entry(
  "Plysken Underground Revolution",
  "3776279483",
  "Building / Base",
  "None",
  "Dig your own bunker one shovel pass at a time: sink the shaft, ladder down, widen rooms underground, and close a trapdoor behind you. Single-player only, B42.20+.",
  "End-game base security with real effort -- you haul every sack of spoil out yourself. Caveat: the engine borrows a nearby cellar interior to make your gallery count as indoors, so bunkers far from any town may not hold. Test it before making it your only defence.",
)

== Summary

#danger[
  Wave 2's mod list is massive -- over 63 mods across 10 categories. Follow the Installation chapter's load order rules carefully. Incorrect load order WILL cause crashes. The Mod Manager's conflict detection is your friend. Test your load order before committing to a long run.
]

#tip[
  Total mods in Wave 2: 63 (including Mod Manager and 4 frameworks). Each wave is its own profile -- do not combine waves. You are not expected to run all three waves simultaneously. Each wave is a separate profile and a separate game.
]

== Load Order

#note[
  #text(weight: "bold")[Recommended load order for Wave 2:]

  1. [B42] Mod Manager
  2. Frameworks & Libraries (Profession Framework, MDTF, Skill Recovery Journal, Distillery & Biofuel)
  3. Survival Overhauls (Recipes of Death, Lifestyle, Temperature, Weather, Death Burden, Hygiene, Plumbing, Immersive Water/Blackout, Exercise With Corpses, Rats & Mice, Exercise With Gear)
  4. Zombie Overhauls (Horde Night, Horde Filter, Thriller Time, Raining Zombies, Wake Them Up)
  5. Realism Systems (Firearms Fix, Shoot Through Barricades, Water Pipes, PlumbingPlus, Burnt Ground, Propane, Realistic Weights, Adrenaline, Solar)
  6. Professions & Traits (New Professions, Seinar's Extended, Survivor Contracts, Custom Start)
  7. Crafting Expansions (Practice Crafting, Vehicle Restoration, Lanterns, Propane, Rain Barrel, Become Desensitized, Industrial Works, Long Term Preservation, Backpack Upgrades)
  8. Maps & Locations (Bridge Detonation, Predators, Helicopter, Chimera)
  9. Immersion & Atmosphere (Nuclear Protocol, Clothing, Armor, Hazmat, UI, Checklist, Weapons, Vehicle Repair, Brighter Headlights, Taillights, Stairs Alert, Danger Awareness)
  10. Building & Base (Buildable Garage Doors, Repairable Windows, Underground Bunker)
  11. Compatibility patches (if any)
]
