# 15 - Vehicles & Transport

**Goal:** Vehicles and getting around Night City. Driving overhaul, new
vehicles, car customization, vehicle handling, and transport systems.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Virtual Car Dealer

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4454>
- **Version:** 2.2.10
- **Released:** 2026-05-30
- **Summary:** In-game web store for browsing and purchasing vehicles. Replaces
  the fixed vendor list with curated dealerships featuring mod-added vehicles.
- **Why:** Required by many vehicle mods — provides an immersive buying experience
  through in-game web stores instead of CET console commands. Each dealer can
  curate their own inventory.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:**
    - Extract to game root.
    - Access via in-game web browser. Different dealers offer different inventories.
    - Install BEFORE any vehicle mods that use Virtual Car Dealer for distribution.
- **Performance:** None

### Vehicle Pack - Utility

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4530>
- **Version:** Verify
- **Released:** 2024-08-15
- **Summary:** Adds utility vehicles (trucks, vans, work vehicles) to Virtual Car Dealer stock. Required by Dedra's Truck Simulator for cargo vehicle assets.
- **Why:** Required dependency for Dedra's Truck Simulator (#24102 in 06-Living World). Provides the utility vehicle models that the convoy delivery system uses.
- **Conflicts:** None known
- **Dependencies:** Virtual Car Dealer
- **MO2 Notes:** Extract to game root. Install after Virtual Car Dealer, before Dedra's Truck Simulator.
- **Performance:** None

### Dedka Car Dealership - Working Vehicle Shop Framework

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/24887>
- **Version:** 1.2
- **Released:** 2025-10-01
- **Summary:** Physical vehicle dealership framework. Browse and purchase vehicles at a physical showroom rather than through the web interface. Vehicles sorted by category (Cheap, Heavy Duty, High-End). Features discount days, a Today's Deal spot, and weekday-specific sales.
- **Why:** Complements Virtual Car Dealer — VCD handles the web storefront while Dedka provides a physical dealership experience. Discount mechanics (weekday sales, Today's Deal spot at 35-50% off) add economic depth to vehicle purchasing. Prices strictly capped below VCD dealer prices.
- **Conflicts:** None known. Works alongside Virtual Car Dealer — not a replacement.
- **Dependencies:** ArchiveXL, Codeware, Cyber Engine Tweaks, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Vehicle prices auto-generated based on VCD dealer prices with discounts applied. 15+ mods use this framework. Supports CET live-tuning of vehicle stats.
- **Performance:** None

### Immersive Third-Person Vehicle Camera - TPP Cam Toolkit
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/20476
- **Version:** Verify
- **Released:** 2025-10-01
- **Summary:** Third-person camera toolkit for vehicles. Provides customizable camera angles, FOV adjustment, and dynamic camera behavior for driving in third-person.
- **Why:** Vanilla third-person vehicle camera is limited and rigid. This toolkit provides cinematic and functional camera options for driving, enhancing the vehicle experience without conflicting with first-person mods (Immersive First Person is on-foot only, Shift is FP camera dynamics).
- **Conflicts:** None known. On-foot camera mods (Immersive First Person #9309, Shift #22340) operate in different domains.
- **Dependencies:** Cyber Engine Tweaks. Optional: Native Settings UI.
- **MO2 Notes:** Extract to CET plugins folder. Configure camera presets via CET overlay or Native Settings UI. Works in third-person driving mode only.
- **Performance:** None

### Quadra Turbo-Z
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/29122
- **Version:** Verify
- **Released:** 2026-06-01
- **Summary:** Adds the Quadra Turbo-Z, a classic Cyberpunk-lore sports car, as a purchasable vehicle via Virtual Car Dealer.
- **Why:** The Quadra brand is iconic to the Cyberpunk universe. The Turbo-Z is a lore-friendly addition that expands the Virtual Car Dealer catalog with a vehicle that belongs in Night City. Complements existing Quadra models in the game.
- **Conflicts:** None known. Virtual Car Dealer vehicle.
- **Dependencies:** Virtual Car Dealer (#4454)
- **MO2 Notes:** Extract to game root. Purchase via Virtual Car Dealer.
- **Performance:** None

### Bikes of the Dark Future - Arch V4
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/18736
- **Version:** Verify
- **Released:** 2024-12-01
- **Summary:** Adds the Arch V4 motorcycle line — lore-friendly Arch bikes with custom variants and paint options, purchasable via Virtual Car Dealer.
- **Why:** Arch motorcycles are a canonical Cyberpunk brand (co-designed with Keanu Reeves). Adding the V4 model expands the motorcycle roster with a vehicle that authentically belongs in the Cyberpunk universe.
- **Conflicts:** None known. Virtual Car Dealer vehicle.
- **Dependencies:** Virtual Car Dealer (#4454)
- **MO2 Notes:** Extract to game root. Purchase via Virtual Car Dealer.
- **Performance:** None

---

### Car Modification Shop

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/4034>
- **Version:** 2.2.0.1
- **Released:** 2022-03-06
- **Summary:** In-game vehicle customization shop with visual and performance modifications. Access via CET hotkey to modify owned vehicles with paint, tuning, and handling upgrades. The definitive vehicle modification mod with 24K+ endorsements.
- **Why:** Vanilla vehicle customization is limited to CrystalCoat paint jobs. This adds comprehensive vehicle tuning — performance upgrades, visual mods, and handling adjustments — making vehicle ownership feel more personal and rewarding. Essential for any vehicle-focused modlist.
- **Conflicts:** None known. CET-based — compatible with redscript vehicle mods.
- **Dependencies:** Cyber Engine Tweaks 1.37.1+
- **MO2 Notes:** Extract to game root. Uses CET-KIT by Psiberx (MIT license). Access via CET overlay. Modifications are persistent per-vehicle. Install after Virtual Car Dealer and Dedka Dealership so modified vehicles can be purchased first.
- **Performance:** None

## Install Order

1. Virtual Car Dealer
2. Vehicle Pack - Utility
3. Dedka Car Dealership - Working Vehicle Shop Framework
4. Immersive Third-Person Vehicle Camera - TPP Cam Toolkit
5. Quadra Turbo-Z
6. Bikes of the Dark Future - Arch V4
7. Car Modification Shop
