= Configuration Guides

== Graphics Settings

=== Video Settings (in-game)

#table(
  columns: (auto, auto, auto),
  table.header([Setting], [Recommended Value], [Notes]),
  [Resolution], [Native monitor resolution], [Match your display],
  [VSync], [Off], [Reduces input lag],
  [Fullscreen], [On], [Better performance],
  [Anti-aliasing], [4x MSAA], [Balance quality/performance],
  [Anisotropic Filtering], [16x], [Minimal performance cost],
  [World Detail], [High], [],
  [Reflection Quality], [Low to Medium], [Heavy performance impact at High],
  [Shadow Quality], [High], [],
  [Smoke Generation], [Low], [Minimal visual benefit],
  [Post Processing], [Ultra], [When using CSP, managed by PP filter],
)

=== Content Manager Settings

*Settings → Content Manager*

- *Appearance*: Dark theme recommended for readability
- *Language*: Your preference
- *Start minimized*: Optional
- *Close to tray*: Recommended to keep CM accessible

*Settings → Assetto Corsa*

- *Game path*: Verify it points to your AC installation
- *Launch with CSP*: Enable after Wave 1 CSP installation
- *Audio*: Enable "Use custom audio" if you install sound mods

== Force Feedback Settings

=== Base FFB Settings (in-game)

#table(
  columns: (auto, auto, auto),
  table.header([Setting], [Recommended Value], [Notes]),
  [Gain], [80-100%], [Adjust per car],
  [Filter], [0], [No smoothing],
  [Minimum Force], [0%], [Avoid artificial effects],
  [Kerb Effects], [30-50%], [Personal preference],
  [Road Effects], [30-50%], [Personal preference],
  [Slip Effects], [50%], [Helps detect loss of grip],
  [ABS Effects], [100%], [If car has ABS],
  [Gamma], [1.00], [Linear response],
)

=== FFB Clip Configuration

1. Launch FFB Clip before AC
2. Select your wheel from the dropdown
3. Set target clipping to 90-95%
4. Enable auto-gain adjustment
5. In-game, run 3-4 laps
6. FFB Clip will suggest gain adjustment — accept it
7. Verify: FFB bar should stay mostly green, with occasional yellow spikes

=== Wheel-Specific Notes

*Logitech G27/G29/G920*

- Logitech Gaming Software: Enable "Allow game to adjust settings"
- Overall effects strength: 100%
- Spring and damper effects: 0%
- Enable centering spring: OFF

*Thrustmaster (T300/TX/T150)*

- Control Panel: Set rotation to 900° (or match in-game)
- Master gain: 75-85%
- No other adjustments needed

*Fanatec (CSL/DD)*

- Wheel Base: SEN = Auto, FF = 100, FEI = 100
- In-game: Start with lower gain (60-70%) and increase

== Content Manager Advanced Configuration

=== Custom Shaders Patch Settings

*Accessed via CM → Settings → Custom Shaders Patch*

#table(
  columns: (auto, auto),
  table.header([Tab], [Key Settings]),
  [General], [Enable "Use 64-bit AC", "Skip intro logos"],
  [Lighting FX], [Adjust sun, ambient, and contrast to preference],
  [Weather FX], [Enable "Sol weather script" after Sol installation],
  [Particles FX], [Enable smoke and rain particles],
  [Smart Mirror], [Set FPS limit to 30 to save performance],
)

=== Sol Configuration

After installing Sol:

1. Set in-game time to 14:00
2. Weather: Select "Sol" weather plan
3. Enable "Time progression" for dynamic day/night
4. Set time multiplier to 1x (real time) or 2-5x for accelerated
5. Adjust cloud coverage in the Sol Weather Controller app

== Audio Configuration

- *Settings → Audio*
- Enable "Reduce CPU load from audio" if experiencing stutters
- Set "Audio renderer" to default (Windows Audio)
- Adjust engine volume and environment volume to preference

== Control Mapping

Create a profile for each control method:

1. *Settings → Controls → New Preset*
2. Name: e.g., "G29 - Default"
3. Map all controls precisely
4. Set steering deadzone: 0-3%
5. Set brake/gas deadzone: 0-5%
6. Save and assign

== Performance Optimization

=== Low-End Systems

- Reduce World Detail to Medium
- Disable mirrors (or use Smart Mirror with 15 FPS limit)
- Shadow Quality: Low
- Disable Post Processing
- Run in 1080p
- Close background applications

=== High-End Systems

- World Detail: Maximum
- Reflection Quality: High
- Shadow Quality: Maximum
- Post Processing: Ultra
- Enable all CSP visual features
- Use 4K resolution if supported

#pagebreak()
