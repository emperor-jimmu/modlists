// Converts guide/*.md files to Typst-compatible .typ content blocks
// Full implementation in Task 10
const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const cacheDir = path.join(guideDir, '.typst-cache');

if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

console.log('Convert.js placeholder — full implementation in Task 10');
