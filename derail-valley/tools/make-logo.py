"""Iron Valley cover emblem — generated night-freight scene (PIL + numpy).

Usage: python tools/make-logo.py [output.jpg]
Default output: assets/logo.jpg  (1400x1050, JPEG)
"""
import sys
import math
import random

import numpy as np
from PIL import Image, ImageDraw, ImageFilter

W, H = 1400, 1050
OUT = sys.argv[1] if len(sys.argv) > 1 else "assets/logo.jpg"

rng = random.Random(20260811)

# ---------- helpers ----------
def lerp(a, b, t):
    return a + (b - a) * t


def vgrad(w, h, top, bottom):
    """Vertical gradient array (h, w, 3) float from top color to bottom color."""
    t = np.linspace(0.0, 1.0, h)[:, None, None]
    arr = top * (1 - t) + bottom * t
    return np.tile(arr, (1, w, 1))


def radial_glow(size, color, peak=1.0):
    """Radial glow sprite (size x size RGBA) with gaussian falloff."""
    y, x = np.mgrid[0:size, 0:size]
    d = np.sqrt((x - size / 2) ** 2 + (y - size / 2) ** 2) / (size / 2)
    a = np.clip(peak * np.exp(-(d ** 2) * 4.5), 0.0, 1.0)
    arr = np.zeros((size, size, 4), dtype=np.uint8)
    arr[..., 0], arr[..., 1], arr[..., 2] = color
    arr[..., 3] = (a * 255).astype(np.uint8)
    return Image.fromarray(arr, "RGBA")


# ---------- sky ----------
sky = vgrad(W, H, np.array([16, 22, 40]), np.array([38, 50, 78]))  # #0b0f1c -> #1b2438
img = Image.fromarray(sky.astype(np.uint8), "RGB").convert("RGBA")

# ---------- stars ----------
star_layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sd = ImageDraw.Draw(star_layer)
for _ in range(150):
    x = rng.uniform(0, W)
    y = rng.uniform(0, H * 0.52)
    r = rng.uniform(0.6, 1.7)
    a = rng.randint(60, 190)
    sd.ellipse([x - r, y - r, x + r, y + r], fill=(226, 222, 208, a))
img.alpha_composite(star_layer)

# ---------- moon ----------
moon_pos = (W * 0.74, H * 0.20)
moon_r = 74
glow = radial_glow(moon_r * 9, (150, 178, 205), peak=0.35)
img.alpha_composite(glow, (int(moon_pos[0] - glow.width / 2), int(moon_pos[1] - glow.height / 2)))
moon = Image.new("RGBA", (moon_r * 2, moon_r * 2), (0, 0, 0, 0))
ImageDraw.Draw(moon).ellipse([0, 0, moon_r * 2 - 1, moon_r * 2 - 1], fill=(198, 208, 224, 235))
img.alpha_composite(moon, (int(moon_pos[0] - moon_r), int(moon_pos[1] - moon_r)))

# ---------- mountains ----------
def mountain_layer(color, base_y, amp_min, amp_max, seed):
    r = random.Random(seed)
    pts = [(0, base_y)]
    x = 0
    while x < W:
        peak_x = x + r.uniform(W * 0.08, W * 0.22)
        peak_y = base_y - r.uniform(amp_min, amp_max)
        pts.append((peak_x, peak_y))
        x = peak_x
    pts.append((W, base_y))
    pts.append((W, H))
    pts.append((0, H))
    layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    ImageDraw.Draw(layer).polygon(pts, fill=color)
    return layer

img.alpha_composite(mountain_layer((24, 31, 48, 255), int(H * 0.62), 90, 230, 11))
img.alpha_composite(mountain_layer((17, 23, 38, 255), int(H * 0.70), 60, 170, 22))

# ---------- valley floor ----------
floor = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(floor).rectangle([0, int(H * 0.78), W, H], fill=(13, 18, 30, 255))
img.alpha_composite(floor)

# ---------- headlight beam ----------
beam = Image.new("RGBA", (W, H), (0, 0, 0, 0))
bd = ImageDraw.Draw(beam)
# loco sits near center; beam fans out toward lower-left horizon
vx, vy = W * 0.50, H * 0.84          # headlight position
hx, hy = W * 0.18, H * 0.80          # beam endpoint center
spread = 0.30
bd.polygon(
    [(vx, vy - 14), (vx, vy + 14),
     (hx + spread * (vy - hy) * 1.0, hy + 26),
     (hx - spread * (vy - hy) * 1.0, hy - 26)],
    fill=(255, 190, 100, 34),
)
beam = beam.filter(ImageFilter.GaussianBlur(18))
img.alpha_composite(beam)

# ---------- track (perspective rails converging at vanishing point) ----------
vp = (W * 0.50, H * 0.62)
tr = Image.new("RGBA", (W, H), (0, 0, 0, 0))
td = ImageDraw.Draw(tr)
rail_color = (52, 58, 74, 255)
sleeper_color = (30, 35, 48, 255)
y0 = H - 6
for i in range(26):
    t = 1.0 - (i / 25.0) ** 2.2          # 0 at viewer, 1 at vanishing point
    y = lerp(H * 1.0, vp[1], t)
    w = lerp(560, 6, t)                  # half-width of gauge at this depth
    if i % 2 == 0 and i < 24:
        td.rectangle([vp[0] - w * 1.6, y, vp[0] + w * 1.6, y + lerp(26, 1, t)], fill=sleeper_color)
    for side in (-1, 1):
        x = vp[0] + side * w
        td.line([(x, y + lerp(30, 2, t)), (x, vp[1])], fill=rail_color, width=max(1, int(lerp(6, 1, t))))
img.alpha_composite(tr)

# ---------- train silhouette ----------
train = Image.new("RGBA", (W, H), (0, 0, 0, 0))
tdr = ImageDraw.Draw(train)
black = (9, 12, 20, 255)

# trailing freight cars (simplified boxes receding left)
car_h = 92
car_y = H - car_h - 4
for i, cx in enumerate([150, 265, 385, 505]):
    depth = i / 4.0
    cw = int(lerp(150, 96, depth))
    ch = int(lerp(car_h, 62, depth))
    cy = H - ch - 4
    x0 = cx - cw // 2
    tdr.rounded_rectangle([x0, cy, x0 + cw, cy + ch], radius=6, fill=black)

# road locomotive (DE6-like: long hood, cab, short hood)
lx, ly = W * 0.52, H - 118
loco_w, loco_h = 330, 118
tdr.rounded_rectangle([lx - loco_w // 2, ly, lx + loco_w // 2, ly + loco_h], radius=14, fill=black)
# long hood
tdr.rounded_rectangle([lx - loco_w // 2 + 8, ly - 26, lx + loco_w // 2 - 96, ly + loco_h], radius=10, fill=black)
# cab
tdr.rounded_rectangle([lx + loco_w // 2 - 96, ly - 58, lx + loco_w // 2 - 18, ly + loco_h], radius=8, fill=black)
# short hood (front, toward the left)
tdr.rounded_rectangle([lx - loco_w // 2 - 46, ly - 20, lx - loco_w // 2 + 8, ly + loco_h], radius=8, fill=black)
# frame
tdr.rectangle([lx - loco_w // 2 - 54, ly + loco_h - 16, lx + loco_w // 2 - 12, ly + loco_h], fill=black)
# trucks
for tx in (lx - 120, lx + 66):
    tdr.rounded_rectangle([tx - 26, ly + loco_h - 22, tx + 26, ly + loco_h + 14], radius=6, fill=(13, 16, 26, 255))
# fuel tank
tdr.rounded_rectangle([lx - 84, ly + loco_h - 18, lx + 42, ly + loco_h], radius=5, fill=(13, 16, 26, 255))
img.alpha_composite(train)

# ---------- headlight + glow ----------
hl_x, hl_y = int(lx - loco_w // 2 - 40), int(ly + 8)
bloom = radial_glow(440, (255, 180, 92), peak=0.62)
img.alpha_composite(bloom, (hl_x - bloom.width // 2, hl_y - bloom.height // 2))
core = radial_glow(130, (255, 230, 178), peak=1.0)
img.alpha_composite(core, (hl_x - core.width // 2, hl_y - core.height // 2))

# cab light strip
cabwin = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(cabwin).rectangle([lx + loco_w // 2 - 88, ly - 40, lx + loco_w // 2 - 30, ly - 16], fill=(96, 110, 130, 90))
img.alpha_composite(cabwin)

# ---------- subtle vignette ----------
vig = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(vig).rectangle([0, 0, W, H], fill=(0, 0, 0, 42))
vig = vig.filter(ImageFilter.GaussianBlur(130))
img.alpha_composite(vig)

# ---------- save ----------
out = img.convert("RGB")
out.save(OUT, "JPEG", quality=92)
print(f"wrote {OUT} ({W}x{H})")
