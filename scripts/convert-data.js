const fs = require("fs");
const path = require("path");
const yaml = require("js-yaml");

const sourceDir = path.join(__dirname, "..", "guide", "mod-data");
const outDir = path.join(__dirname, "..", "guide", "mod-data-converted");

if (!fs.existsSync(outDir)) {
  fs.mkdirSync(outDir, { recursive: true });
}

const files = fs.readdirSync(sourceDir).filter(f => f.endsWith(".yaml"));

for (const file of files) {
  const raw = fs.readFileSync(path.join(sourceDir, file), "utf8");
  const data = yaml.load(raw);
  const outName = file.replace(/\.yaml$/, ".json");
  fs.writeFileSync(
    path.join(outDir, outName),
    JSON.stringify(data, null, 2),
    "utf8",
  );
  console.log(`Converted ${file} \u2192 ${outName}`);
}

console.log("Done.");
