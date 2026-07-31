const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const cacheDir = path.join(guideDir, '.typst-cache');

if (!fs.existsSync(cacheDir)) {
  fs.mkdirSync(cacheDir, { recursive: true });
}

const files = [
  '00-cover.md',
  '01-installation.md',
  '02-wave-0-guide.md',
  '03-wave-0-modlist.md',
  '04-wave-1-guide.md',
  '05-wave-1-modlist.md',
  '06-load-order.md',
];

files.forEach(filename => {
  const mdPath = path.join(guideDir, filename);
  if (!fs.existsSync(mdPath)) {
    console.log(`Skipping ${filename} — not found`);
    return;
  }
  const md = fs.readFileSync(mdPath, 'utf8');
  const typst = convertMarkdownToTypst(md);
  const typFilename = filename.replace('.md', '.typ');
  const typPath = path.join(cacheDir, typFilename);
  fs.writeFileSync(typPath, typst, 'utf8');
  console.log(`Converted ${filename} -> ${typFilename}`);
});

console.log(`Conversion complete. ${files.filter(f => fs.existsSync(path.join(guideDir, f))).length} files processed.`);

function convertMarkdownToTypst(md) {
  let result = md;

  // Escape backslashes first
  result = result.replace(/\\/g, '\\\\');

  // Handle formatting: *** -> ** -> *

  // Bold-italic: ***text*** -> *_text_*
  result = result.replace(/\*\*\*(.+?)\*\*\*/g, '*_$1_*');

  // Bold: **text** or __text__ -> *text* (Typst uses * for strong)
  // Skip bold conversion for URLs to avoid Typst delimiter conflicts
  result = result.replace(/\*\*(.+?)\*\*/g, (match, inner) => {
    if (/^https?:\/\//.test(inner)) return inner;
    return '*' + inner + '*';
  });
  result = result.replace(/__(.+?)__/g, (match, inner) => {
    if (/^https?:\/\//.test(inner)) return inner;
    return '*' + inner + '*';
  });

  // Italic: *text* -> _text_ (Typst uses _ for emphasis)
  // Only convert italic markers that enclose non-URL text
  result = result.replace(/(?<!\*)\*(?!\*)([^*\n]+?)(?<!\*)\*(?!\*)/g, (match, inner) => {
    // Don't convert if it looks like a URL
    if (/^https?:\/\//.test(inner)) return match;
    return '_' + inner + '_';
  });

  // Images: ![alt](path) -> #image("path")
  result = result.replace(/!\[([^\]]*)\]\(([^)]+)\)/g, (match, alt, imgPath) => {
    return `#image("${imgPath}")`;
  });

  // Links: [text](url) -> #link("url")[text] for HTTP URLs
  result = result.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (match, text, url) => {
    if (url.startsWith('http')) {
      return `#link("${url}")[${text}]`;
    }
    return `[${text}](${url})`;
  });

  // Headings: # H1 -> = H1, ## H2 -> == H2, etc.
  result = result.replace(/^#### (.+)$/gm, '==== $1');
  result = result.replace(/^### (.+)$/gm, '=== $1');
  result = result.replace(/^## (.+)$/gm, '== $1');
  result = result.replace(/^# (.+)$/gm, '= $1');

  // Blank lines before lists
  result = result.replace(/([^\n])\n- /g, '$1\n\n- ');

  // Horizontal rules
  result = result.replace(/^---$/gm, '#line(length: 100%)');

  // Inline code: `code` -> #raw("code")
  result = result.replace(/`([^`\n]+)`/g, (match, code) => {
    return `#raw("${code.replace(/"/g, '\\"')}")`;
  });

  return result;
}
