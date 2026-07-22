// tools/merge-guide.js
// One-time script: merges MODLIST.md + GETTING-STARTED.md into GUIDE.md
// Strips dependency-only sub-sections and raw-typst comments from MODLIST content.
// Logs warnings when wave headers don't match across files.

const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const modlist = fs.readFileSync(path.join(root, 'MODLIST.md'), 'utf8');
const gettingStarted = fs.readFileSync(path.join(root, 'GETTING-STARTED.md'), 'utf8');

// Normalize a header line for comparison: collapse whitespace, lowercase, strip trailing punctuation
function normalizeHeader(h) {
  return h.replace(/\s+/g, ' ').trim().toLowerCase().replace(/[—–-]$/, '').trim();
}

function parseWaves(content) {
  // Match ## Wave headers. The header line is the full line.
  const regex = /^##\s+(Wave\s[^\n]+)$/gm;
  const matches = [...content.matchAll(regex)];
  const waves = new Map(); // use Map to preserve insertion order
  
  for (let i = 0; i < matches.length; i++) {
    const label = matches[i][1].trim();
    const start = content.indexOf('\n', matches[i].index + matches[i][0].length) + 1;
    const end = i + 1 < matches.length ? matches[i + 1].index : content.length;
    const blockContent = content.slice(start, end).trimEnd();
    waves.set(label, blockContent);
  }
  return waves;
}

function stripDepsAndPagebreaks(content) {
  // Remove <!--raw-typst ... --> comments
  let cleaned = content.replace(/<!--raw-typst[\s\S]*?-->/g, '');
  
  // Remove any ### subsection whose header matches the pattern
  // "Dependencies", "Dependency", "dependencies", "dependency" as a whole-word match
  // including all content until the next ### or ## or end of string
  cleaned = cleaned.replace(
    /^###\s+[^\n]*?\b[Dd]ependenc(?:y|ies)\b[^\n]*\r?\n([\s\S]*?)(?=\n###\s|\n##\s|\n<!--raw-typst|$(?![\s\S]))/gm,
    ''
  );
  
  // Remove the "Note: XMCL installs dependencies" callout if present
  // This matches a blockquote starting with "> **Note**: XMCL installs..."
  cleaned = cleaned.replace(
    /^>\s*\*\*Note\*\*:\s*XMCL installs dependencies automatically[\s\S]*?(?=\n\n|$)/gm,
    ''
  );
  
  // Collapse multiple blank lines
  cleaned = cleaned.replace(/\n{3,}/g, '\n\n');
  
  return cleaned.trim();
}

function extractWaveNumber(label) {
  const m = label.match(/^Wave\s+(-?\d+(?:\.\d+)?)/i);
  return m ? parseFloat(m[1]) : Infinity;
}

const mlWaves = parseWaves(modlist);
const gsWaves = parseWaves(gettingStarted);

// Cross-validate: warn about waves in one file but not the other
const mlLabels = new Set(mlWaves.keys());
const gsLabels = new Set(gsWaves.keys());

for (const label of mlLabels) {
  if (!gsLabels.has(label)) {
    const norm = normalizeHeader(label);
    const foundInGs = [...gsLabels].find(l => normalizeHeader(l) === norm);
    if (foundInGs) {
      console.warn(`WARN: Near-match for "${label}" -> found "${foundInGs}" in GETTING-STARTED (may merge correctly)`);
    } else {
      console.warn(`WARN: "${label}" only in MODLIST (no matching GETTING-STARTED section)`);
    }
  }
}
for (const label of gsLabels) {
  if (!mlLabels.has(label)) {
    const norm = normalizeHeader(label);
    const foundInMl = [...mlLabels].find(l => normalizeHeader(l) === norm);
    if (foundInMl) {
      console.warn(`WARN: Near-match for "${label}" -> found "${foundInMl}" in MODLIST (may merge correctly)`);
    } else {
      console.warn(`WARN: "${label}" only in GETTING-STARTED (no matching MODLIST section)`);
    }
  }
}

// Build a merged set matching by normalized header
const allLabels = new Map(); // normalized -> { mlLabel, gsLabel, num }

for (const [label, content] of mlWaves) {
  const norm = normalizeHeader(label);
  if (!allLabels.has(norm)) {
    allLabels.set(norm, { mlLabel: label, gsLabel: null, num: extractWaveNumber(label) });
  }
  allLabels.get(norm).mlLabel = label;
}

for (const [label, content] of gsWaves) {
  const norm = normalizeHeader(label);
  if (!allLabels.has(norm)) {
    allLabels.set(norm, { mlLabel: null, gsLabel: label, num: extractWaveNumber(label) });
  }
  allLabels.get(norm).gsLabel = label;
}

const sorted = [...allLabels.entries()].sort((a, b) => a[1].num - b[1].num);

const output = [];
output.push('# Driftwood — Setup & Mod Guide');
output.push('');
output.push('<!-- Cover page and TOC are handled in the Typst template. -->');
output.push('');

for (const [norm, { mlLabel, gsLabel, num }] of sorted) {
  // Use the MODLIST label if available (it has the " — Name" format), otherwise GS label
  const displayLabel = mlLabel || gsLabel;
  
  const mlContent = mlLabel ? stripDepsAndPagebreaks(mlWaves.get(mlLabel)) : null;
  const gsRaw = gsLabel ? (gsWaves.get(gsLabel) || '') : null;
  const gsContent = gsRaw
    ? gsRaw
        .replace(/<!--raw-typst[\s\S]*?-->/g, '')
        // Strip "### Install\n\nSee MODLIST.md ..." lines since mod tables are above
        .replace(/^###\s+Install\n\nSee\s+\[MODLIST\.md\][^\n]*\n?/gm, '')
        .trim()
    : null;

  if (!mlContent && !gsContent) continue;

  output.push('');
  output.push(`<!--raw-typst #pagebreak() -->`);
  output.push('');
  output.push(`## ${displayLabel}`);
  output.push('');

  if (mlContent) {
    output.push(mlContent);
    output.push('');
  }

  if (gsContent) {
    output.push(gsContent);
    output.push('');
  }
}

fs.writeFileSync(path.join(root, 'GUIDE.md'), output.join('\n'));
console.log(`OK: GUIDE.md written — ${sorted.length} wave sections`);
