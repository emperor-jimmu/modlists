"""Download bundled fonts for reproducible Typst builds.

Orbitron, Inter, and JetBrains Mono are all SIL OFL licensed.
Downloads variable .ttf files from the official Google Fonts GitHub repository
(raw.githubusercontent.com) — stable, version-independent URLs.
"""

import os
import urllib.request

FONTS_DIR = os.path.join(os.path.dirname(__file__), "..", "assets", "fonts")

FONTS = {
    "Orbitron": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/orbitron",
        "files": [
            "Orbitron[wght].ttf",
        ],
    },
    "Inter": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/inter",
        "files": [
            "Inter[opsz,wght].ttf",
            "Inter-Italic[opsz,wght].ttf",
        ],
    },
    "JetBrains Mono": {
        "base": "https://raw.githubusercontent.com/google/fonts/main/ofl/jetbrainsmono",
        "files": [
            "JetBrainsMono[wght].ttf",
        ],
    },
}


def download_font(name, base_url, files):
    for filename in files:
        url = f"{base_url}/{filename}"
        dest = os.path.join(FONTS_DIR, filename)
        print(f"  {filename}")
        urllib.request.urlretrieve(url, dest)


def main():
    os.makedirs(FONTS_DIR, exist_ok=True)

    # Remove existing .ttf files for clean re-download
    for f in os.listdir(FONTS_DIR):
        if f.endswith(".ttf"):
            os.remove(os.path.join(FONTS_DIR, f))

    for name, info in FONTS.items():
        print(f"Downloading {name}...")
        try:
            download_font(name, info["base"], info["files"])
        except Exception as e:
            print(f"  ERROR: {e}")
            print(f"  You may need to download {name} manually from https://fonts.google.com")
            return 1

    total = len(os.listdir(FONTS_DIR))
    print(f"\nDone. {total} font files in {FONTS_DIR}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
