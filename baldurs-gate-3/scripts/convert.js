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

  // Convert markdown tables to Typst tables
  result = convertTables(result);

  // Horizontal rules
  result = result.replace(/^---$/gm, '#line(length: 100%)');

  // Inline code: `code` -> #raw("code")
  // Skip code that's inside already-converted table blocks
  result = result.replace(/`([^`\n]+)`/g, (match, code) => {
    return `#raw("${code.replace(/"/g, '\\"')}")`;
  });

  return result;
}

function convertTables(md) {
  // Split into lines
  const lines = md.split('\n');
  const output = [];
  let i = 0;

  while (i < lines.length) {
    const line = lines[i];

    // Check if this line starts a table (starts and ends with |)
    if (/^\|.+\|$/.test(line.trim()) && i + 1 < lines.length) {
      const nextLine = lines[i + 1];
      // Check if next line is a separator row (| --- | --- |)
      if (/^\|[\s\-:]+\|[\s\-:|]+\|$/.test(nextLine.trim())) {
        // We found a table! Collect all rows
        const headerRow = line;
        const dataRows = [];

        let j = i + 2;
        while (j < lines.length && /^\|.+\|$/.test(lines[j].trim())) {
          dataRows.push(lines[j]);
          j++;
        }

        // Convert to Typst table
        const headerCells = headerRow.split('|')
          .map(c => c.trim())
          .filter(c => c.length > 0);

        const numColumns = headerCells.length;

        // Build the Typst table
        let tableCode = `#table(\n  columns: ${numColumns},\n`;

        // Header row
        const headerContent = headerCells.map(c => `[${escapeTypst(c)}]`).join(', ');
        tableCode += `  table.header(${headerContent}),\n`;

        // Data rows
        for (const row of dataRows) {
          const cells = row.split('|')
            .map(c => c.trim())
            .filter((c, idx) => idx > 0 && idx <= numColumns); // skip leading empty from split

          // If the first split element is empty (from leading |), shift
          const adjustedCells = row.split('|').map(c => c.trim()).filter(c => c.length > 0);

          // Ensure we have the right number of columns
          const rowCells = [];
          for (let k = 0; k < numColumns && k < adjustedCells.length; k++) {
            rowCells.push(`[${escapeTypst(adjustedCells[k])}]`);
          }
          // Pad if needed
          while (rowCells.length < numColumns) {
            rowCells.push('[]');
          }

          tableCode += `  ${rowCells.join(', ')},\n`;
        }

        tableCode += ')';
        output.push(tableCode);
        output.push(''); // blank line after table

        i = j;
        continue;
      }
    }

    output.push(line);
    i++;
  }

  return output.join('\n');
}

function escapeTypst(text) {
  // Remove bold/italic markers that our converter already processed
  // Escape # characters that aren't part of Typst functions
  return text
    .replace(/\\/g, '\\\\')
    .replace(/#(?!\w+\()/g, '\\#');
}
