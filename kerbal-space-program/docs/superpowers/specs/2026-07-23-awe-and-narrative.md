# Awe & Narrative — Design Spec

**Date:** 2026-07-23

## 1. Narrative Prologue

A new page between the cover and the Table of Contents. Half-page of prose setting the Interstellar/2001/Hail Mary tone. Added to `template/main.typ`.

## 2. #awe Callout Function

New callout in `template/lib.typ`:
- Color: golden amber (`rgb("#FFB300")`) — distinct from tip (green), warning (orange), danger (red), info (teal)
- Format: `#awe([ content ])` — same pattern as other callouts

## 3. Pacing Philosophy Section

After the prologue, before the Installation chapter. A `#chapter-heading([Before You Begin])` section. Key message: don't rush. Sit in IVA during burns. Watch the stars. The journey is the point.

## 4. Awe Moment Placements

| Wave | Moment | Location (insert after) |
|------|--------|------------------------|
| W0 | First orbit — look down at Kerbin | After gravity turn section, before "Where to Go from Here" |
| W0.5 | First Mun landing — look back at Kerbin | After Mun landing steps |
| W0.5 | First docking — two ships becoming one | After docking proper section |
| W0.5 | First station — your creation in orbit | After station assembly section |
| W1 | Duna transfer — leaving Kerbin's SOI | After Duna transfer section |
| W1 | Laythe — Joolrise | After Laythe spaceplanes section |
| W1 | Kcalbeloh wormhole from Jool | After Jool system section |
| W2 | Interstellar cruise — alone between stars | After engine classes section |
| W2 | Arriving at Grannus | After Grannus destination profile |
| W2 | Arriving at Kcalbeloh — the accretion disk | After Kcalbeloh destination profile |
| W2 | First warp jump | After Blueshift warp infrastructure |
| W2 | Endgame — looking back | End of W2 guide, before challenges |
