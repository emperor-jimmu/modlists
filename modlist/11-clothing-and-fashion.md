# 11 - Clothing & Fashion

**Goal:** Clothing, fashion, and style. Clothing pieces, full sets, virtual
atelier stores, outfit management systems, and wardrobe expansion.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Virtual Atelier

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/2987>
- **Version:** 1.2.7
- **Released:** 2025-12-28
- **Summary:** Framework for browsing and purchasing modded clothing from
  in-game web stores. Required by most clothing mods that add shop purchases.
- **Why:** Core framework — modded clothing items need a way to be acquired
  in-game without CET console commands. Virtual Atelier provides immersive
  in-game web stores for browsing and buying.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Install first — all atelier-dependent mods go after.
- **Performance:** None

### Equipment-EX

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6945>
- **Version:** 1.2.7
- **Released:** 2026-02-28
- **Summary:** Expands equipment slots to allow wearing multiple clothing items
  in the same slot (e.g., necklaces over tops), transmog system, and toggle items.
- **Why:** Core framework — many clothing mods use toggle items and expanded
  slots for customization. Enables wearing accessories with overlapping body slots.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Tag as **Root**. Toggle items appear in specific equipment slots defined by each clothing mod.
- **Performance:** None

### The Community Palette Project

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10437>
- **Version:** 2.0
- **Released:** 2024-01-27
- **Summary:** Shared color palette resource for clothing mod authors. Required
  by many color-variant clothing mods including Novawear Pants.
- **Why:** Required dependency for clothing mods that offer multiple color
  variants. Provides a standardized color set so items from different authors
  use consistent palette names.
- **Conflicts:** None known
- **Dependencies:** None (asset-only framework)
- **MO2 Notes:** Extract to game root. Tag as **Root**. Install before any clothing mod that references it.
- **Performance:** None

### Novawear Pants - Fem Masc V (ArchiveXL)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/31328>
- **Version:** 1.0
- **Released:** 2026-07-09
- **Summary:** Tactical-style pants for both V body types. 50 colors (40 custom +
  10 vanilla), toggleable cuffed legs, and 4 detail toggle items.
- **Why:** High-quality, highly customizable pants that work with both male and
  female body types. The toggle system (cuffed legs, molle straps, buckles,
  zippers) gives fine-grained control over appearance.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, TweakXL, The Community Palette Project, Equipment-EX, CET (optional for item codes)
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Toggle items in Legs Inner slot (detail toggles) and Legs Outer slot (cuff toggles).
    - 50 color variants available via Virtual Atelier or CET item codes.
    - Supports vanilla, RB (EBBRB, EBBPRB), Eve, Angel, and Gymfiend body mods.
- **Performance:** None

### Revised Backpack

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/17642>
- **Version:** 0.9.14
- **Released:** 2026-06-15
- **Summary:** Custom inventory management screen with sortable columns,
  filtering by name/type/tier/ammo, item previews, mass junk, and mass
  disassemble. Accessible from the hub menu.
- **Why:** Vanilla inventory has no sorting, filtering, or bulk actions. This
  replaces it with a proper spreadsheet-like interface where you can sort by
  DPS, tier, weight, price, filter by item type, and bulk-junk or disassemble.
- **Conflicts:** None known
- **Dependencies:** ArchiveXL, Codeware, Input Loader, RED4ext, redscript.
  Optional: Mod Settings.
- **MO2 Notes:**
    - Extract to game root. Tag as **Root**.
    - Access via hub menu backpack button. Configure sorting in Mod Settings.
    - Supports Ctrl+click and Shift+click for multi-select.
- **Performance:** Light (custom UI only on backpack open)

### Virtual Atelier Delivery
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/21482
- **Version:** Verify
- **Released:** 2025-05-01
- **Summary:** Adds a delivery system to Virtual Atelier purchases — items ordered online are shipped to V's apartment stash rather than appearing instantly in inventory.
- **Why:** Virtual Atelier is already in the modlist as the online shopping framework. The instant-item-delivery breaks immersion — this adds a realistic delivery delay that makes shopping feel grounded in the world. Complements Virtual Atelier without changing its core functionality.
- **Conflicts:** None known. Requires Virtual Atelier.
- **Dependencies:** Virtual Atelier (#2987, already installed). ArchiveXL, Codeware, RED4ext, TweakXL.
- **MO2 Notes:** Extract to game root. Install after Virtual Atelier. Configure delivery time via settings. Tag as **Root**.
- **Performance:** None

### Hyst Atelier Store - Virtual Atelier
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/6015
- **Version:** Verify
- **Released:** 2023-11-01
- **Summary:** Virtual Atelier storefront for Hyst body-compatible clothing. Adds a curated selection of outfits and individual pieces designed for Hyst body meshes.
- **Why:** Expands the Virtual Atelier ecosystem with a dedicated store for Hyst-compatible clothing. Since Hyst Bodies (#9887) is already in the modlist, having a clothing store that specifically supports that body framework ensures clothing compatibility.
- **Conflicts:** None known. Virtual Atelier store — no world edits.
- **Dependencies:** Virtual Atelier (#2987). Hyst Bodies (#9887) for full body compatibility.
- **MO2 Notes:** Extract to game root. Install after Virtual Atelier and Hyst Bodies. Access via Virtual Atelier computer terminal. Tag as **Root**.
- **Performance:** None

### Zenitex Virtual Atelier
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/10090
- **Version:** Verify
- **Released:** 2023-10-01
- **Summary:** Virtual Atelier storefront offering a wide range of stylish, cyberpunk-appropriate clothing for Fem V. Includes casual wear, street fashion, and corpo attire.
- **Why:** Expands the Virtual Atelier ecosystem with a well-curated clothing store. Zenitex is one of the most popular Atelier stores on Nexus, offering high-quality, lore-appropriate fashion that fits Night City's aesthetic.
- **Conflicts:** None known. Virtual Atelier store.
- **Dependencies:** Virtual Atelier (#2987). Community Palette Project (#10437) for color variants.
- **MO2 Notes:** Extract to game root. Install after Virtual Atelier. Access via Virtual Atelier computer terminal. Tag as **Root**.
- **Performance:** None

### The Zenitex Military Store
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/21735
- **Version:** Verify
- **Released:** 2025-06-01
- **Summary:** Virtual Atelier storefront for tactical and military-style clothing and gear. Includes combat pants, tactical vests, military jackets, and operator-wear.
- **Why:** Night City's combat zones and edgerunner culture demand tactical fashion alongside street style. This store fills the tactical/military niche in the Virtual Atelier ecosystem, offering practical combat-ready clothing options.
- **Conflicts:** None known. Virtual Atelier store.
- **Dependencies:** Virtual Atelier (#2987). Zenitex Virtual Atelier (#10090) for shared assets.
- **MO2 Notes:** Extract to game root. Install after Zenitex Virtual Atelier. Access via Virtual Atelier computer terminal. Tag as **Root**.
- **Performance:** None

### NanoSuit - Archive XL
- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/14677
- **Version:** Verify
- **Released:** 2024-05-01
- **Summary:** Adds a high-tech nanosuit armor set using ArchiveXL framework. Includes helmet, body suit, and accessories with customizable colors and variants.
- **Why:** A nanosuit fits perfectly in Cyberpunk's transhumanist world — it's the kind of cutting-edge combat tech that corps and edgerunners would use. ArchiveXL-based means no file conflicts. Serves both the clothing and armor pillars.
- **Conflicts:** None known (ArchiveXL-based, no file overwrites)
- **Dependencies:** ArchiveXL, TweakXL, Community Palette Project (#10437)
- **MO2 Notes:** Extract to game root. Access via Virtual Atelier or console commands. Tag as **Root**.
- **Performance:** None

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. Virtual Atelier
2. Equipment-EX
3. The Community Palette Project
4. Novawear Pants - Fem Masc V (ArchiveXL)
5. Revised Backpack
6. Virtual Atelier Delivery
7. Hyst Atelier Store - Virtual Atelier
8. Zenitex Virtual Atelier
9. The Zenitex Military Store
10. NanoSuit - Archive XL
