#import "../template.typ": *

= Modlist — Wave 0

Wave 0 keeps mods to a strict minimum: the Mod Manager plus a handful of UI improvements. Zero gameplay changes.

== Mod Manager

#mod-entry(
  "[B42] Mod Manager",
  "3567084868",
  "UI / QoL",
  "None",
  "Adds a dedicated mod management interface with profiles, drag-and-drop load order, and conflict detection.",
  "Mandatory for all waves. Create a 'Wave 0' profile before enabling any other mods.",
)

== UI & Quality of Life

#mod-entry(
  "Mini Health Panel",
  "2866258937",
  "UI",
  "None",
  "Adds a compact, always-visible health panel overlay. Includes muscle strain indicator for B42. No gameplay changes.",
  "Shows a small health panel so you can see injuries at a glance without opening the full health screen. Also shows muscle strain for B42.",
)

#mod-entry(
  "Weapon Condition Indicator",
  "3412262177",
  "UI / QoL",
  "None",
  "Displays weapon durability and ammo count on hotbar icons. Shows condition bar and alerts on durability loss. No gameplay impact.",
  "Shows a condition bar on each weapon's hotbar icon so you know when it's about to break. Also displays ammo count and flashlight battery.",
)

#mod-entry(
  "Has Been Read",
  "2544353492",
  "UI / QoL",
  "None",
  "Shows unread marks on books, magazines, and VHS tapes. Complements vanilla B42 checkmark system with faster visual recognition. No gameplay impact.",
  "Marks skill books, magazines, recipes, and VHS tapes you haven't read yet. B42 vanilla already shows checkmarks on read books — this mod shows what you should read next.",
)

#mod-entry(
  "[B41/B42] Item Condition",
  "2852309899",
  "UI",
  "None",
  "Shows item condition as a clear percentage in tooltips. Know exactly how worn your gear is.",
  "Adds a percentage and color-coded condition label to every item tooltip. No more guessing if 'Battered' means 30% or 5%.",
)

#mod-entry(
  "Condition On Dash",
  "3306168142",
  "UI",
  "None",
  "Shows item condition bars directly on inventory icons. See gear status at a glance.",
  "Adds a small condition bar to each item's inventory icon. Green to red gradient -- see what is about to break without hovering.",
)

#mod-entry(
  "Combat Text (B40+B41+B42)",
  "2286124931",
  "UI",
  "None",
  "Floating damage numbers above zombies. Satisfying visual feedback with no gameplay impact.",
  "Shows floating numbers for damage dealt, critical hits, and kills. Purely cosmetic feedback -- the numbers come from vanilla calculations.",
)

#mod-entry(
  "Map Symbol Size Slider",
  "2734705913",
  "UI",
  "None",
  "Slider to adjust the size of map annotation symbols. No more squinting at tiny markers.",
  "Adds a size slider to the map UI so you can make symbols larger or smaller. Accessibility improvement with zero gameplay change.",
)

#mod-entry(
  "Hide Menu Debug + Remove Build Information",
  "3554048011",
  "UI",
  "None",
  "Removes debug text and build version from the main menu. Clean presentation.",
  "Hides the version number, build ID, and debug info from the title screen and pause menu. No functional change -- just cleaner menus.",
)

#mod-entry(
  "Named skill VHS tapes",
  "2732294885",
  "UI",
  "None",
  "Shows which skill each VHS tape teaches in its name. No more checking wiki for tape contents.",
  "Renames VHS tapes to include the skill they teach. Instead of 'Survival Guide - Vol 3' you see 'Survival Guide - Vol 3 [Cooking]'.",
)

#mod-entry(
  "[B41/42] Minimal Sidebar (Auto Hide)",
  "3642084851",
  "UI",
  "None",
  "Auto-hides the sidebar when not in use. More screen space, less clutter.",
  "The sidebar auto-hides after a short delay. Move your mouse to the edge to reveal it. Frees up screen real estate with no gameplay impact.",
)

#mod-entry(
  "GeistFont",
  "3740912027",
  "UI",
  "None",
  "Replaces in-game UI fonts with Geist -- a clean, modern, highly readable sans-serif typeface by Vercel. Saves layout space.",
  "Geist combines Medium (body), SemiBold (headers), Mono (console), and Italic styles for a smart visual hierarchy. Words take up less horizontal space so lists and tables display more items without shrinking text. Supports all vanilla font sizes (1x-4x). Works with CleanUI and other UI mods. Zero gameplay impact.",
)

#info[
  Note: Better Sorting (3.4M subscribers) was evaluated but excluded. The original is B41-only (last updated 2023). A B42 compatibility patch exists but depends on an abandoned fork and the patch author has suspended support. We will revisit inventory sorting in Wave 1 when a stable B42-native option emerges.

  Wave 0 uses exactly 11 mods. All are UI or QoL. You are playing vanilla Project Zomboid with a better interface.
]

Load order: Mod Manager first, then UI/QoL mods in any order.
