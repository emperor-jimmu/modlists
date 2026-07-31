// Wipes the .typst-cache directory for a clean build
const fs = require('fs');
const path = require('path');

const cacheDir = path.join(__dirname, '..', 'guide', '.typst-cache');

if (fs.existsSync(cacheDir)) {
  fs.rmSync(cacheDir, { recursive: true, force: true });
  console.log('Cleaned build cache.');
} else {
  console.log('No cache to clean.');
}
