# Third-Person Gameplay

---

## Third-Person Camera Framework
### Baseline
- **SmoothCam** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/41252)) — Main third-person camera framework.

### Alternatives
- **Customizable Camera** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/12201)) — Leaner fallback.
- **True Directional Movement** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51614)) — Governs movement/targeting, not the camera framework itself.
- **Improved Camera SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93962)) — Perspective support, not main third-person framework.
- **Modern Combat Gamepad Overhaul** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/123409)) — Gamepad-centric combat controls integration. Research before adding — evaluate overlap with TDM and the combat stack.

### Risks & Compatibility
- A good preset can hide weak camera behavior — judge the framework, not the preset.
- Over-tuned cameras look impressive in clips but become tiring.

---

## Camera Presets And Shoulder Switching
Restrained centered-to-light-offset baseline. Shoulder switching is a support feature for visibility problems, not the main camera identity.

### Risks & Compatibility
- Aggressive over-the-shoulder framing creates visibility issues in interiors and dungeons.
- Shoulder switching that feels mandatory too often = poor baseline framing.

---

## True Directional Movement
- **True Directional Movement - Modernized Third Person Gameplay** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/51614)) — Modern 360-degree character-relative movement.
- Core value: freer facing, cleaner traversal, better animation-stack alignment.
- May feel awkward in tight interiors, stairs, or precision positioning.

---

## Target Lock And Targeting Behavior
- **TDM** as the targeting-behavior owner. Keep lock-on restrained — optional combat-readability tool, not permanent default.
- **TrueHUD** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/62775)) — Optional feedback companion. Add only if testing shows material improvement.

### Risks & Compatibility
- Weak target selection/switching makes even good camera and movement feel unreliable.
- TrueHUD can create illusion of a solved targeting system when the underlying behavior is still awkward.

---

## Dodge, Sprint, And Movement Responsiveness
### Baseline
- **TK Dodge RE - Script Free** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/56956)) — **Locked baseline.** Script-free dodge with configurable step/distance. Maps cleanly to gamepad. Tactical repositioning, not combat pacing center.
- **S.M.C. — Skyrim Motion Control** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/97204)) — **Baseline.** Script-free SKSE plugin: acceleration ramp-up, momentum on stop, configurable jump boost, slope speed scaling, and per-state speed/accel multipliers (bow-drawn, magic-cast, swimming, walking, auto-walk, etc.). Works on gamepad. Fully tunable INI, reloadable in-game with Enter. Skyrim Souls compat toggle (v2.4+). S.M.C.'s sprint-jump boost works only with Better Jumping v1.7.1 or below — disable in INI if using newer Better Jumping. Evaluated alongside Inertia (172783, → `Animations` candidate): S.M.C. handles speed/acceleration at the SKSE physics-param layer; Inertia handles physical body-response. Compatible, not redundant. Tune INI values to match Static with Hard Threat — particularly `fAcceleration`, `fStoppingForce`, and `fJumpBoost`.

### Risks & Compatibility
- Incompatible with Scrolling Speed 2, Wounds (17581), MBO (38950) — none present in this list.
- Pace (27268): works but disable Pace's movement speed settings in MCM.
- Jump boost may fail intermittently (known issue); low `fStoppingForce` can cause momentum to not decay when another speed buff/nerf is active.

### Alternatives
- **TK Dodge SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/15309)) — Legacy fallback reference.
- **Dodge for all** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/174544)) — Newer (May 2026). Too early for baseline — low community signal.

---

## Hit Reactions, Stagger, And Impact Feedback
| Mod | Notes |
| --- | --- |
| [Valhalla Combat](https://www.nexusmods.com/skyrimspecialedition/mods/64741) | Main gameplay-side comparison for hit feedback and stagger. |
| Precision (from → `Animations`) | Adjacent support for contact feel. |

### Risks & Compatibility
- Too much stagger flattens combat; too little leaves animations unsatisfying.
- Camera, animation timing, collision, and gameplay rules all affect impact feel — ownership blurs quickly.

---

## Third-Person Combat Systems
| Mod | Type | Notes |
| --- | --- | --- |
| [Valhalla Combat](https://www.nexusmods.com/skyrimspecialedition/mods/64741) | Baseline | Gameplay-rule framework. |
| SCAR (from → `Animations`) | Baseline | NPC-side attack variety. |
| [Knockback SKSE](https://www.nexusmods.com/skyrimspecialedition/mods/171277) | Support | Compatible with BFCO. Evaluate for adoption with BFCO setup. |
| [RaySense - Cover Animation](https://www.nexusmods.com/skyrimspecialedition/mods/175504) | Optional | Cover animation system. |
| [Fire Ignites Arrows](https://www.nexusmods.com/skyrimspecialedition/mods/118544) | Optional | Arrow ignition from fire sources. |
| [Poisoned Arrows and Bolts](https://www.nexusmods.com/skyrimspecialedition/mods/123585) | Optional | Poison crafting for ranged ammo. |
| [Variadic Collision Dynamics](https://www.nexusmods.com/skyrimspecialedition/mods/183892) | Optional | Runtime collision-capsule adjustments. |
| [Variadic Collision Dynamics - Resources](https://www.nexusmods.com/skyrimspecialedition/mods/184110) | Optional | Ready-to-use JSON presets for VCD. |
| [Next-Gen Decapitations](https://www.nexusmods.com/skyrimspecialedition/mods/135254)                  | Optional | Decapitation system replacement with improved gore visuals.       |
| [Death Drop Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/151590)                     | Optional | Changes how NPC bodies ragdoll and drop on death.                 |
| [Dismembering Framework](https://www.nexusmods.com/skyrimspecialedition/mods/126203)                  | Optional | Dismemberment system framework.                                   |
| [DF - Official Humanoid Asset Pack](https://www.nexusmods.com/skyrimspecialedition/mods/126327)       | Add-on   | Required asset pack for Dismembering Framework (humanoid).        |
| [DF - Official Creature Asset Pack](https://www.nexusmods.com/skyrimspecialedition/mods/126328)       | Add-on   | Creature asset pack for Dismembering Framework (optional).        |
| [Eviscerate](https://www.nexusmods.com/skyrimspecialedition/mods/68884)                              | Optional | Combat gore / dismemberment alternative.                           |
| [Cinema - Dynamic Combat Letterbox](https://www.nexusmods.com/skyrimspecialedition/mods/171912)      | Optional | Letterbox overlay during combat.                                   |
| [Parry for All](https://www.nexusmods.com/skyrimspecialedition/mods/167873)                          | Optional | Parrying support for non-equipped actors.                         |
| [Deadly spell impact](https://www.nexusmods.com/skyrimspecialedition/mods/146299)                    | Optional | Spell impact visual + audio upgrade.                              |

---

## Crosshair And Aiming Behavior
| Mod | Notes |
| --- | --- |
| [Better Third Person Selection - BTPS](https://www.nexusmods.com/skyrimspecialedition/mods/64339) | Object-selection reliability. |
| TrueHUD | Optional aiming readability aid. |
| [Ricochet - Arrow Physics Framework](https://www.nexusmods.com/skyrimspecialedition/mods/160603) | Lock only if archery is a meaningful combat style. |

---

## Horse Camera And Mounted Controls
| Mod | Type | Notes |
| --- | --- | --- |
| [Press H to Horse](https://www.nexusmods.com/skyrimspecialedition/mods/81195) | Baseline | Actively maintained (May 2026). Few vanilla record edits. |
| [Horses Simply Turn Better](https://www.nexusmods.com/skyrimspecialedition/mods/57790) | Baseline | Free add-on. Sharpens turning radius for TDM. |
| [Convenient Horses](https://www.nexusmods.com/skyrimspecialedition/mods/9519) | Alternative | Last updated Jan 2022 (stale). |
| [Simplest Horses](https://www.nexusmods.com/skyrimspecialedition/mods/54225) | Alternative | Lightweight SPID+MCM drop-in. |
| [HorsePower - Modernized horse riding](https://www.nexusmods.com/skyrimspecialedition/mods/169335) | Baseline | Modernized horse riding overhaul. Requires SKSE, Address Library, Animation Motion Revolution, Pandora, TDM. |

---

## Third-Person Interactions: Lockpicking
Gamepad-accessible lockpicking that works entirely in third-person without mouse input. Required by the design directive — every interaction must work in third-person with a gamepad.

| Mod | Notes |
| --- | --- |
| [Break The Lock - OIF](https://www.nexusmods.com/skyrimspecialedition/mods/154901) | Physics-based lockpicking with breakable locks via OIF. Gamepad-compatible, third-person usable. Requires OIF framework. |

## Open Research

Open research for the third-person stack is tracked in `TODO.md`.
