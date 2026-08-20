const fs = require('fs');
const path = require('path');

const guideDir = path.join(__dirname, '..', 'guide');
const chapterDir = path.join(__dirname, 'chapters');

// Ensure chapters output directory exists
if (!fs.existsSync(chapterDir)) {
  fs.mkdirSync(chapterDir, { recursive: true });
}

// Inline markdown -> Typst inline markup.
function inline(md) {
  // Bold: protect with placeholders so the italic pass can't mangle it.
  let s = md.replace(/\*\*(.+?)\*\*/g, '\u0001$1\u0002');
  // Italic: *text* -> _text_
  s = s.replace(/(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)/g, '_$1_');
  // Bold: restore placeholders as Typst bold (single asterisk).
  s = s.replace(/\u0001([\s\S]+?)\u0002/g, '*$1*');
  // Links: [text](url) -> #link("url")[text]; #anchor links stripped.
  s = s.replace(/\[([^\]]+)\]\(([^)]+)\)/g, (m, text, url) => {
    if (url.startsWith('#')) return `[${text}]`;
    return `#link("${url}")[${text}]`;
  });
  return s;
}

function isTableRow(line) {
  return /^\s*\|.*\|\s*$/.test(line);
}

function isSeparatorRow(line) {
  return /^\s*\|(\s*:?-+:?\s*\|)+\s*$/.test(line);
}

function parseCells(line) {
  return line.trim().replace(/^\|/, '').replace(/\|$/, '').split('|').map(c => c.trim());
}

const files = fs.readdirSync(guideDir).filter(f => f.endsWith('.md')).sort();

for (const file of files) {
  const content = fs.readFileSync(path.join(guideDir, file), 'utf8');
  const lines = content.split(/\r\n|\r|\n/);
  const out = [];
  let i = 0;

  while (i < lines.length) {
    const line = lines[i];

    // Markdown table -> Typst table
    if (isTableRow(line) && i + 1 < lines.length && isSeparatorRow(lines[i + 1])) {
      const header = parseCells(line);
      const colCount = header.length;
      i += 2; // skip header + separator
      const rows = [];
      while (i < lines.length && isTableRow(lines[i])) {
        rows.push(parseCells(lines[i]));
        i++;
      }
      out.push('#table(');
      out.push(`  columns: ${colCount},`);
      out.push(`  table.header(${header.map(c => `[${inline(c)}]`).join(', ')}),`);
      for (const row of rows) {
        out.push(`  ${row.map(c => `[${inline(c)}]`).join(', ')},`);
      }
      out.push(')');
      continue;
    }

    // Heading: # -> =
    const heading = line.match(/^(\s*)(#{1,6})\s+(.*)$/);
    if (heading) {
      out.push(`${heading[1]}${'='.repeat(heading[2].length)} ${inline(heading[3])}`);
    } else {
      // Blockquote: > text -> #quote(block: true)[text]
      const bq = line.match(/^\s*>\s?(.*)$/);
      if (bq) {
        out.push(`#quote(block: true)[${inline(bq[1])}]`);
      } else {
        out.push(inline(line));
      }
    }
    i++;
  }

  const typName = file.replace('.md', '.typ');
  fs.writeFileSync(path.join(chapterDir, typName), out.join('\n'), 'utf8');
  console.log(`Converted: ${file} -> ${typName}`);
}

console.log('All chapters converted successfully.');
