import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Only Monsters Remain',
  description: 'A curated Witcher 3 modlist and game guide',
  lang: 'en-US',
  base: '/',
  srcDir: 'guide',

  themeConfig: {
    logo: '/logo.png',

    nav: [
      { text: 'Wave 0: Apprentice', link: '/00-getting-started/00-installation' },
      { text: 'Wave 1: Journey', link: '/01-enhanced/00-installation-wave1' },
      { text: 'Wave 2: Mastery', link: '/02-mastery/00-installation-wave2' },
      { text: 'Reference', link: '/03-reference/00-mod-reference' },
    ],

    sidebar: {
      '/00-getting-started/': [
        {
          text: 'Wave 0: A Witcher\'s Apprentice',
          items: [
            { text: 'Installation & Setup', link: '/00-getting-started/00-installation' },
            { text: 'Modlist - Wave 0', link: '/00-getting-started/01-modlist-wave0' },
            { text: 'Beginner\'s Guide', link: '/00-getting-started/02-beginner-guide' },
            { text: 'Controls & UI', link: '/00-getting-started/03-controls-basics' },
            { text: 'Combat Basics', link: '/00-getting-started/04-combat-basics' },
            { text: 'Progression Guide', link: '/00-getting-started/05-progression-guide' },
          ]
        }
      ],
      '/01-enhanced/': [
        {
          text: 'Wave 1: A Witcher\'s Journey',
          items: [
            { text: 'Upgrading to Wave 1', link: '/01-enhanced/00-installation-wave1' },
            { text: 'Modlist - Wave 1', link: '/01-enhanced/01-modlist-wave1' },
            { text: 'Advanced Strategy', link: '/01-enhanced/02-strategy-guide' },
            { text: 'Advanced Combat', link: '/01-enhanced/03-combat-advanced' },
            { text: 'Gear & Crafting', link: '/01-enhanced/04-gear-crafting' },
            { text: 'Gwent Guide', link: '/01-enhanced/05-gwent-guide' },
            { text: 'Exploration', link: '/01-enhanced/06-exploration' },
          ]
        }
      ],
      '/02-mastery/': [
        {
          text: 'Wave 2: Master Witcher',
          items: [
            { text: 'Upgrading to Wave 2', link: '/02-mastery/00-installation-wave2' },
            { text: 'Modlist - Wave 2', link: '/02-mastery/01-modlist-wave2' },
            { text: 'Roleplay Background', link: '/02-mastery/02-roleplay-background' },
            { text: 'Mastery Mechanics', link: '/02-mastery/03-mastery-mechanics' },
            { text: 'Specialized Builds', link: '/02-mastery/04-builds-specialized' },
            { text: 'Endgame & NG+', link: '/02-mastery/05-endgame-guide' },
          ]
        }
      ],
      '/03-reference/': [
        {
          text: 'Reference',
          items: [
            { text: 'Mod Reference', link: '/03-reference/00-mod-reference' },
            { text: 'Conflicts Matrix', link: '/03-reference/01-conflicts' },
            { text: 'Load Order Guide', link: '/03-reference/02-load-order' },
            { text: 'Mod Manager Guide', link: '/03-reference/03-mod-manager-guide' },
            { text: 'Troubleshooting', link: '/03-reference/04-troubleshooting' },
          ]
        }
      ],
    },

    search: { provider: 'local' },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/anomalyco/witcher-3-modlist' },
    ],
  },

  vite: {
    publicDir: 'guide/assets',
  },
})
