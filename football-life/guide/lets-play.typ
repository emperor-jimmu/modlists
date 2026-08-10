=== Before You Start

If you have never played a PES game before, you are in for something different. Football Life descends from PES 2021, which means its DNA is built on deliberate, physics-driven football rather than the rapid, animation-locked feel of other titles. The ball has weight. Player momentum matters. A rushed pass from an off-balance midfielder will come off differently than the same pass delivered by a centre-back in acres of space. This is not a bug — it is the core of the game. Lean into it.

==== Controller Setup

FL26 supports Xbox controllers natively. Plug in an Xbox One or Series controller and the game recognises it immediately, with all button prompts matching the controller face.

PlayStation controllers need a translation layer. Neither DualShock 4 nor DualSense are natively supported — the game will see them as generic DirectInput devices and button prompts will be garbled. You have two reliable options:

#strong[DS4Windows:] A free, mature tool that presents your PlayStation controller to Windows as a virtual Xbox 360 pad. Install DS4Windows, pair your controller via Bluetooth or USB, and check the Controllers tab to confirm it is emulating an Xbox 360 pad. Button prompts in-game will show Xbox glyphs.

#strong[Steam Input:] Add `FL 26.exe` (or `sider.exe` — either works) as a non-Steam game. In Steam Big Picture Mode, enable PlayStation Configuration Support under Controller Settings. The overlay translates PS inputs to XInput. This approach is less reliable than DS4Windows for FL26 specifically — some users report intermittent disconnection when the Sider overlay is also active — but it requires no third-party driver installation.

#strong[Keyboard is a handicap.] FL26 processes input on an analogue level — dribbling precision, pass weight, and shot placement all depend on how far you push the left stick and how much pressure you apply to the trigger. A keyboard reduces all of this to binary on/off states. You can play with a keyboard, but you will lose nuance in every phase of play. Even an inexpensive wired Xbox 360 controller will improve the experience more than any graphics mod.

==== Difficulty Selection

Start on Regular or Professional. These settings give the AI credible build-up play without the input-reading that appears on Superstar and Legend difficulties. Move up when matches feel comfortable at 8–10 minutes per half. The jump from Professional to Superstar is the steepest in the game — do not be surprised if your first Superstar match ends 4–0 to a mid-table side. This is normal output from the difficulty scaling, not a reflection of your ability.

=== Controls Primer

FL26 inherits PES 2021's control scheme. If you have played FIFA for years, the muscle memory will fight you for the first few sessions. Stick with it — the layout is internally consistent and rewards practice.

==== Core Controls (Attack)

The face buttons follow the PES convention: #strong[A] (X on PlayStation glyphs) is the through-ball, not the pass. This trips up FIFA migrants constantly. Commit it to memory early.

- #strong[X] — short pass / ground pass. Hold for a firmer pass; tap for a light one. Direction and power are independent: aim with the left stick, weight with how long you hold the button.
- #strong[A] — through-ball. Sends the ball into space ahead of a teammate. Use when a runner is making a diagonal break behind the defensive line. Do not use when the receiver is standing still and marked — it will roll straight to the defender.
- #strong[Y] — lobbed through-ball / high pass. Hold longer for a deeper flight. Effective over a high defensive line, but easily intercepted against a compact low block.
- #strong[B] — shoot. Power is linear to hold duration. The left stick direction at the moment of contact determines placement: push toward the far post for a placed finish, push away for a driven shot across goal.
- #strong[RB + B] — finesse / curled shot. Slower release but bends around the keeper. Use from the edge of the box when cutting inside onto the stronger foot.
- #strong[LB + Y] — early cross. Sends a dipping ball into the box from deeper positions. More effective than a standard cross when the winger has not yet reached the byline.
- #strong[LT] — close control / shield. Hold to keep the ball tight when receiving a pass under pressure. Also used to hold off a defender with your back to goal.

==== Core Controls (Defence)

- #strong[A] — pressure / contain. The nearest AI teammate will close down the ball carrier. Use this to apply second-man pressure while you control a different defender cutting off a passing lane.
- #strong[X] — standing tackle. Time the button press with the opponent's touch, not their body position. A mistimed standing tackle on a quick winger with high dribbling stats is a yellow card waiting to happen.
- #strong[B] — sliding tackle. Last resort. Recovery time after a missed slide tackle is long enough for the attacker to create a scoring chance. Only use when you have cover behind you or absolutely must stop a shot.
- #strong[RB] — sprint. Hold to chase. Be aware that sprinting while jockeying makes your defender easier to turn — a standing defender has faster lateral movement than a sprinting one.
- #strong[RT + LT] — super cancel. This is one of the three most important mechanics in the game. Hold both triggers simultaneously to override the game's assisted player movement. Use it to manually reposition a defender who is auto-tracking a run, to abort a triggered through-ball animation, or to steer a receiving player toward the ball instead of waiting for it to arrive. Without super cancel, you are at the mercy of the CPU's pathing. With it, you control your player.

==== The Tactical D-Pad

The D-pad is your in-match tactical interface. While play is live, pressing up or down on the D-pad cycles through two systems:

#strong[Attack/Defence Level:] Tapping up or down without holding any modifier adjusts your team's overall mentality on a five-point scale, from 1 (ultra-defensive, everyone behind the ball) to 5 (ultra-attacking, full-backs pushed to the byline). The current level appears briefly as a bar next to the scoreboard. Each increment shifts your defensive line, pressing intensity, and player runs forward. A one-level change is subtle; a three-level swing from 2 to 5 is transformative. Use levels 1–2 when protecting a lead in the final 10 minutes. Use levels 4–5 when chasing a goal.

#strong[Fluid Formation Switching:] Holding LT and pressing up or down on the D-pad cycles through your three preset tactics — kick-off, in-possession, and out-of-possession. The active tactic name appears briefly on screen. Covered in detail in the Tactics section below, but the short version: you can set different formations for when you have the ball and when you do not, then switch between them mid-match with the D-pad.

==== Off-Ball Movement

Football is played off the ball. FL26 gives you tools to influence what happens away from the carrier:

#strong[Teammate Pressure (Square / X on PS):] Holding this button sends the nearest AI teammate to press the ball carrier while you continue to control your selected player. This is your primary defensive tool. Use it to apply a two-man press — you cut off the obvious passing lane, the AI teammate closes the carrier. It drains the pressing player's stamina, so do not hold it continuously. Use it in bursts when the opponent receives the ball facing their own goal or when they are isolated on the wing.

#strong[Trigger Run (LB):] Flick the right stick toward a teammate after passing to send them on a forward run, or tap LB while aiming the left stick at a teammate to trigger their run manually. Essential for breaking down a parked bus — without triggered runs, your forwards will stand still against a low block.

#strong[Super Cancel (RT + LT):] Beyond its defensive uses, super cancel lets you manually chase a loose ball that the CPU would otherwise concede as "belongs" to the opponent. In a 50-50 situation, the player who reaches the ball first wins — and super cancel gets you there faster than assisted movement.

==== Set Pieces

#strong[Free kicks:] Aim with the left stick before the run-up. The aiming reticle shows where the ball will start its flight, not where it ends — curl and dip happen after the kick. Hold up on the left stick during the shot for dip (the ball rises then drops sharply — best from 18–25 yards), hold left or right for curve, and hold up on the right stick for a knuckleball (unpredictable flight; effective from distance). Power: roughly 40–50% bar for a dipping shot from 25 yards, 60–70% for a driven shot.

#strong[Corner kicks:] After the camera settles, you can select a receiver with the right stick before taking the corner — this cycles through players in the box and lets you aim a near-post, far-post, or penalty-spot delivery to a specific target. In-swinging corners (right-footed from the left side, left-footed from the right) are statistically more dangerous. Aim near the penalty spot with 50–60% power for the highest conversion rate against default AI defending.

#strong[Penalties:] The composure circle shrinks and expands around the reticle. Press shoot when the circle is smallest for maximum accuracy. Direction is applied with the left stick after power is set — do not aim before the run-up, as this telegraphs your shot to a human opponent.

=== Tactics System

Tactics in FL26 are set in the Game Plan menu before each match. You can save up to three preset game plans and switch between them mid-match via the tactical D-pad. The system rewards coherence — a tactic with complementary instructions will outperform one with conflicting settings, even if the individual numbers look better.

==== Fluid vs Fixed Formations

A #strong[fixed formation] uses the same shape in all phases. Your 4-3-3 is a 4-3-3 when you have the ball, when you lose it, and when the opponent is building up. Simple, predictable, and easy to manage. Recommended while you are learning the game.

A #strong[fluid formation] assigns different shapes to different phases:

- #strong[Kick-Off:] The default shape shown on the formation screen. Used at restarts and when neither team has clear possession.
- #strong[In-Possession:] The shape your team shifts into when you have the ball. Typically more expansive — full-backs become wing-backs, a holding midfielder steps into the attack, or a wide forward tucks inside.
- #strong[Out-of-Possession:] The shape your team shifts into when defending. Typically more compact — wingers drop to form a midfield five, a striker drops into the hole.

A classic example: a 4-3-3 kick-off shape that becomes a 3-2-5 in possession (one full-back steps into midfield, the opposite winger pushes high and wide) and a 4-5-1 out of possession (both wingers track back to form a flat midfield five). Setting this up takes five minutes in the Game Plan screen. The tactical D-pad then lets you cycle through these shapes during play.

#strong[Fluid formations consume team spirit.] A team with low cohesion will lose shape during transitions — players will be caught between two positions and arrive late. Do not enable fluid formations with a newly assembled squad. Build familiarity first.

==== Advanced Instructions

Each player in your formation can receive up to two advanced instructions under the Player Settings tab. These are not cosmetic — they meaningfully alter behaviour:

- #strong[Tight Marking:] The selected player will stick to a designated opponent regardless of your team shape. Effective for neutralising a single creative threat (a deep-lying playmaker, an inverted winger who drifts inside). Costs stamina and can pull your shape apart if the marked player drags your defender out of position.
- #strong[Counter Target:] A forward who stays high and central when you are defending, ready to receive a direct ball after a turnover. Requires a physically strong striker with good hold-up play. Useless on a small, quick forward who gets bullied off the ball while waiting for support.
- #strong[Defensive / Offensive on Set Pieces:] Designates which centre-backs go forward for corners and free kicks. By default, anyone over 185 cm with heading stats above 75 will push up. Override this if you want a specific aerial threat attacking every set piece.

#strong[Team instructions] are set in the Game Plan's Advanced Instructions tab:

- #strong[Defensive Line Depth:] Scale of 1–10. A high line (7–10) compresses space but leaves you vulnerable to through-balls behind the defence. A low line (1–4) protects against pace but invites pressure and gives the opponent time on the ball in midfield. Most balanced tactics sit at 5–6.
- #strong[Compactness:] Scale of 1–10. Determines the horizontal and vertical spacing between your defensive and midfield lines. High compactness (7–10) denies central passing lanes and forces the opponent wide — effective against possession-based teams. Low compactness (1–4) spreads your lines, covering more pitch width at the cost of gaps between them.
- #strong[Pressing Intensity:] How aggressively your players close down. Aggressive pressing wears out your squad — expect noticeable stamina drop-off after 60 minutes if you press high. Conservative pressing conserves energy but concedes territorial control.

==== Team Spirit & Familiarity

Team spirit is a numeric score from 0–99 that gates the effectiveness of every tactical instruction you set. A tactic with 99 spirit plays fluidly — players anticipate each other's runs, transitions are crisp, and offside traps fire in unison. The same tactic with 40 spirit plays like strangers in the same kit.

Spirit builds over time through three mechanisms:

1. #strong[Match experience:] Playing matches while using a tactic raises familiarity with it. This is the primary driver.
2. #strong[Player affinity:] A player whose registered position matches their tactical role gains familiarity faster. Playing a natural winger at full-back will slow spirit growth for that flank.
3. #strong[Team role compatibility:] Players with complementary team roles (bandiera, maestro, etc.) accelerate spirit gain for nearby positions. Covered in the Training section.

Changing your formation, instructions, or starting lineup resets some familiarity — small tweaks cost a few points; a complete tactical overhaul drops spirit significantly. Do not radically alter your game plan mid-season unless you are willing to absorb 5–10 matches of reduced cohesion.

=== Scouting & Youth Academy

Scouting is how you find players. The transfer market alone shows you established names; the scout network reveals the teenagers at Racing Club and Cruzeiro who will be world-class in three seasons.

==== Building Your Scout Network

In Master League, you hire scouts and assign them to regions. Each scout has three attributes:

- #strong[Experience:] How fast they produce reports. A level-5 scout returns full evaluations within weeks; a level-1 scout takes months to provide the same detail.
- #strong[Judgement:] How accurately they assess a player's current and potential ability. Low judgement means the star ratings in their reports may be off by half a star or more. Do not spend transfer budget on a four-star report from a scout with level-1 judgement.
- #strong[Negotiation:] How effectively they handle transfer talks. A good negotiator can lower the selling club's asking price and the player's wage demands. A poor negotiator may get the deal done but at a premium.

Each scout covers one region at a time. Regions are broad — "South America," "Central Europe," "West Africa" — and the pool of discovered players grows the longer a scout stays assigned. Rotate scouts between regions every few months to maintain a diverse pipeline, but do not yank a scout out of a region mid-search — you lose the accumulated scouting progress.

==== Reading Scout Reports

A completed report shows:

- #strong[Overall Rating:] Expressed in stars (1–5). This is the scout's estimate of the player's current ability relative to your squad. A three-star player is roughly rotation quality; a four-star player is a probable starter.
- #strong[Potential Rating:] Also in stars. The scout's estimate of where this player peaks. A 21-year-old with 2 stars current and 4.5 stars potential is a development target.
- #strong[Attribute Range:] Instead of exact numbers, unscouted players show attribute ranges (for example, Finishing 72–80). The range narrows as the report progresses. A narrow range means the scout is confident; a wide range (70–88) means they need more time.
- #strong[Playing Style & Skills:] The scout identifies traits (Mazing Run, Pinpoint Crossing, etc.) and player skills. These are binary — a player either has a skill or does not — so they are accurate immediately, unlike attribute estimates.

#strong[Star ratings are relative to your team.] A 4-star player for a mid-table LaLiga side might be a 2.5-star player for Real Madrid. The stars tell you how a player fits your current squad, not how good they are in absolute terms.

==== UML Scout Improvements

If you are running Ultimate Master League v3, the scouting system receives substantial upgrades:

- Scout reports include #strong[hidden attributes] — injury proneness, consistency, and weak-foot accuracy. In the base game these are invisible until you sign the player. UML surfaces them during scouting.
- #strong[Youth player generation] is weighted toward real-world footballing nations, producing more credible wonderkid distributions. You will still see the occasional 16-year-old Thai goalkeeper with world-class potential, but less frequently.
- #strong[Scout specialisation:] UML scouts can develop affinity for specific regions, producing faster and more accurate reports the longer they stay assigned there. A scout who has spent two seasons in South America will outperform a scout of equal stats who just arrived.

==== Youth Academy & Wonderkids

Your youth academy produces regens and newgens — regenerated and newly generated players who enter the game world as free agents or through club academies. The key to squad-building is identifying wonderkids before they become famous.

A wonderkid is a player aged 16–21 with:

- #strong[High potential stat:] Look for the potential ceiling in the scout report. Anything above 85 is development-worthy. Above 90 is a probable star.
- #strong[Position-relevant attributes above average for their age:] A 17-year-old centre-back with 75+ defensive awareness and 70+ physical contact is a rare asset. A 17-year-old winger with 80+ speed and 65+ dribbling is development-ready.
- #strong[Playing style that fits your system:] A wonderkid with "Classic No. 10" in a system that does not use an attacking midfielder is a poor fit. The player's style matters as much as their numbers.

The youth academy produces better intake when your club has high reputation, a strong scout network, and youth facility investment (a budget allocation you set at the start of each season). Relegation-threatened clubs produce fewer high-potential graduates than Champions League regulars — this is by design, not random chance.

=== Transfer Market

The transfer system in Master League models real-world negotiation more faithfully than any other football game on the market. You can lowball, get counter-offered, include clauses, and lose a player to a rival club because you took too long to respond.

==== The Negotiation Flow

1. #strong[Scout a target.] You need at least a partial scout report before a club will entertain your inquiry. An unscouted player with question marks over their attributes will not return useful negotiation data.

2. #strong[Make an inquiry.] This asks the selling club for a rough price. It costs nothing and commits you to nothing. Use it to gauge whether a player is in your budget before investing negotiation time.

3. #strong[Submit a bid.] The formal offer. You set the transfer fee, any clauses, and the payment structure. The selling club can accept, reject, or counter. A counter-offer usually arrives within a few in-game days — do not expect instant responses for high-value transfers.

4. #strong[Negotiate personal terms.] Once the club accepts, you negotiate wages, contract length, squad role, and release clause with the player. The player's agent has their own personality — some are flexible, some walk away if you push too hard.

5. #strong[Medical and confirmation.] The transfer completes and the player joins at the next window opening (or immediately if the window is open).

==== Release Clauses

In #strong[LaLiga], every player contract must include a release clause by league regulation. This means Spanish clubs cannot refuse to sell if you meet the clause value — no negotiation, no counter-offer. You pay the release clause, the player decides whether to join, and the selling club has no say.

This is a double-edged sword. When buying from Spain, you can bypass a stubborn selling club by triggering the clause. When selling to a richer club, they can do the same to you. Before signing a player to a LaLiga club, set the release clause high enough that losing them would at least fund a replacement. A release clause of 1.5–2x the player's market value is a safe minimum.

In other leagues, release clauses are optional. Including one makes the player more willing to sign (it is an escape hatch if the club underperforms). Excluding one gives you control — no one takes your star striker without your consent.

==== Budget Management

Your club operates with two separate but linked budgets:

- #strong[Transfer Budget:] How much you can spend on transfer fees. Unused transfer budget rolls into the next season in reduced form (roughly 60–70% of the surplus), so do not hoard it — spend what you need.
- #strong[Wage Budget:] How much you can spend on player salaries, expressed as a total annual cap. Exceeding the wage budget blocks new signings and triggers board discontent.

A #strong[budget slider] in the Finances menu lets you convert between the two. Shifting funds from transfer to wage budget (to accommodate a marquee free agent) or from wage to transfer budget (to fund a deadline-day signing) is a standard management move. The conversion rate is not 1:1 — expect to lose roughly 10–15% in the shift. Do not toggle it repeatedly; the loss compounds.

==== Sell-On Clauses & Loans

#strong[Sell-on clauses] entitle you to a percentage of the player's next transfer fee. If you sell a young player with 20% sell-on to a mid-table club and they later sell him for 80 million, you receive 16 million. Sell-on clauses reduce the upfront fee a buying club is willing to pay, so they are best used when selling developing players whose value is likely to rise — not when offloading a 32-year-old on the decline.

#strong[Loan-to-buy] is a two-stage transfer: the player joins on loan for the current season with an obligation or option to buy at a pre-agreed fee. An obligation means the transfer is mandatory at the end of the loan; an option means you can walk away. Loan-to-buy lets you defer the transfer fee into next season's budget, which is useful when you have identified a target but have exhausted the current window's funds. The loan fee is typically 10–20% of the agreed purchase price and is non-refundable if you decline the option.

#strong[Loans (standard):] You can loan players for a season without a purchase clause. The receiving club pays a loan fee plus some or all of the player's wages. Use loans to give young players match experience at a lower-division club (they develop faster playing 40 matches on loan than sitting on your bench) or to plug a short-term gap without committing transfer budget.

==== Negotiation Timing

The transfer window closes on a fixed in-game date. Negotiations that are in progress when the window closes can complete — but only if the bid was accepted before the deadline. An inquiry sent at 11 PM on deadline day will not result in a completed transfer. Begin serious negotiations at least five in-game days before the window closes. The AI takes longer to respond to bids involving high-value players, multiple clauses, or rival clubs.

=== Training & Development

Player development in FL26 is organic — players improve by playing matches at an appropriate level. There is no "training drill" minigame. The system rewards squad planning and patience.

==== Growth Curves

Every player follows a growth curve that determines when their attributes rise, plateau, and decline. The curve is visible on the Player Development screen as a graph with three phases:

- #strong[Growth Phase:] Attributes increase. Playing time accelerates growth; bench-warming stalls it. A 19-year-old who plays 40 matches in a season will develop faster than an equally talented 19-year-old who plays 8.
- #strong[Peak Phase:] Attributes stabilise. Development slows to near zero. The player maintains their current level as long as they play regularly. Extended injuries during the peak phase can trigger early decline.
- #strong[Decline Phase:] Attributes begin falling, starting with physical stats (speed, acceleration, stamina) and progressing to technical attributes over subsequent seasons. Decline is gradual — a 34-year-old midfielder does not become useless overnight, but their pace will drop 1–2 points per season.

There are three broad curve archetypes:

- #strong[Early Peak (18–23):] The player reaches their ceiling quickly and plateaus through their mid-20s before declining earlier than average. Common among explosive wingers and pace-dependent forwards. These players deliver immediate impact but have shorter useful careers. Plan to sell around age 28–29, before the decline accelerates.
- #strong[Steady (20–29):] The most common curve. Gradual improvement through the early 20s, a long plateau through the prime years, and gentle decline starting around 30. Most midfielders and full-backs follow this pattern.
- #strong[Late Bloomer (24–29):] Slow initial development followed by sustained growth well into the late 20s. Central defenders, goalkeepers, and deep-lying playmakers often follow this curve. A late-blooming centre-back at 23 may look unremarkable and become elite at 27. Do not sell these players early.

UML v3 adds more granular curve variants, including "Second Peak" (decline followed by a late-career resurgence — common for holding midfielders who transition to centre-back) and "Injury-Prone" (sharper decline after each significant injury).

==== Peak Ages by Position

These are averages, not hard rules, but they inform transfer and contract strategy:

- #strong[Wingers / Wide Forwards:] Peak 23–27. Speed-dependent roles decline earliest. A winger who relies on pace will be noticeably different at 30 than at 25. Technical wingers (those with high dribbling and crossing rather than pure speed) age more gracefully.
- #strong[Strikers:] Peak 25–29. Physical strikers peak earlier; technical strikers (target men, false nines) hold their level longer. A poacher at 32 is rare and valuable.
- #strong[Full-Backs:] Peak 24–28. Similar to wingers in the speed dependency, but position compensates with defensive attributes that peak later than raw pace.
- #strong[Central Midfielders:] Peak 25–30. Box-to-box players peak earlier (stamina-dependent); deep-lying playmakers peak later (position-dependent). A 33-year-old regista can still dictate a match.
- #strong[Centre-Backs:] Peak 27–32. The latest-peaking outfield position. Physical attributes peak around 27; positioning, anticipation, and defensive awareness continue improving into the early 30s. A 33-year-old centre-back with high defensive stats is still a credible starter.
- #strong[Goalkeepers:] Peak 28–34. Keepers develop slowly and decline slowly. A 36-year-old goalkeeper with 85+ reflexes and positioning is still elite. Do not replace a performing goalkeeper just because of age.

==== Position Training

You can train a player in a new position. The player must play matches in the target position for the training to take effect — setting it in the menu without giving them minutes does nothing.

- #strong[Adjacent positions] (RB → RWB, CM → DM, LW → LM) take 4–8 weeks of regular playing time to register as "accomplished."
- #strong[Moderate shifts] (RB → CB, CM → AM, LW → CF) take 8–16 weeks.
- #strong[Major shifts] (CB → ST, GK → anywhere) may never fully register. The game will show the player as "awkward" in the position indefinitely.

A player's positional affinity rating (visible on their player card) affects how quickly they adapt. A "Versatile" player learns new positions faster. A player with only one registered position may resist training altogether.

==== Mentoring & Team Roles

Veteran players with high team spirit and leadership attributes can mentor younger players in the same position group. Mentoring passes:

- #strong[Playing styles:] A younger player can adopt the mentor's playing style over several months. This is the primary way to shape a wonderkid's role to fit your system.
- #strong[Player skills:] Rare and useful skills (One-Touch Pass, Man Marking, Long Range Shooting) can transfer through mentoring. The mentor must have the skill and the younger player must have a compatible position.
- #strong[Mental attributes:] Tenacity, mentality, and teamwork values gradually shift toward the mentor's levels.

The mentor's #strong[team role] matters. Roles are earned over time and reflect a player's standing in the squad:

- #strong[Bandiera:] The club icon. Fastest mentoring speed, highest team spirit aura. Typically a long-serving player with 100+ appearances.
- #strong[Maestro:] The technical leader. Strong mentoring influence on players in the same position group. A Maestro midfielder accelerates the development of every midfielder in the squad.
- #strong[Leader / General:] Moderate mentoring influence. Multiple Leaders stack additively — a squad with three Leaders develops young players faster than one with a single Bandiera and no other senior figures.

Mentoring relationships appear in the Squad menu. Pair a 30+ year-old with the appropriate role and a teenager in the same position group, and the development screen will show a mentoring link within a few weeks.

=== Match-Day Management

A well-built squad and a sound tactic are half the battle. Managing the 90 minutes is the other half. FL26's match engine punishes neglect — a tired player, a morale dip, or a tactical mismatch left unchecked will produce goals for the opposition.

==== Pre-Match: Game Plans & Form Arrows

Before each match, the Game Plan screen displays your squad with #strong[form arrows] for every player:

- #strong[↑ (green, angled up):] The player is in form. All attributes receive a +2–4 boost. An in-form 78-rated player may perform closer to 82. Prioritise these players in your starting eleven.
- #strong[↗ (green, diagonal):] Slight boost. +1–2 to attributes. Reliable but not transformative.
- #strong[→ (yellow, flat):] Neutral. The player performs at their listed attributes. Most of your squad will show this arrow for most matches.
- #strong[↘ (orange, diagonal down):] Slight penalty. −1–2.
- #strong[↓ (red, angled down):] Out of form. −3–5 to all attributes. A 78-rated player performs around 73–75. Do not start a player with a red arrow unless you have no alternative.

Form arrows are driven by recent match ratings, morale (see below), and a hidden consistency attribute. A player on a run of high ratings will sustain green arrows. A player who has been benched for three weeks will likely show orange or red. Play your squad — a match-fit reserve is more useful than a rusty starter.

#strong[Game Plan Selection:] Choose the tactical preset that matches the opponent. Against a stronger side away from home, load a compact, counter-attacking tactic. Against a weaker side at home, load your possession tactic. The pre-match screen shows the opponent's expected formation — use it. If they are playing a 4-2-3-1 with a creative attacking midfielder, your defensive midfielder should have Tight Marking assigned to that player before kick-off.

==== In-Match: Reading the Game

The match screen shows two key pieces of live information:

#strong[Stamina Bar:] Below each player name in the pause menu or formation screen, a bar shows remaining stamina. Full bar = 100%. A player drops below 60% stamina around the 60th minute (earlier if you press aggressively or the player is returning from injury). Below 50%, sprint speed, acceleration, and passing accuracy degrade noticeably. #strong[The 60-minute mark and the 75-minute mark are the two critical substitution windows.] At 60 minutes, your most active positions (full-backs, box-to-box midfielders, pressing forwards) will be at or near the threshold. At 75 minutes, stamina drops sharply for players who have been sprinting — the degradation accelerates in the final 15 minutes.

#strong[Substitution Timing:]
- #strong[60'] — The tactical window. Replace tired full-backs and midfielders. Substitutions now are about maintaining your game state. If you are winning, bring on a defensive midfielder for an attacker to see out the game. If you are losing, bring on fresh legs in wide positions to stretch the opponent.
- #strong[75'] — The emergency window. Replace anyone below 50% stamina regardless of their rating. A 72-rated substitute with full stamina is more effective in the final 15 minutes than a tired 82-rated starter. The stamina penalty compounds — a player at 40% is moving at roughly three-quarters of their normal speed.
- #strong[85'+] — The desperation window. Substitutions this late are for time-wasting (if winning) or throwing on an extra striker (if losing a knockout match). They rarely change the tactical shape of the game because there is not enough time for the substitutes to influence play.

You get three substitution windows per match (plus half-time, which does not count toward the limit). Batch your substitutions — make two at 60 minutes and the third at 75, rather than one at 60, one at 65, and one at 70, which wastes windows.

==== Morale

Morale is a hidden attribute that surfaces through form arrows and player responsiveness. It is driven by:

- #strong[Recent results:] Winning raises morale across the squad. Losing drops it. A losing streak of 3+ matches cascades — poor morale produces poor performances, which produce more losses.
- #strong[Playing time:] Regular starters maintain neutral or positive morale. Squad players need occasional starts to avoid morale decline. A player listed as "Squad Role: Rotation" who has not started a match in six weeks will show declining form arrows.
- #strong[Team talks:] Pre-match and half-time team talks (selectable options ranging from "Expect a win" to "No pressure") affect morale for that match. A team talk that is too demanding for a young squad can backfire — "Expect a win" before a tough away fixture may raise pressure and reduce performance rather than motivate.
- #strong[Contract satisfaction:] A player who has requested a new contract and been ignored will show deteriorating morale regardless of results. Check the Squad screen for the "Unhappy" flag next to player names.

#strong[Managing low morale:] There is no "reset morale" button. You break a morale spiral by winning. In the short term, drop out-of-form players to the bench (a neutral arrow from the bench does not harm you) and field anyone with a green or yellow arrow, even if their overall rating is slightly lower. A 75-rated player on an up arrow can outperform a 79-rated player on a down arrow for a single match.

==== Half-Time Adjustments

The half-time screen lets you change your game plan, make substitutions, and adjust individual instructions. Key adjustments to consider:

- #strong[You are winning 1–0 but being dominated:] The scoreline is lying to you. Drop your attack/defence level from 3 to 2. Reduce pressing intensity. Consider bringing on a defensive midfielder. The opponent's pressure will continue — if you do not adjust, the equaliser is a matter of time.
- #strong[You are losing 0–1 but creating chances:] Change nothing about your shape. Increase attack/defence level from 3 to 4. Trigger more manual runs. The goal will come if you maintain the same approach at higher intensity.
- #strong[You are losing 0–1 and creating nothing:] You have a tactical problem, not an effort problem. Switch to a different formation preset. If the opponent is sitting deep in a 4-4-2, switch to a 3-5-2 that overloads the midfield. If they are pressing high and your build-up is collapsing, switch to a formation with a dedicated deep-lying playmaker.

The half-time team talk options appear after you confirm your tactical changes. "Expect more" works for a squad with high team spirit; "Keep it up" maintains morale during a good performance; "No pressure" is the safe option when morale is fragile.

==== Weather & Pitch Conditions

Rain affects ball physics in FL26 — the ball skids on wet grass, making through-balls travel further and low-driven shots harder to handle. Adjust accordingly: shorter passing in the rain to maintain possession, more long shots (the keeper's handling is reduced), and conservative slide tackles (wet pitch = longer slide, higher foul risk). The match preview screen shows weather before kick-off.


#pagebreak()

=== Manager Personas

Before you commit to a multi-season save, pick a persona. Each one imposes restrictions that turn Master League from a sandbox into a story. The rules are self-enforced — the game will not stop you from breaking them, but the save loses its tension the moment you do. Choose the one that makes you uncomfortable.

Difficulty baseline: Professional, 10-minute halves, normal game speed. These are dials, not dogma. Bump up if you are winning by February; drop down if you cannot score by November. The persona-specific settings below override this baseline where noted.

=== The Disgraced Legend

#quote(block: true)[
_[They still sing his name in the Curva Sud. They also still spit it.]_

Marco Vieri was a Ballon d'Or podium finisher at twenty-three. By twenty-seven, his career had detonated in a Monaco hotel room — an altercation with a teammate, a shattered orbital bone, and an eighteen-month ban that ended his top-flight career before it began. The punditry circuit kept him visible for a decade: the knowing smirk, the merciless analysis, the unspoken question of whether he could still do it. Every former player on the panel has an opinion. Vieri has decided to stop having opinions and start having results.

He takes over a relegation-zone Championship side in late autumn. The squad is demoralised, the defence leaks goals from set pieces, and the board's primary ambition is avoiding administration. Vieri does not care about any of this. He cares about whether a back-three can still function in modern football — because it is the only system he ever trusted as a player, and he will not abandon it now. The question is not whether he can manage. The question is whether anyone still wants to be managed by him.
]

- *Suggested teams:* Derby County, Portsmouth, Hull City
- *Formation:* Back-three mandatory — 3-5-2, 3-4-3, or 3-4-2-1. No four-at-the-back formations, ever.
- *Transfers:* No signings from the Premier League, LaLiga, Serie A, Bundesliga, Ligue 1, or Eredivisie for two full seasons. You are rebuilding reputation, not buying it.
- *Youth:* Promote two academy graduates to the first-team squad each season. They do not need to start every match, but they must appear in the match-day eighteen.
- *Budget:* No single transfer fee may exceed fifty percent of your available transfer budget. You spread resources, not bet the club on one name.
- *Match settings:* Professional, 10-minute halves. Increase to Superstar after promotion to the Premier League — you came back to face the best, not hide from them.
- *Narrative goal:* Premier League promotion within four seasons. A domestic cup (FA Cup or Carabao) before the end of season six. If Vieri lifts silverware at Wembley, the arc closes. If he does not, the pundits were right.

=== The Data Unicorn

#quote(block: true)[
_[Lena Okonkwo has never kicked a ball professionally. She has, however, built three quantitative hedge funds, sold two of them, and retired at thirty-four.]_

Okonkwo's introduction to football was an accident. She bought a mid-table second-division club on a whim — the kind of purchase that reads as a rounding error in her portfolio and an existential event in the club's accounts. Her original plan was to install a competent director of football and check the quarterly reports. Instead, she fired the manager after watching six matches, concluded that the scouting department was operating on vibes, and had her former quant team install PostgreSQL in the analysis room. The players now receive expected-threat heatmaps with their post-match meals.

She does not care about tradition, pundit narratives, or the football men who have been doing it this way for thirty years. She cares about data that survives a significance test. Every transfer target is ranked by a proprietary model that weights match ratings, physical output, age curves, and wage efficiency. Every player below replacement level receives ten matches to prove the model wrong, then goes on the transfer list. The dressing room finds this terrifying. The league table is starting to find it persuasive.
]

- *Suggested teams:* A mid-table side in the 2. Bundesliga, LaLiga 2, or EFL Championship — enough budget to build infrastructure, not enough to buy your way out.
- *Formation:* 4-2-3-1 gegenpress (primary), 4-3-3 with inverted full-backs (possession variant), or 3-4-3 fluid (chaos variant). The model will tell you which performs best against each opponent.
- *Transfers:* Target only players whose average match rating over the last full season exceeds the league median for their position. No signings over age twenty-eight — the depreciation curve is real and it is steep.
- *Wages:* Your highest earner must not exceed twice the squad median wage. If your star striker earns €80k per week and your median is €25k, you have a problem the model will flag.
- *Scouting:* Build a stat-ranked shortlist at each window. Any player who drops below replacement level after ten competitive matches must be transfer-listed. Data does not negotiate.
- *Match settings:* Professional, 10-minute halves. Drop to Regular if you are losing matches faster than you can collect meaningful data points — the model needs a minimum sample size.
- *Narrative goal:* Achieve promotion to the top flight with a squad whose average age is under twenty-five. Prove that a spreadsheet can beat a dugout.

=== The Basque Purist

#quote(block: true)[
_[Iker Etxebarria was born three hundred metres from San Mamés. His father laid the pitch. His grandfather watched Pichichi score.]_

Four hundred and twelve matches for Athletic Bilbao. Never left the club, never wanted to. When the manager's job opened, Etxebarria was the obvious candidate — club legend, UEFA Pro Licence, fifteen years coaching La Cantera. He negotiated control of the academy as a condition of taking the job. The board thanked him for his service and appointed someone with a more cosmopolitan CV. The rejection did not wound his pride. It clarified his purpose.

He takes the philosophy on the road. Cantera — the belief that a club should field players it raised, or at least players from the region it represents — works at Athletic because the Basque Country is a footballing nation unto itself. Etxebarria intends to prove it works elsewhere. He arrives at a club with a functional academy and a strong regional identity, and he imposes the same constraints: sign only from the nation or the immediate geographic region, promote relentlessly from the youth ranks, and never stand in the way of a player who wants to leave. The philosophy is the point. The trophies, if they come, are evidence.
]

- *Suggested teams:* SC Freiburg (Baden identity, elite academy), Real Sociedad (Basque policy already exists — now enforce it ruthlessly), ACF Fiorentina (Tuscan roots, world-class youth setup)
- *Formation:* 4-2-3-1 or 4-4-2. Nothing exotic — the system serves the players, not the coach's vanity.
- *Transfers:* Sign only players from the club's home nation or immediate geographic region. For Freiburg: Germany, Austria, Switzerland, Alsace. For La Real: Basque Country, Navarre, La Rioja. For Fiorentina: Italy, with preference for Tuscany and surrounding regions. Accept every transfer request — a player who wants out is already gone. Honour-system rule.
- *Youth:* Develop three first-team-ready academy graduates within four seasons. "First-team-ready" means at least twenty competitive appearances, not five-minute cameos.
- *Squad:* Minimum three home-grown players in every match-day squad. Check the Player Registration screen — the HG icon is your compass.
- *Match settings:* Professional, 12-minute halves. Youth players need real minutes to develop, and longer halves give you time to blood them without panicking about the result.
- *Narrative goal:* Win a top-flight league title with a squad that is at least fifty percent academy graduates or regional signings. The percentage is the trophy.

=== The Journeyman

#quote(block: true)[
_[Fifty-three years old. Fourteen clubs. Eight countries. Zero major trophies.]_

Thomas Krause is the firefighter, the stopgap, the safe pair of hands who takes over in November when the board has lost patience and the dressing room has lost belief. He stabilises, he organises, he leaves before the credit arrives. His wife stopped asking which city years ago. His children track his career via Wikipedia — the entry is accurate but thin, a list of appointments and departures with no honours section. Krause does not have an honours section.

He has one cycle left. Seven seasons, give or take, before the body and the travel and the accumulated departures make the decision for him. He will take the lowest-ranked playable job available — not as a gimmick, but because that is where the phone rings. He will build nothing permanent, keep nothing he cannot carry in a single suitcase, and move on when the work is done. The career has been honourable and anonymous. The final act will determine whether it was also meaningful.
]

- *Suggested teams:* The lowest-ranked playable side in any league — the team you scroll past in the job search because the budget is zero and the squad is a collection of loan returnees. Pick the worst one.
- *Job movement:* Change clubs every two seasons. Accept the first reasonable offer that arrives — Krause does not get to be choosy. If no offer arrives by the end of the second season, resign and take the next available job at any level. Honour-system rule.
- *Transfers:* Free agents and loans only. No permanent transfer fees, ever. You are the man clubs call when they have no budget — act like it.
- *Squad:* A fresh start at every club. You cannot bring players from your previous team, no matter how much you developed them. That was their project; this is the next one.
- *Hard stop:* Age sixty equals seven seasons. PES Master League does not model manager aging, so this is an honour-system rule: after seven seasons, the career is over regardless of outcome. If Krause has not won a major trophy by then, the career is complete but unfulfilled. That is an ending too.
- *Match settings:* Top Player, 8-minute halves, fast game speed. Krause has been doing this for thirty years — he reads the game faster than you do. Increase to Superstar at the final club.
- *Narrative goal:* Win a top-flight league title before retirement. One. Just one.

=== Self-Imposed Rule Frameworks

Not every save needs a full persona. Sometimes you want to build your own manager and impose a lighter set of constraints. These frameworks slot into any Master League career. Stack them, mix them, or use one as a spine. All are honour-system — the game will not enforce them. You will know.

==== Transfer Realism

Sell before you buy above a self-set threshold — one out for every major incoming transfer. Honour release clauses honestly: if a buying club meets the clause, you accept and negotiate, no reloading. Free agents are for your squad, not for flipping — sign a free agent to play him, not to list him the next window for pure profit.

==== Scouting Realism

Only scout regions with credible real-world ties to your club. A mid-table Eredivisie side does not run a scouting network in Brazil and Argentina — build the network outward from your region. Global scouting unlocks only when your club reaches the Champions League group stage; until then, you find players the way real clubs do: domestically, then regionally, then selectively abroad.

==== Youth-First

Every match-day squad must include at least two academy graduates. The transfer budget exists to supplement your academy pipeline, not replace it — no signing a twenty-three-year-old for a position where an eighteen-year-old graduate needs minutes. If you must choose between a marquee signing and upgrading the youth facilities, upgrade the facilities.

==== Financial Fair Play

Wage expenditure must not exceed seventy percent of club revenue, checked at the end of each transfer window. No running an operating deficit across two consecutive windows — the board will not bail you out and neither will a reload. Budget discipline is the difference between a sustainable project and a liquidation event.

==== Sporting Director Mode

Delegate all transfer negotiations to the CPU. Set your scouting priorities, identify targets, add them to the shortlist — then let the sporting director handle bids, wages, and contract terms. You coach the players you are given, whether you would have signed them or not. This is the mode for managers who want to be judged on the pitch, not in the negotiation room — and it is the closest FL26 gets to simulating a real head coach's scope of authority.