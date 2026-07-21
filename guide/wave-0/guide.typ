#import "../template.typ": *

= How to Play — Wave 0

Welcome to Knox County. This chapter walks you through everything you need to know as a new player. Take it one section at a time.

== 1. Getting Started

Project Zomboid is on Steam. For Wave 0, you only need the base game and the 5 mods in the Wave 0 Modlist chapter. Subscribe to them on the Steam Workshop, enable in [B42] Mod Manager, create a "Wave 0" profile. Launch from Mod Manager, click *Solo*, then *Custom Sandbox*, and apply settings from the Sandbox Settings page.

== 2. Basic Controls

=== Movement & Combat

#settings-table((
  ("WASD", "Move"),
  ("Left Click", "Attack / Push"),
  ("Right Click", "Aim weapon"),
  ("Space", "Push / Stomp downed zombie"),
  ("Ctrl", "Crouch (quieter movement)"),
  ("E", "Climb fence / Open window"),
  ("Shift", "Jog (makes noise)"),
  ("Alt", "Sprint (very noisy — last resort)"),
))

=== Inventory & Interaction

#settings-table((
  ("I", "Inventory"),
  ("F", "Flashlight / Use item"),
  ("R", "Reload weapon"),
  ("Tab", "Health panel"),
  ("M", "Minimap"),
  ("B", "Crafting menu"),
  ("V", "Search/Foraging mode"),
))

#danger[
  The *Q key shouts*. It attracts zombies from a huge radius. Do not press Q by accident. Unbind it if needed.
]

== 3. Combat — Read This First

Project Zomboid combat is not forgiving. Here's the minimum you need before your first fight:

#list(
  [*Right-click to aim.* Your character faces the cursor. You cannot attack without aiming.],
  [*Left-click to attack.* Weapon in hand = swing. Empty hand = push.],
  [*Spacebar to push/stomp.* Push zombies away when they get close. Stomp a downed zombie's head.],
  [*Backpedal while fighting.* Walk backwards (S) while aiming. Never stand still.],
  [*Fight one at a time.* If 3+ zombies approach, walk away and find a safer position.],
  [*Check behind you.* Zombies come from off-screen. Turn around often.],
  [*Rest between fights.* If you see the Exhausted moodle (top-right), retreat and sit down to rest.],
)

#tip[
  Practice on a single zombie: find one alone, approach slowly, aim, push it down, stomp its head. Do this a few times. Now you know the basics.
]

=== Weapons

Better weapons are found in garages, sheds, and hardware stores. Initially, anything is better than bare hands:

- *Frying pan, rolling pin, kitchen knife* — found in house kitchens. Use until you find better.
- *Hammer, pipe, wrench* — found in garages and sheds. Short range but common.
- *Baseball bat, crowbar, axe* — best weapons. Found in garages, hardware stores, and warehouses.

#tip[
  The *crowbar* is excellent for beginners — very durable. If you find one, keep it.
]

=== When to Run

Walk away if: there are 3+ zombies, you're tired, you're panicked, or you hear a helicopter. You can always come back.

== 4. The UI

Key parts of the screen:

- *Inventory window (I):* What you're carrying. Left side = you, right side = container you're looting.
- *Health panel (Tab):* Injuries, bandages, overall condition.
- *Crafting panel (B):* Available recipes. Grayed out = missing materials or skill.
- *Moodles (top-right):* Icons showing your physical/mental state. Hover over any moodle to see what it means.
- *Hotbar (bottom):* Drag items here for number-key quick access. Put your weapon and water bottle here.

== 5. Character Creation

=== Occupation

Your job determines starting skills. For a first playthrough, *Unemployed* gives the most flexibility (8 free trait points). Other friendly options:

- *Carpenter:* +3 Carpentry. Helps with building and barricading.
- *Burger Flipper:* +2 Cooking, +1 Maintenance. Cooking helps with food.
- *Nurse:* +2 First Aid, +1 Lightfooted. Medical skills and quieter movement.

=== Positive Traits (pick a few you can afford)

- *Cats Eyes (2pts):* See better at night.
- *Dexterous (2pts):* Transfer items faster — saves real time.
- *Outdoorsman (2pts):* Less likely to get sick from weather.
- *Wakeful (2pts):* Need less sleep. More looting time.
- *Brave (4pts):* Less panic in combat. Big difference.
- *Lucky (4pts):* Find better loot.
- *Thick Skinned (6pts):* Better defense against scratches and bites.

=== Negative Traits (fund your positives)

- *Weak Stomach (+3):* Don't eat rotten food. A good habit anyway.
- *Smoker (+4):* Need cigarettes. They're common. Manageable.
- *Slow Healer (+6):* Injuries heal slower. Stay safe and it won't matter.
- *High Thirst (+6):* Carry two water bottles instead of one.
- *Slow Reader (+2):* Books take longer. Annoying but not dangerous.

#warning[
  Do NOT take: Deaf, Illiterate, Obese, Very Underweight, Asthmatic. These make survival much harder.
]

== 6. Basic Needs

Your character needs four things (in order of urgency): safety, water, food, sleep.

=== Water

Find water sources immediately:
#list(
  [*Sinks, toilets, bathtubs* — every house. Right-click > Drink.],
  [*Water bottles* — kitchens. Fill at sinks and carry with you.],
  [*Water dispensers* — offices and schools. Big water jugs.],
)

#info[
  Water shuts off after 14-30 days. After that, plumbing runs dry. Eventually you'll need rain collectors (Carpentry 4). But that's a Wave 1 concern.
]

=== Food

Every house kitchen has:
#list(
  [*Fridge:* Fresh food. Eat this first — it rots.],
  [*Cabinets:* Canned food. Save this for later — it never rots.],
  [*Countertops:* Snacks, chips, soda.],
)

#warning[
  Don't eat *Rotten* food. The *Stale* tag is okay — just less nutritious.
]

=== Sleep

Find a bed in any house. Right-click > Sleep. Close curtains and lock doors before sleeping. An unsecured door while you sleep is how you die.

=== Shelter

Your first priority on day one: find a two-story house on the edge of town. Close all curtains. Lock all doors. Turn off lights. If you have a hammer, nails, and a plank, barricade a ground-floor window (right-click window > Barricade).

== 7. First Day Checklist

Follow this order on day one:

#list(
  [Find a weapon — anything from the kitchen or garage.],
  [Drink from a sink. Fill a water bottle if you find one.],
  [Find a safe house — two-story, edge of town. Close curtains, lock doors.],
  [Eat fresh food from the fridge.],
  [Find a bag — backpack, duffel, anything that increases carry capacity.],
  [Find a better weapon — check garages and sheds for axes, bats, crowbars.],
  [If you have a TV, check the *Life and Living* channel at 6:00, 12:00, and 18:00 for free skill XP.],
  [Before nightfall: close all curtains, lock all doors, turn off lights, go upstairs, be quiet.],
)

== 8. TV and Radio

=== Life and Living TV

At 6:00 AM, 12:00 PM, and 6:00 PM, the channel *Life and Living* runs skill shows:
- *6:00 AM — Cooking Show*
- *12:00 PM — Woodcraft (Carpentry)*
- *6:00 PM — Exposure Survival (Fishing, Trapping, Foraging)*

These shows stop after about 9 days — the broadcast eventually goes dead. Watch them while you can.

#tip[
  If you find a skill book for the matching skill, read it *before* watching. The XP bonus applies to TV XP too.
]

=== Radios

Radios can be tuned to the *Automated Emergency Broadcast* for weather forecasts and helicopter warnings. The frequency is random — check radios you find for the right channel. Keep a radio at your base.

== 9. Moodles

Moodles are the icons top-right. Hover over any to see details.

*Physical (Red):* Bleeding (bandage now), Injured, Heavy Load (drop items), Exhausted (rest).
*Sickness (Green):* Queasy/Nauseous (could be infection), Wet (dry off or get sick), Cold (find warm clothes).
*Mental (Blue):* Panic (fades as you kill zombies), Anxious/Stressed (Smoker = need cigarette), Bored (read or go outside).
*Comfort (Yellow):* Hungry (eat), Thirsty (drink), Tired (sleep), Pain (take painkillers).

If you were recently injured and see green moodles progressing (queasy -> nauseous -> sick -> fever), it's probably the Knox Infection. There is no cure. Prepare your next character.

== 10. Death and What Comes After

You will die. It's how the game works.

When you die, you get two choices:
1. *New Character* — Create a new character in the same world. Your old base, items, and crops are still there.
2. *Quit to Menu* — Start fresh. No shame in this as a beginner.

=== What to Do If Bitten

A zombie bite is always fatal (makes a distinctive sound, health panel shows "Bitten"):
#list(
  [Accept it. No cure.],
  [Put your best items in a container at your base for your next character.],
  [Go out fighting — clear zombies for your next life.],
)

== 11. First Night Strategy

When the sun sets:

#list(
  [Close all curtains on every window.],
  [Lock all exterior doors.],
  [Turn off all lights — they attract zombies.],
  [Go upstairs — zombies on the ground floor can't reach you immediately.],
  [Be quiet — don't run, don't use noisy tools.],
  [Eat, drink, read a skill book if you have one.],
  [Sleep. Your character will wake up if zombies break in.],
)

If you hear banging downstairs: stay upstairs, have a spare sheet + nail ready to craft a sheet rope for a window escape.

== 12. Days 2-7 — What's Next

You made it through the first night. Here's the plan for the first week:

#list(
  [*Scout your neighborhood.* Get a feel for where things are.],
  [*Watch Life and Living* at 6:00, 12:00, and 18:00 every day.],
  [*Find skill books.* Bookstores and schools. Read before practicing skills.],
  [*Barricade your base.* Board up ground-floor windows.],
  [*Collect water.* Fill pots, buckets, and bottles before the water shuts off.],
  [*Find a car.* Check driveways and parking lots. Keys in glove boxes, on the ground, or on zombies nearby.],
  [*Practice skills.* Disassemble furniture for Carpentry XP, cook meals for Cooking XP, read books.],
)

When you're comfortable with all of this, you're ready for Wave 1.
