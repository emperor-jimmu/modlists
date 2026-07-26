#import "config.typ": project-title, project-subtitle, project-author, game-title, game-version
#import "styles.typ": color-navy, color-gold, color-steel, color-white, color-muted

#let cover-page() = {
  page(
    paper: "a4",
    margin: 0pt,
    fill: color-navy,
    {
      set text(fill: color-white)

      // Background decorative elements
      block(height: 100%, width: 100%, {
        // Top-right accent
        path(
          (100%, 0%), (100%, 30%), (70%, 0%),
          fill: color-steel.with-alpha(20%),
        )
        // Bottom-left accent
        path(
          (0%, 100%), (30%, 100%), (0%, 70%),
          fill: color-gold.with-alpha(15%),
        )
      })

      set align(center + horizon)

      // Logo
      image("../assets/logo.jpg", width: 40%)

      v(2cm)

      // Title
      text(size: 36pt, weight: "bold", fill: color-gold)[#project-title]
      v(8pt)
      text(size: 16pt, fill: color-white)[#project-subtitle]
      v(1.5cm)

      // Game info
      block(
        stroke: 1pt + color-steel,
        inset: 12pt,
        radius: 4pt,
        width: 60%,
        text(size: 12pt, fill: color-steel)[#game-title v#game-version],
      )

      v(1cm)

      // Wave badges
      block(
        grid(
          columns: (1fr, 1fr),
          rows: (auto, auto),
          gutter: 8pt,
          [Wave 0: The Uncharted],
          [Wave 1: The Opportunist],
          [Wave 2: The Warlord],
          [Wave 3: Stellar Dominion],
        )
      )

      v(2cm)

      // Author
      text(size: 11pt, fill: color-muted)[Curated by #project-author]
    },
  )
}
