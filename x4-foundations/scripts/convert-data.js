const fs = require("fs");
const path = require("path");
const yaml = require("js-yaml");

try {
  const sourceDir = path.join(__dirname, "..", "guide", "mod-data");
  const outDir = path.join(__dirname, "..", "guide", "mod-data-converted");

  if (!fs.existsSync(outDir)) {
    fs.mkdirSync(outDir, { recursive: true });
  }

  const files = fs.readdirSync(sourceDir).filter(f => f.endsWith(".yaml"));

  if (files.length === 0) {
    console.log("No .yaml files found in mod-data directory.");
    process.exit(0);
  }

  for (const file of files) {
    const raw = fs.readFileSync(path.join(sourceDir, file), "utf8");
    const data = yaml.load(raw);
    if (data == null) {
      console.error(`Warning: ${file} is empty or invalid, skipping.`);
      continue;
    }
    const outName = file.replace(/\.yaml$/, ".json");
    fs.writeFileSync(
      path.join(outDir, outName),
      JSON.stringify(data, null, 2),
      "utf8",
    );
    console.log(`Converted ${file} -> ${outName}`);
  }

  console.log("Done.");
} catch (err) {
  console.error("Conversion failed:", err.message);
  process.exit(1);
}
