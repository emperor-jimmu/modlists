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
