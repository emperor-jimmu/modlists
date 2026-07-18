# Mods to Develop

Original mod ideas that don't have an existing implementation. These are
candidates for development.

---

## Idea: Short Title

- **Category:** Which section it fits
- **Problem:** What gap does it fill?
- **Proposal:** What would the mod do?
- **Design:**
  - **UI:** Wireframe/flow descriptions, HUD elements, menus
  - **Technical:** RED4ext/CET/ArchiveXL approach, hooks, data structures
  - **Game Design:** Balance philosophy, integration with vanilla systems
- **Scope:** simple | moderate | large
- **Dependencies:** Required frameworks/APIs
- **Status:** idea | scoping | in-progress | released

---

### Gleam — World-Placed Flashlight Addon for Simple Flashlight

- **Category:** 06b - World Interaction / 06a - Survival & Systems
- **Problem:** Simple Flashlight (#2913) is an always-available CET toggle — press a key and you have infinite light, anywhere, from game start. This undermines the modlist's "no free items" philosophy. Dark areas lose tension when illumination is a keystroke away. There's no gear progression around light sources and no incentive to prepare before entering dark zones.
- **Proposal:** Transform the Simple Flashlight into a physical item that must be acquired, equipped, and maintained. Integrates with Simple Flashlight's existing beam/lighting system but gates it behind ownership. Flashlights become discoverable loot, vendor purchases, and quest rewards — turning light into a resource rather than a given.
- **Design:**
  - **Item System:** Flashlights become an equipable item in a dedicated slot (or use the existing grenade/consumable quickslot). Without a flashlight equipped, the Simple Flashlight keybind does nothing. Equip a flashlight and the keybind activates it using Simple Flashlight's beam renderer.
  - **Tiers:**
    - **Common (Tier 1):** Flickering flashlight — dim beam, short battery life, narrow cone. Found in starter areas, cheap vendors.
    - **Uncommon (Tier 2):** Standard flashlight — clean beam, medium range, moderate battery. Available at most gun/tech shops.
    - **Rare (Tier 3):** Tactical flashlight — wide cone, long range, weapon-mounted option. Found at weapon vendors, NCPD evidence lockers.
    - **Epic (Tier 4):** Militech night ops — ultra-bright beam, wide flood mode vs focused throw toggle, longest battery. Militech vendors, high-tier loot.
    - **Iconic:** Custom variant with unique beam color, flicker pattern, or no-battery mechanic (solar/biomon?). Hidden world placement, like a unique item quest.
  - **Acquisition:**
    - Vendors: Gun shops, junk shops, tech shops — scaling by district danger level
    - World loot: Inside dark interiors (ironic but logical — someone went in before you and didn't make it out), basements, caves, abandoned buildings
    - Quest rewards: NCPD scanner hustles, fixer gigs that involve dark areas
    - Guaranteed spawn: One basic flashlight placed in V's H10 apartment stash at game start (so players aren't locked out of dark areas, but must at least discover it)
  - **Battery System (optional toggle):**
    - Flashlights have a battery charge that depletes while active
    - Recharge by replacing batteries (consumable item, bought at vendors)
    - Higher-tier flashlights have longer battery life
    - If battery dies, beam flickers and cuts out — creating dynamic tension moments
    - Can be toggled off for players who just want the ownership gate without maintenance
  - **Integration with Simple Flashlight (#2913):**
    - Acts as a soft addon/dependency — uses Simple Flashlight's beam rendering, color temperature, and cone settings
    - Simple Flashlight's CET keybind becomes the "activate equipped flashlight" action
    - If no flashlight is equipped, pressing the keybind shows a brief "No flashlight equipped" HUD message
    - Maintains compatibility with Simple Flashlight's configuration (beam intensity, falloff) via Native Settings UI
  - **Synergies:**
    - Dark Future (#16300): Battery depletion accelerated by stress/panic states
    - Wannabe Edgerunner (#30532): Low humanity causes flashlight flickering (cyberware interference)
    - Immersive First Person (#9309): Beam visibly held at V's hand position in first-person body view
  - **UI:** Minimal — a subtle battery indicator near the crosshair when flashlight is active (optional HUD element). Equipment shows flashlight tier and charge in inventory.
  - **Technical:**
    - Likely CET + redscript for item/inventory integration
    - ArchiveXL for item definitions if using a custom equipment slot
    - TweakXL for vendor inventory injection and loot table additions
    - Simple Flashlight as a soft dependency (uses its beam system via CET)
    - Battery system via CET timer + TweakXL consumable definition
  - **Game Design:**
    - First H10 stash flashlight ensures no dead-end — the player always has a path to light
    - Dark areas are clearly communicated (environmental hints, NPC dialogue) so players know when to equip
    - Battery system default: on but toggleable — respects the "add challenge, don't remove friction" philosophy
    - Tier progression mirrors the game's loot curve — keeps dark areas relevant through mid-game until the player commits to high-tier gear
- **Scope:** moderate
- **Dependencies:** Simple Flashlight (#2913, soft). CET, redscript, ArchiveXL, TweakXL. Optional: Dark Future, Wannabe Edgerunner (integration hooks).
- **Status:** idea

---

*Ideas will be added here as gaps in the mod ecosystem are identified.*
