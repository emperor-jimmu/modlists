const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const chapterDir = path.join(__dirname, 'chapters');

// Ensure chapters output directory exists
if (!fs.existsSync(chapterDir)) {
  fs.mkdirSync(chapterDir, { recursive: true });
}

// Get all .md files in guide/, sorted by name for correct order
const files = fs.readdirSync(guideDir)
  .filter(f => f.endsWith('.md'))
  .sort();

for (const file of files) {
  const mdPath = path.join(guideDir, file);
  let content = fs.readFileSync(mdPath, 'utf8');

  // Convert markdown heading syntax (# ## ###) to Typst heading syntax (= == ===)
  // Must handle carefully: not all # are headings (e.g., in code blocks or tables)
  // Process line by line
  const lines = content.split('\n');
  const converted = lines.map(line => {
    // Only convert # at the start of a line (after optional whitespace)
    const headingMatch = line.match(/^(\s*)(#{1,6})\s+(.*)$/);
    if (headingMatch) {
      const indent = headingMatch[1];
      const level = headingMatch[2].length;
      const text = headingMatch[3];
      const typstPrefix = '='.repeat(level);
      return `${indent}${typstPrefix} ${text}`;
    }

    // Convert **bold** to *bold* (Typst uses single asterisk for bold)
    let processed = line.replace(/\*\*(.+?)\*\*/g, '*$1*');

    // Convert *italic* to _italic_ (Typst uses underscore for italic)
    // But don't convert ** (already handled) or lines inside code blocks
    processed = processed.replace(/(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)/g, '_$1_');

    // Convert [text](url) markdown links to Typst link syntax
    processed = processed.replace(/\[([^\]]+)\]\((#?[^)]+)\)/g, (match, text, url) => {
      if (url.startsWith('#')) {
        // Internal anchor: escape the hash so Typst renders it literally
        return `[${text}](${url.replace('#', '\\#')})`;
      }
      // External URL: use Typst link syntax
      return `#link("${url}")[${text}]`;
    });

    return processed;
  });

  const typFileName = file.replace('.md', '.typ');
  const typPath = path.join(chapterDir, typFileName);
  fs.writeFileSync(typPath, converted.join('\n'), 'utf8');
  console.log(`Converted: ${file} -> ${typFileName}`);
}

console.log('All chapters converted successfully.');
