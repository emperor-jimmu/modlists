# MO2 Separators

Mod Organizer 2 separators keep your mod list organized and easy to navigate. A clean separator structure makes it obvious where each mod belongs, simplifies troubleshooting, and helps you load mods in the correct order.

## Creating a Separator

1. Right-click anywhere in the left pane of MO2
2. Select **Create separator...**
3. Enter the name and choose a color
4. Click **OK**

Drag mods into the separator after creating it.

## Top-Level Separators

One separator per mod category, listed in load order (top to bottom in the left pane):

| # | Separator Name | Color | Hex |
|---|---------------|-------|-----|
| 0 | Foundations | Black | `#3B4048` |
| 1 | Bugfixes | Red | `#E06C75` |
| 2 | UI and HUD | Orange | `#D19A66` |
| 3 | Graphics Base | Yellow | `#E5C07B` |
| 4 | Graphics Portraits | Lime | `#98C379` |
| 5 | Graphics Terrain | Green | `#56B6C2` |
| 6 | Graphics Animals | Teal | `#3E8E9E` |
| 7 | World Expansion | Blue | `#61AFEF` |
| 8 | Monsters and Combat | Purple | `#C678DD` |
| 9 | Items and Weapons | Magenta | `#D55FDE` |
| 10 | NPC Interactions | Pink | `#E06B9B` |
| 11 | Grownup Town | Maroon | `#BE5046` |
| 12 | Gameplay Tweaks | Cyan | `#56B6C2` |
| 13 | Skills and Professions | Sky | `#7EC8E3` |
| 14 | Farming and Making | Brown | `#A0825A` |
| 15 | Music and Audio | Slate | `#7F848E` |

## Tips

- Place separators at the top of their section in the left pane so all related mods sit below them.
- The load order (left pane) mirrors the priority order — lower plugins in the left pane win conflicts. Keep the separator order listed above.
- Right-click a separator and choose **Hide** to collapse its contents when not actively sorting.
- Use the **Filter** bar at the bottom of MO2 and type a separator name to jump straight to it.

## Subcategory Separators

For mod categories with many entries (e.g., Graphics Terrain, NPC Interactions), you can add subcategory separators using a lighter version of the parent color (e.g., `#86C7CF` for a Terrain sub-separator).

Example within **Graphics Terrain**:

```
== Graphics Terrain ==        [full color]
  -- Seasonal & Foliage --    [lighter shade]
  -- Paths & Flooring --      [lighter shade]
  -- Buildings --             [lighter shade]
```

Name subcategory separators with a double-dash prefix `--` so they visually nest under the parent.
