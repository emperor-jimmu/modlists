#import "../../../typst/styles.typ": *

= Mod List — Wave 1

Wave 1 expands the mod list to include *Graphics*, *Light mechanic*, and *Content addition* mods alongside continued *UI/QoL* improvements. No heavy overhauls — those are reserved for Wave 2.

#warning-box[Read each placeholder carefully. The examples listed are real mod types that fit the slot — but the actual mod chosen must be verified for compatibility with BL 1.4.x / WS 1.2.x before being added permanently.]

// === Graphics (3) ===

#mod-placeholder("Graphics", ("Improved lighting engine with better ambient occlusion, bloom, and shadow cascades", "Time-of-day color grading that makes sunsets, dawn, and night more atmospheric", "Weather effects enhancement — rain, snow, and fog"), "Must be compatible with other graphics mods. Target: stable 60+ FPS on NVIDIA RTX 3080 or equivalent at 1440p with high settings.")

#mod-placeholder("Graphics", ("High-resolution texture pack for terrain, buildings, and environments", "Improved armor and weapon textures for all faction troops", "Better character face and skin textures"), "Target: 60 FPS at 1440p on RTX 3080 (10GB VRAM) or equivalent. Must not conflict with equipment mods.")

#mod-placeholder("Graphics", ("Higher-poly character heads with better expressions and skin shading", "Improved hair and beard rendering", "Better body proportions and armor fitting"), "Must be compatible with any character creation mods in this wave. Target: 60 FPS at 1440p on RTX 3080 or equivalent.")

// === UI/QoL (2) ===

#mod-placeholder("UI/QoL", ("Search and filter functionality for the in-game encyclopedia", "Show troop upgrade trees with stat comparisons", "Track relationship changes, quest history, and notable interactions"), "Must not alter any underlying game data — display and search only.")

#mod-placeholder("UI/QoL", ("Free camera mode in battles (spectator and replay)", "Customizable key bindings for formation commands", "Better death cam — follow your killer or your troops after death"), "Must not allow control of troops after death (no cheating/god-mode).")

// === Light Mechanic (5) ===

#mod-placeholder("Light mechanic", ("Non-aggression pacts, defensive alliances, and trade agreements between kingdoms", "Peace treaty duration enforcement — prevents immediate re-declaration of war", "Messenger system — send diplomatic proposals without traveling to the ruler"), "Must not override core kingdom mechanics. Must integrate with BL 1.4.7's faction AI. Diplomacy should be earned, not bought.")

#mod-placeholder("Light mechanic", ("Better AI battle tactics — enemy lords use formations, flanking, and terrain", "Improved AI decision-making for declaring war and making peace", "AI lords manage their fiefs and parties more efficiently"), "Must not make the game unfair. AI should be smarter, not omniscient. Must still be beatable by a skilled player on normal difficulty.")

#mod-placeholder("Light mechanic", ("More varied tournament prizes including named weapons and armor", "Different tournament formats (team fights, archery contests, jousting)", "Arena betting with dynamic odds based on your reputation"), "Must not make tournaments a primary income source — prizes should be cosmetic or sidegrade-tier, not best-in-slot.")

#mod-placeholder("Light mechanic", ("Bandit parties scale with game time — late-game bandit armies instead of irrelevant looters", "Minor factions have unique troops, leaders, and motivations instead of being generic", "Bandit hideouts have more variety and better rewards for clearing them"), "Must not make bandits overpower players in early game. Scaling should match clan tier progression.")

#mod-placeholder("Light mechanic", ("Settlements slowly adopt the culture of their owner over time", "Cultural bonuses for troops recruited in their native regions", "Cultural festivals and events that affect prosperity and loyalty"), "Must not allow instant culture conversion. Change should take multiple in-game years.")

// === Content Addition (3) ===

#mod-placeholder("Content addition", ("Additional historically-inspired armor sets for each faction", "More weapon variety — different sword types, polearms, and bows", "New horse breeds with distinct stats and appearances"), "Must not add overpowered items. New equipment should be sidegrades to existing items, not strict upgrades. Must be compatible with texture mods.")

#mod-placeholder("Content addition", ("Additional troop upgrade paths for all factions", "Noble troops have more distinct specializations from common troops", "Unique troop types for minor factions and mercenary companies"), "Must maintain faction identity. Vlandian troops should not become better archers than Battanians. Must not create unbeatable combinations.")

#mod-placeholder("Content addition", ("More companion variety — different backgrounds, skills, and personalities", "Companions have personal quests and storylines", "More named NPCs in the world with unique dialogue and interactions"), "Must not add companions that trivialize early game. Dialogue must not conflict with the game's tone.")
