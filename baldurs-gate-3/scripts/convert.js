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
  let typst = convertMarkdownToTypst(md);

  // Post-processing: wrap mod entries in styled panels (only for modlist files)
  if (filename.includes('modlist')) {
    typst = wrapModPanels(typst);
  }

  const typFilename = filename.replace('.md', '.typ');
  const typPath = path.join(cacheDir, typFilename);
  fs.writeFileSync(typPath, typst, 'utf8');
  console.log(`Converted ${filename} -> ${typFilename}`);
});

console.log(`Conversion complete. ${files.filter(f => fs.existsSync(path.join(guideDir, f))).length} files processed.`);

function convertMarkdownToTypst(md) {
  let result = md;

  result = result.replace(/\\/g, '\\\\');

  // Bold-italic: ***text*** -> *_text_*
  result = result.replace(/\*\*\*(.+?)\*\*\*/g, '*_$1_*');

  // Bold: **text** or __text__ -> *text*
  result = result.replace(/\*\*(.+?)\*\*/g, (match, inner) => {
    if (/^https?:\/\//.test(inner)) return inner;
    return '*' + inner + '*';
  });
  result = result.replace(/__(.+?)__/g, (match, inner) => {
    if (/^https?:\/\//.test(inner)) return inner;
    return '*' + inner + '*';
  });

  // Italic: *text* -> _text_
  result = result.replace(/(?<!\*)\*(?!\*)([^*\n]+?)(?<!\*)\*(?!\*)/g, (match, inner) => {
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

  // Headings: # H1 -> = H1, etc.
  result = result.replace(/^#### (.+)$/gm, '==== $1');
  result = result.replace(/^### (.+)$/gm, '=== $1');
  result = result.replace(/^## (.+)$/gm, '== $1');
  result = result.replace(/^# (.+)$/gm, '= $1');

  // Blank lines before lists
  result = result.replace(/([^\n])\n- /g, '$1\n\n- ');

  // Tables
  result = convertTables(result);

  // Horizontal rules
  result = result.replace(/^---$/gm, '#line(length: 100%)');

  // Inline code
  result = result.replace(/`([^`\n]+)`/g, (match, code) => {
    return `#raw("${code.replace(/"/g, '\\"')}")`;
  });

  return result;
}

function convertTables(md) {
  const lines = md.split('\n');
  const output = [];
  let i = 0;

  while (i < lines.length) {
    const line = lines[i];

    if (/^\|.+\|$/.test(line.trim()) && i + 1 < lines.length) {
      const nextLine = lines[i + 1];
      if (/^\|[\s\-:]+\|[\s\-:|]+\|$/.test(nextLine.trim())) {
        const headerRow = line;
        const dataRows = [];

        let j = i + 2;
        while (j < lines.length && /^\|.+\|$/.test(lines[j].trim())) {
          dataRows.push(lines[j]);
          j++;
        }

        const headerCells = headerRow.split('|')
          .map(c => c.trim())
          .filter(c => c.length > 0);

        const numColumns = headerCells.length;
        const rowCount = dataRows.length + 1; // +1 for header

        // Build styled Typst table
        let tableCode = `#table(\n`;
        tableCode += `  columns: (1fr,)\n`.repeat(Math.min(numColumns, 1));
        if (numColumns > 1) {
          // Repeat 1fr for each column
          tableCode = `#table(\n  columns: (${Array(numColumns).fill('1fr').join(', ')}),\n`;
        }
        tableCode += `  fill: (x, y) => if y == 0 { rgb("#31243e") } else if calc.rem(y, 2) == 0 { rgb("#1e1628") } else { rgb("#1a1220") },\n`;
        tableCode += `  stroke: (x, y) => if y == 0 { (bottom: 0.5pt + rgb("#d4a843")) } else { none },\n`;
        tableCode += `  inset: (x: 10pt, y: 6pt),\n`;
        tableCode += `  align: horizon,\n`;

        // Header row
        const headerContent = headerCells.map(c => `[${escapeTypst(c)}]`).join(', ');
        tableCode += `  table.header(${headerContent}),\n`;

        // Data rows
        for (const row of dataRows) {
          const adjustedCells = row.split('|').map(c => c.trim()).filter(c => c.length > 0);

          const rowCells = [];
          for (let k = 0; k < numColumns; k++) {
            rowCells.push(`[${escapeTypst(adjustedCells[k] || '')}]`);
          }

          tableCode += `  ${rowCells.join(', ')},\n`;
        }

        tableCode += ')';
        output.push(tableCode);
        output.push('');

        i = j;
        continue;
      }
    }

    output.push(line);
    i++;
  }

  return output.join('\n');
}

function wrapModPanels(typst) {
  // Wrap each "=== ModName" section in a styled block
  const lines = typst.split('\n');
  const output = [];
  let i = 0;
  let inPanel = false;

  while (i < lines.length) {
    const line = lines[i];

    // Detect mod entry: === heading followed by content starting with -
    // Only wrap if it looks like a mod entry (has link or specific format)
    const isModHeading = /^=== .+/.test(line) &&
      (line.includes('#link(') || line.includes('**') || /^=== [A-Z]/.test(line));

    if (isModHeading && !inPanel) {
      // Start a mod panel
      output.push('');
      output.push('#block(');
      output.push('  fill: rgb("#1e1628"),');
      output.push('  stroke: 0.5pt + rgb("#3a2d4e"),');
      output.push('  inset: 12pt,');
      output.push('  radius: 4pt,');
      output.push('  width: 100%,');
      output.push('  breakable: true,');
      output.push(')[{');
      output.push(line);
      inPanel = true;
      i++;
      continue;
    }

    if (inPanel) {
      // Check if we've reached the next mod or end of modlist section
      const isNextMod = /^=== .+/.test(line);
      const isCategoryHeader = /^== .+/.test(line);

      if (isNextMod || isCategoryHeader) {
        // Close current panel
        output.push('}]');
        output.push('');

        if (isNextMod) {
          // Start a new panel immediately
          output.push('#block(');
          output.push('  fill: rgb("#1e1628"),');
          output.push('  stroke: 0.5pt + rgb("#3a2d4e"),');
          output.push('  inset: 12pt,');
          output.push('  radius: 4pt,');
          output.push('  width: 100%,');
          output.push('  breakable: true,');
          output.push(')[{');
          output.push(line);
          inPanel = true;
          i++;
          continue;
        } else {
          // Category header - end panel
          inPanel = false;
          output.push(line);
          i++;
          continue;
        }
      }

      // Blank line inside panel
      if (line.trim() === '') {
        output.push('');
        i++;
        continue;
      }

      output.push(line);
      i++;
      continue;
    }

    output.push(line);
    i++;
  }

  // Close any open panel at end
  if (inPanel) {
    output.push('}]');
  }

  return output.join('\n');
}

function escapeTypst(text) {
  return text
    .replace(/\\/g, '\\\\')
    .replace(/#(?!\w+\()/g, '\\#');
}
