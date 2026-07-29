// guide/appendix.typ

#import "../template/lib.typ": *

#section-heading([Maneuver Reference Card])

#section-heading([Delta-V Map — Stock Kerbol System])

Approximate vacuum delta-v from low Kerbin orbit (LKO, 80 km):

#table(
  columns: (auto, auto),
  inset: 6pt,
  align: (left, right),
  stroke: 0.5pt + mun-gray,
  table.header([*Destination*], [*Delta-V (m/s)*]),
  [Low Kerbin Orbit (starting point)], [0],
  [Mun transfer], [860],
  [Mun capture], [310],
  [Mun landing (from low orbit)], [580],
  [Mun return to Kerbin], [860],
  [Minmus transfer], [930],
  [Minmus capture], [160],
  [Minmus landing], [180],
  [Minmus return to Kerbin], [930],
  [Duna transfer], [1,100],
  [Duna aerocapture], [0–300],
  [Duna landing (parachutes)], [100–300],
  [Duna ascent], [1,400],
  [Eve transfer], [1,100],
  [Eve capture], [300],
  [Eve landing (parachutes)], [50],
  [Eve ascent], [8,000+],
  [Jool transfer], [2,000],
  [Jool aerocapture (Laythe)], [0–500],
  [Moho transfer], [2,200],
  [Moho capture], [2,400],
  [Eeloo transfer], [2,100],
  [Eeloo capture], [1,400],
)

#info([
  These are vacuum numbers. Atmospheric launches require more — use atmospheric delta-v in the VAB. Values assume optimal transfer windows and Hohmann transfers. Add 10–20% margin for imperfect execution.
])

#section-heading([Keybinding Quick Reference])

#table(
  columns: (auto, auto),
  inset: 4pt,
  align: (left, left),
  stroke: 0.5pt + mun-gray,
  table.header([*Key*], [*Action*]),
  [Space], [Activate next stage],
  [Z / X], [Full throttle / Cut throttle],
  [Shift / Ctrl], [Throttle up / down],
  [T], [Toggle SAS],
  [F], [Hold SAS (temporary)],
  [R], [Toggle RCS],
  [G], [Toggle landing gear],
  [U], [Toggle lights],
  [M], [Toggle Map view],
  [. / ,], [Time warp up / down],
  [Tab], [Cycle focus in Map view],
  [Backspace], [Reset focus to current vessel],
  [Caps Lock], [Fine-control mode],
  [Alt+L], [Lock current stage],
  [F5 / F9], [Quicksave / Quickload (hold F9)],
  [Esc], [Pause menu],
)

#section-heading([Acronym Glossary])

- *Ap / Pe* — Apoapsis / Periapsis (highest and lowest points of orbit)
- *CoL / CoM / CoT* — Center of Lift / Mass / Thrust
- *Dv / Δv* — Delta-V (change in velocity, your "fuel budget" in m/s)
- *ISRU* — In-Situ Resource Utilization (mining and refining resources where you land)
- *KSC* — Kerbal Space Center
- *LKO* — Low Kerbin Orbit (~80 km)
- *RCS* — Reaction Control System (translation thrusters for docking)
- *SAS* — Stability Augmentation System (autopilot assist)
- *SSTO* — Single Stage To Orbit
- *TWR* — Thrust-to-Weight Ratio (must be >1 to lift off)
- *VAB / SPH* — Vehicle Assembly Building / Spaceplane Hangar

#section-heading([Recommended Resources])

- *KSP Wiki* — https://wiki.kerbalspaceprogram.com
- *Delta-V Map (community)* — https://wiki.kerbalspaceprogram.com/wiki/Delta-v_map
- *KSP Forum* — https://forum.kerbalspaceprogram.com
- *r/KerbalSpaceProgram* — https://reddit.com/r/KerbalSpaceProgram
- *CKAN Metadata* — https://github.com/KSP-CKAN/CKAN-meta
- *Scott Manley (YouTube)* — Tutorials and career playthroughs
- *Matt Lowne (YouTube)* — Build guides and mission showcases
