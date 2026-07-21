#!/usr/bin/env bash
# ============================================================
#  The Long Ascent — PDF Build Script (Linux / macOS)
#  Requires: Typst 0.13+ on PATH, Python 3 for font download
# ============================================================

set -euo pipefail

echo ""
echo "=== The Long Ascent ==="
echo "Building PDF from Typst sources..."
echo ""

# Check Typst is installed
if ! command -v typst &> /dev/null; then
    echo "[FAIL] Typst is not installed or not on PATH."
    echo "Install Typst 0.13+ from: https://github.com/typst/typst/releases"
    exit 1
fi

# Ensure output directory exists
mkdir -p output

# Determine Python command (python3 vs python)
PYTHON=""
if command -v python3 &> /dev/null; then
    PYTHON="python3"
elif command -v python &> /dev/null; then
    PYTHON="python"
else
    echo "[FAIL] Python not found. Install Python 3 to download fonts."
    exit 1
fi

# Check if fonts are present
if [ ! -f "assets/fonts/Orbitron[wght].ttf" ]; then
    echo "[!] Fonts not found. Downloading..."
    $PYTHON scripts/download_fonts.py
    echo ""
fi

# Compile
echo "[1/1] Compiling PDF with Typst..."
typst compile --root . --font-path assets/fonts template/main.typ output/the-long-ascent.pdf

echo ""
echo "=== Build complete ==="
echo "PDF: output/the-long-ascent.pdf"
echo ""
