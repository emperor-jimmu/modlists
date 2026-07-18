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
    - Extract to game root. Tag as **Root**.
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

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Virtual Car Dealer
2. Vehicle Pack - Utility
3. Dedka Car Dealership - Working Vehicle Shop Framework
