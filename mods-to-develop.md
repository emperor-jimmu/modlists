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
        - **Common (Tier 1):** Flickering flashlight — dim beam, short battery life, narrow cone. Found in starter areas, cheap vendors. **Visible beam** — NPCs can see the light and will investigate. High risk of detection.
        - **Uncommon (Tier 2):** Standard flashlight — clean beam, medium range, moderate battery. Available at most gun/tech shops. **Visible beam** — NPCs detect the light at range. Guards react and patrol toward the source.
        - **Rare (Tier 3):** Kiroshi IR illuminator — infrared flashlight that requires an **IR-capable optical cyberware upgrade** installed in the player's optical slot (modded Kiroshi firmware, or a standalone IR receptor implant). Projects an IR beam visible only through your optics overlay — completely invisible to unaugmented eyes. Standard battery, medium cone. Ripperdoc purchase. **Hard gate:** without the matching optical upgrade, the beam is invisible even to the player — the item literally does nothing. **Visibility:** invisible to unaugmented NPCs, but enemies with optical cyberware (scavs with scavenged chrome, Maelstrom with full-face optics, Arasaka elites) CAN detect the IR beam.
        - **Epic (Tier 4):** Militech stealth ops array — military-grade IR illuminator requiring a **top-tier optical cyberware upgrade** (advanced IR firmware or dedicated military optics implant). Wide flood vs focused throw toggle, longest battery, and the beam is encrypted on a Militech wavelength invisible to ALL NPCs regardless of cyberware. High-tier ripperdoc, Militech vendor, or corpo heist loot. **Fully invisible beam** — zero detection risk from light source. Rewards players who invest in both gear and cyberware.
        - **Iconic:** Custom variant — unique beam color (IR + visible hybrid?), flicker pattern, or no-battery mechanic (biomon-powered?). Hidden world placement, unique quest chain.
    - **Cyberware Gate:**
        - Tier 3-4 flashlights are paperweights without the matching optical implant. The player must visit a ripperdoc and install an "IR Spectrum Receptor" or equivalent firmware upgrade to their existing optical cyberware before the IR beam renders for them.
        - This creates a two-part investment: buy the IR flashlight (gear) AND install the optical upgrade (cyberware). Neither works without the other.
        - **Optical upgrade tiers:** Standard IR receptor (enables Tier 3, purchasable at mid-tier ripperdocs) → Advanced encrypted IR receptor (enables Tier 4, requires high street cred and specialized ripperdoc).
        - If the player unequips the optical upgrade, the IR beam vanishes — no exploit where you install it once and swap it out.
        - **Tie-in with existing mods:** Immersive Cyberware (#21916) provides visual feedback when installing optical upgrades — the IR receptor installation would trigger its screen-glitch effect. Cyberware-EX (#11077) provides the expanded slot framework this would need if the optical upgrade requires a non-vanilla slot.
    - **Stealth & Detection:**
        - Tier 1-2 flashlights emit visible light that NPCs detect as a suspicious source. Guards investigate the beam's origin point. The beam itself becomes a gameplay risk — it reveals your position.
        - Tier 3-4 use infrared wavelengths. The player sees the beam as a false-color IR overlay (green/white hot) through the installed optical upgrade — but only if the matching cyberware is installed. Without the optical implant, the IR beam is invisible even to the player.
        - **Counter-play at Tier 3:** Certain enemy archetypes with optical implants can detect IR beams — scavs with mismatched chrome, Maelstrom with full-face optics, Arasaka elites. The beam is a hidden risk that depends on WHO you're sneaking past, not just WHERE you are.
        - This creates a natural stealth progression: early game you're a person with a flashlight (visible, risky), mid-game you get chromed and upgrade your optics (IR, invisible to most enemies but detectable by chromed foes), late game you're military-grade (fully invisible to all). The cyberware decisions compound — investing in optics makes you stealthier in the dark, but also costs capacity and eddies.
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
