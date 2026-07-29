= Appendix

== Troubleshooting

=== Game Won't Launch

1. Verify game files in Steam (Properties → Installed Files → Verify integrity)
2. Uninstall/reinstall Content Manager
3. Delete `Documents/Assetto Corsa/cfg/` and let AC regenerate configs
4. Disable all mods in CM → launch stock AC → re-enable mods one by one

=== Content Manager Fails to Detect AC

1. Manually set game path in CM Settings → Assetto Corsa → Game path
2. Ensure Steam is running
3. Check that you launched AC at least once (creates registry keys CM reads)

=== CSP Not Working

1. Ensure CSP is installed in `assettocorsa/extensions/`
2. Check that you launched AC through CM (not Steam directly)
3. CM Settings → Assetto Corsa → enable "Use 64-bit AC"
4. Verify CSP version matches your AC version

=== Mods Not Appearing

1. Check the mod is installed (CM → Content tab)
2. Ensure the mod is enabled (checkbox next to it)
3. For cars: check `assettocorsa/content/cars/` for a valid folder
4. For tracks: check `assettocorsa/content/tracks/`
5. Restart CM

=== Performance Issues After Mod Installation

1. Lower CSP settings (especially Reflections and Shadows)
2. Disable unnecessary overlays
3. Reduce mirror resolution in CSP
4. Check for conflicting mods (see `conflicts.md`)

=== Force Feedback Issues

1. Verify wheel drivers are installed
2. Check that AC is selected as the game in FFB Clip
3. Reduce overall FFB gain to 70% and gradually increase
4. Set "Filter" to 0 in AC FFB settings
5. Disable "Minimum Force" and "Spring/Damper" effects in wheel software

== Performance Reference

#table(
  columns: (auto, auto, auto, auto),
  table.header([Component], [Minimum], [Recommended], [Ideal]),
  [CPU], [Intel i5-2500K / AMD FX-8150], [Intel i7-4790K / AMD Ryzen 5 3600], [Intel i7-10700K / AMD Ryzen 7 5800X],
  [GPU], [NVIDIA GTX 660 / AMD R9 270], [NVIDIA GTX 1070 / AMD RX 580], [NVIDIA RTX 3070 / AMD RX 6800],
  [RAM], [8 GB], [16 GB], [32 GB],
  [Storage], [HDD], [SSD], [NVMe SSD],
)

== Glossary

#text(weight: "bold")[*Apex*] — The innermost point of a racing line through a corner.

#text(weight: "bold")[*Camber*] — The vertical tilt of a wheel relative to the road surface. Negative camber improves cornering grip.

#text(weight: "bold")[*Content Manager (CM)*] — Third-party launcher and mod manager for Assetto Corsa. The primary tool for this guide.

#text(weight: "bold")[*CSP (Custom Shaders Patch)*] — A community-created patch for Assetto Corsa that adds advanced graphics, weather, and post-processing effects.

#text(weight: "bold")[*FFB (Force Feedback)*] — Haptic feedback from the steering wheel that communicates tyre grip, road surface, and car behavior.

#text(weight: "bold")[*FOV (Field of View)*] — The extent of the observable game world visible at any moment. Correct FOV is critical for accurate depth perception.

#text(weight: "bold")[*Oversteer*] — Condition where the rear wheels lose grip, causing the car to rotate more than intended.

#text(weight: "bold")[*PP Filter (Post-Processing Filter)*] — A visual filter applied after rendering that affects color, contrast, bloom, and tone mapping.

#text(weight: "bold")[*Sol*] — A weather simulation system for Assetto Corsa that requires CSP. Adds dynamic time-of-day and realistic weather.

#text(weight: "bold")[*Understeer*] — Condition where the front wheels lose grip, causing the car to continue straight despite steering input.

== Useful Links

- #link("https://www.racedepartment.com/downloads/category/assetto-corsa.1325/")[RaceDepartment — Assetto Corsa Mods]
- #link("https://assettocorsa.club/content-manager.html")[Content Manager Official Site]
- #link("https://assettocorsa.gg/")[Assetto Corsa Modding Guide]
- #link("https://www.reddit.com/r/assettocorsa/")[r/assettocorsa on Reddit]
- #link("https://www.overtake.gg/")[Overtake.gg — AC Mod Database]

== Credits

- *Author*: The Assetto Maximus team
- *Logo*: Assetto Maximus brand assets
- *Mod Credits*: Each mod's respective author(s) — see individual mod pages for full credits
- *Special Thanks*: The Assetto Corsa modding community

*Assetto Corsa is a product of Kunos Simulazioni. This guide is a community project and is not affiliated with or endorsed by Kunos Simulazioni.*

#pagebreak()
