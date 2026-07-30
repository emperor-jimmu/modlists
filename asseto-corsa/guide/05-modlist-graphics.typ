= Graphics Mods

This section catalogs all graphics-enhancing mods in Assetto Maximus. Graphics mods are available from Wave 1 onward.

== Wave 1 Graphics

=== Weather & Lighting

- #link("https://www.addonhub.org/2026/04/ac-pure-321.html/")[Pure] — Advanced lighting, weather, and sky controller. Physically-based sky rendering, volumetric clouds, dynamic exposure, and realistic sun positioning. Delivers the most photorealistic lighting available for AC. Pure is the successor to the older Sol weather system and is now the recommended weather controller for all CSP installations. *Dependencies: CSP 0.2.0+*. *Impact: Lighting framework replacement — controls sky rendering, cloud scattering, and light dispersion. System: Weather/Lighting engine*.
- #link("https://www.acstuff.club/patch/")[Custom Shaders Patch] — Framework that enables Pure and other visual mods. Adds per-pixel lighting, dynamic shadows, rain effects, and post-processing. *Impact: Foundational graphics framework*. Use the latest stable build compatible with AC v1.16.4.

*Pure vs Sol (legacy):* Pure is the current standard. Sol was the predecessor and remains available for users who cannot upgrade to Pure, but Pure offers more realistic sky colors, cloud scattering, and light dispersion. Pure can coexist with Sol's weather plan files but should be the active controller.

=== Post-Processing Filters

Post-processing filters (PP filters) control color grading, tone mapping, and bloom — the final image "look." The right PP filter transforms AC's visuals from dated to photorealistic.

- #link("https://www.overtake.gg/downloads/revolution-pp-filter.74846/")[Revolution PP Filter] — Clean, neutral post-processing. *Dependencies: CSP, Pure*. *Impact: Visual tone mapping and color grading*. *Note: Replaces the old Reasonable PP Filter which is no longer available on OverTake*.gg.
- #link("https://www.overtake.gg/downloads/c13-aegis-post-processing-filter.59979/")[C13 Aegis PPFilter] — Photorealistic post-processing filter. Designed for Pure/CSP. Features realistic color science, natural highlights, deep contrast. One of the top choices for photorealism. *Dependencies: CSP, Pure recommended*.
- #link("https://www.overtake.gg/downloads/a3pp-beautiful-ppfilter-for-assetto-corsa.24258/")[A3PP (A3 Post Processing)] — Dramatic, film-style PP filter. Warm tones, cinematic contrast, natural bloom. Popular for screenshots and racing. *Dependencies: CSP*.
- #link("https://www.overtake.gg/downloads/photorealistic-filter.34050/")[ILCB Photo Realistic Filter] — PP filter specifically focused on photographic realism. Neutral color palette, subtle bloom, natural gamma. *Dependencies: CSP*.
- #link("https://www.overtake.gg/downloads/natural-mod-pp-filter.4551/")[Natural PP Filter] — PP filter designed for accuracy. Minimal artistic bias, clean highlights, natural shadow detail. *Dependencies: CSP*.

*Choosing a PP filter:* Try 2—3 filters and pick the one that looks best on your monitor. Filters affect different monitors differently based on panel type (IPS, VA, OLED) and calibration.

=== Texture & Lighting Enhancements

- *4K Skin & Texture Packs* — High-resolution car skins and track textures. Search #link("https://www.overtake.gg/downloads/categories/ac-skins.7/")[OverTake AC Skins] or browse specific packs: Porsche 911 RSR (#link("https://www.overtake.gg/downloads/56-57-porsche-911-rsr-team-project-1-wec-2019-2020-6h-cota-4k.81708/")[WEC 2019], #link("https://www.overtake.gg/downloads/56-57-77-78-86-88-89-99-porsche-911-rsr-le-mans-2020-4k.81109/")[Le Mans 2020]), #link("https://www.overtake.gg/downloads/audi-rs-5-dtm-dtm-2015-pack-2-4k.79094/")[Audi RS5 DTM], #link("https://www.overtake.gg/downloads/rss-formula-hybrid%C2%AE-v12-r-tyre-pack-2k-4k.83341/")[RSS Formula Hybrid Tyres]. *Dependencies: Content Manager*.

=== 4K Texture Packs

These packs replace stock textures across the game. Install in order: track surfaces first (biggest impact), then environmental, then car details. All require *Custom Shaders Patch* and are *Wave 1*.

==== Track Surfaces & Circuit Environment

- #link("https://www.racedepartment.com/search/113110202/?q=4k+track+surfaces")[*4K Track Surfaces*] — High-resolution asphalt, concrete, and kerb textures for Kunos circuits. Replaces the muddy default surfaces with sharp, photorealistic road detail. Single biggest visual upgrade for circuit driving — everything you look at is road. Search "4K track surfaces AC" on RaceDepartment for the most current pack.
- #link("https://www.racedepartment.com/search/113110202/?q=4k+grass+texture+assetto")[*4K Grass Textures*] — Replaces the default blotchy green grass with detailed, varied grass textures. Multiple biome variants available (European, desert, autumn). Search RaceDepartment for the latest version compatible with CSP.
- #link("https://www.racedepartment.com/search/113110202/?q=4k+tree+texture+assetto")[*4K Tree & Foliage Textures*] — High-res tree bark, leaf, and bush textures. Makes forested circuits (Nordschleife, Road America, VIR) look current-generation instead of 2014-era. Search RaceDepartment for "4K tree textures AC".
- #link("https://www.racedepartment.com/search/113110202/?q=4k+kerb+texture+assetto")[*4K Kerbs & Rumble Strips*] — Detailed kerb textures with visible aggregate, painted colour bands, and wear marks. The red-and-white rumble strips finally look like real concrete instead of blurry blocks.

==== Sky & Weather Textures

- #link("https://www.racedepartment.com/search/113110202/?q=4k+sky+cloud+texture")[*4K Sky & Cloud Textures*] — High-resolution skybox textures with detailed cloud formations, sunset gradients, and star fields. Replaces the low-res vanilla sky that shows pixelation at high FOV. Compatible with Pure and Sol weather engines.
- #link("https://www.racedepartment.com/search/113110202/?q=rain+spray+texture+assetto")[*Rain & Spray FX*] — Updated raindrop textures on the windscreen and spray particle effects. Works with CSP's rain implementation. Visible droplets instead of blurry smears.

==== Car Interior & Garage

- #link("https://www.racedepartment.com/search/113110202/?q=interior+textures+assetto+corsa")[*Interior Textures*] — Replace low-res dashboard, steering wheel, and seat textures for Kunos cars. Gauges are readable, carbon fibre weave is visible, and alcantara looks like fabric, not plastic.
- #link("https://www.racedepartment.com/search/113110202/?q=showroom+garage+texture+assetto")[*Showroom & Garage Textures*] — Updates the CM showroom environment textures. Your previews and garage views match the quality of the in-game assets.

==== Priority Order

Install in this order for maximum visual impact per gigabyte downloaded:
1. *Track Surfaces* (visible on every corner of every lap)
2. *Grass + Trees* (visible on every circuit with foliage)
3. *Sky & Clouds* (visible in every session, especially with Pure)
4. *Kerbs* (visible at every apex and track-out)
5. *Rain & Spray* (only when using CSP rain)
6. *Interiors* (only visible in cockpit cam)
7. *Showroom* (only visible in menus)

#pagebreak()

=== Optional: Reshade

- #link("https://reshade.me/")[Reshade] — External post-processing injector. Adds ambient light, bloom, SMAA, LUT-based color grading, and dozens of other effects on top of AC/CSP output. *Dependencies: Standalone (injects into AC process)*. *Impact: Additional post-processing layer. Can conflict with some CSP features — test per-filter*.

*Note:* Reshade is powerful but adds GPU overhead (5—15% frame time impact). Many users find Pure + C13 Aegis sufficient without Reshade.

== Photorealism Checklist

To achieve a photorealistic look:

1. Install CSP (foundation)
2. Install Pure (lighting/weather)
3. Install a PP filter — C13 Aegis or A3PP recommended
4. Track textures: ensure tracks have hi-res surface textures
5. Configure CSP Lighting FX: enable dynamic exposure, high-res reflections
6. Configure Pure weather controller for your region and time of day
7. (Optional) Reshade for final color grading if desired
8. Test PP filter selection — visual preference is subjective

#pagebreak()
