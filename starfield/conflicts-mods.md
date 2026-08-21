# Known Mod Conflicts

Mod conflicts discovered during testing. Updated as mods are added.

## Template

### Conflict: [Mod A] + [Mod B]

- **Symptoms:**
- **Cause:**
- **Resolution:**

---

## Documented Conflicts

### Conflict: Better Ship Part Flips/Snaps + Ship Module Snap Expansion (SMSEX)

- **Symptoms:** Parts fail to snap or snap incorrectly; unexpected builder behavior.
- **Cause:** Both edit the same ship-snap/placement data structures.
- **Resolution:** Use Better Ship Part Flips + Snaps (this list). Do NOT install SMSEX alongside them.

### Conflict: StarUI suite + newer game updates

- **Symptoms:** Broken crafting menus, vehicle-exit bugs, or StarUI screens not appearing after a game update.
- **Cause:** The original StarUI pages (m8r98a4f2) have not been updated since late 2024.
- **Resolution:** Install community compatibility patches (search "StarUI patch" / "thesamich" on Nexus).

### Conflict: Eit Clothiers Plus (Zone79) + KryoZet armor packs

- **Symptoms:** Invisible body parts or texture seams when both authors' gear is worn together.
- **Cause:** Different body-mesh variants and overlapping clothing slots.
- **Resolution:** Prefer one author's clothing (this list uses Zone79). If you add KZ gear, match body meshes and manage load order.

### Conflict: Starvival + another survival overhaul

- **Symptoms:** Conflicting needs/penalties, duplicate hunger/thirst/fuel systems.
- **Cause:** Both override survival-related gameplay records.
- **Resolution:** Use Starvival alone; do not stack with any other survival mod.

### Conflict: Royal Galaxy + another total gameplay overhaul

- **Symptoms:** Unpredictable balance and economy results.
- **Cause:** Two broad revamps editing the same combat/economy/exploration records.
- **Resolution:** Use Royal Galaxy alone as the wave's overhaul.

### Conflict: Regrets + mods editing Akila City (Marshal's office / Waggoner farmhouse)

- **Symptoms:** Quest trigger or interior mismatch in Akila City.
- **Cause:** Regrets uses the Marshal's office and the Waggoner farmhouse cells.
- **Resolution:** Load Regrets after Akila-area edits, or avoid mods that overhaul those specific interiors.
