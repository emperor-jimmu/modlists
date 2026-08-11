"""Routa cover emblem — winter garage night scene (PIL + numpy).

A frozen January night in Alivieska: aurora-tinted sky, a low moon,
snow-covered ground and a frozen lake, a garage with its door open
spilling warm light, and a sedan silhouette with headlights on the snow.
Deterministic (seeded RNG) so the emblem is reproducible.
"""
import sys
import random

import numpy as np
from PIL import Image, ImageDraw, ImageFilter

W, H = 1400, 1050
OUT = sys.argv[1] if len(sys.argv) > 1 else "assets/logo.jpg"

rng = random.Random(20260812)


def lerp(a, b, t):
    return a + (b - a) * t


def vgrad(w, h, top, bottom):
    """Vertical gradient array (h, w, 3) float from top color to bottom color."""
    arr = np.zeros((h, w, 3), dtype=np.float32)
    for y in range(h):
        t = y / (h - 1)
        arr[y, :] = np.array([lerp(top[i], bottom[i], t) for i in range(3)])
    return arr


def radial_glow(size, color, peak=1.0):
    """Radial glow sprite (size x size RGBA) with gaussian falloff."""
    y, x = np.ogrid[0:size, 0:size]
    dx = (x - size / 2) / (size / 2)
    dy = (y - size / 2) / (size / 2)
    d = np.sqrt(dx * dx + dy * dy)
    a = np.clip(1.0 - d, 0, 1) ** 2.2 * peak * 255
    rgba = np.zeros((size, size, 4), dtype=np.uint8)
    rgba[..., 0], rgba[..., 1], rgba[..., 2] = color
    rgba[..., 3] = a.astype(np.uint8)
    return Image.fromarray(rgba, "RGBA")


def draw_pine(d, x, base_y, hgt, shade):
    """Small pine silhouette: stacked triangles with a trunk."""
    w = hgt * 0.42
    d.polygon([(x, base_y - hgt), (x - w / 2, base_y - hgt * 0.28), (x + w / 2, base_y - hgt * 0.28)], fill=shade)
    d.polygon([(x, base_y - hgt * 0.62), (x - w * 0.38, base_y - hgt * 0.05), (x + w * 0.38, base_y - hgt * 0.05)], fill=shade)
    d.polygon([(x, base_y - hgt * 0.9), (x - w * 0.3, base_y - hgt * 0.5), (x + w * 0.3, base_y - hgt * 0.5)], fill=shade)
    d.rectangle([x - w * 0.05, base_y - hgt * 0.05, x + w * 0.05, base_y], fill=shade)


def draw_garage(d, x0, y0, scale=1.0):
    """Garage with open door, warm interior; (x0, y0) is the door bottom center."""
    gh = int(300 * scale)
    gw = int(430 * scale)
    door_w = int(240 * scale)
    door_h = int(230 * scale)
    # walls
    d.polygon([(x0 - gw / 2, y0), (x0 - gw / 2, y0 - gh), (x0 + gw / 2, y0 - gh), (x0 + gw / 2, y0)],
              fill=(24, 32, 46, 255))
    # roof with snow
    d.polygon([(x0 - gw / 2 - 22, y0 - gh), (x0, y0 - gh - 70), (x0 + gw / 2 + 22, y0 - gh)],
              fill=(18, 26, 40, 255))
    d.polygon([(x0 - gw / 2 - 20, y0 - gh + 8), (x0, y0 - gh - 62), (x0 + gw / 2 + 20, y0 - gh + 8)],
              fill=(150, 168, 190, 200))
    # open door: warm interior
    d.rectangle([x0 - door_w / 2, y0 - door_h, x0 + door_w / 2, y0], fill=(255, 172, 66, 255))
    # interior glow gradient (drawn as horizontal strips)
    for i in range(10):
        t = i / 9
        col = (int(lerp(255, 120, t)), int(lerp(190, 64, t)), int(lerp(110, 20, t)))
        y = y0 - door_h + int(door_h * i / 10)
        d.rectangle([x0 - door_w / 2, y, x0 + door_w / 2, y + door_h // 10 + 1], fill=col + (255,))
    # dark interior objects (workbench line)
    d.rectangle([x0 - door_w / 2 + 18, y0 - 74, x0 - door_w / 2 + 96, y0 - 58], fill=(40, 30, 22, 255))
    d.rectangle([x0 + door_w / 2 - 88, y0 - 88, x0 + door_w / 2 - 30, y0 - 66], fill=(36, 28, 22, 255))
    # door frame
    d.rectangle([x0 - door_w / 2 - 12, y0 - door_h - 12, x0 + door_w / 2 + 12, y0 - door_h], fill=(30, 40, 58, 255))
    d.rectangle([x0 - door_w / 2 - 12, y0 - door_h, x0 - door_w / 2, y0], fill=(30, 40, 58, 255))
    d.rectangle([x0 + door_w / 2, y0 - door_h, x0 + door_w / 2 + 12, y0], fill=(30, 40, 58, 255))
    return x0, y0 - door_h


def draw_sedan(d, cx, cy, scale=1.0):
    """Sedan silhouette (side view, facing left) — the Rivett in the dark."""
    l = int(300 * scale)
    h = int(70 * scale)
    x0 = cx - l // 2
    # body
    d.polygon([(x0, cy), (x0 + int(38 * scale), cy - int(40 * scale)),
               (x0 + int(110 * scale), cy - int(52 * scale)),
               (x0 + int(180 * scale), cy - int(50 * scale)),
               (x0 + int(240 * scale), cy - int(30 * scale)),
               (x0 + l, cy), (x0 + l - int(26 * scale), cy + int(12 * scale)),
               (x0 + int(26 * scale), cy + int(12 * scale))],
              fill=(14, 18, 26, 255))
    # window line
    d.polygon([(x0 + int(56 * scale), cy - int(34 * scale)),
               (x0 + int(104 * scale), cy - int(46 * scale)),
               (x0 + int(176 * scale), cy - int(44 * scale)),
               (x0 + int(222 * scale), cy - int(28 * scale)),
               (x0 + int(160 * scale), cy - int(26 * scale)),
               (x0 + int(78 * scale), cy - int(24 * scale))],
              fill=(96, 116, 142, 255))
    # wheels
    d.ellipse([x0 + int(58 * scale) - int(22 * scale), cy - int(8 * scale),
               x0 + int(58 * scale) + int(22 * scale), cy + int(28 * scale)], fill=(10, 12, 16, 255))
    d.ellipse([x0 + int(232 * scale) - int(22 * scale), cy - int(8 * scale),
               x0 + int(232 * scale) + int(22 * scale), cy + int(28 * scale)], fill=(10, 12, 16, 255))
    # headlight (facing left)
    d.rectangle([x0 - 2, cy - int(30 * scale), x0 + 6, cy - int(22 * scale)], fill=(255, 216, 140, 255))
    return x0 - 2, cy - int(26 * scale)


# ---------- sky ----------
sky = vgrad(W, H, np.array([4, 8, 18]), np.array([26, 40, 66]))  # #040812 -> #1a2842
img = Image.fromarray(sky.astype(np.uint8), "RGB").convert("RGBA")

# ---------- stars (upper half) ----------
star_layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sd = ImageDraw.Draw(star_layer)
for _ in range(110):
    x = rng.uniform(0, W)
    y = rng.uniform(0, H * 0.52)
    r = rng.uniform(0.6, 1.8)
    a = rng.randint(90, 220)
    sd.ellipse([x - r, y - r, x + r, y + r], fill=(210, 222, 240, a))
img.alpha_composite(star_layer)

# ---------- aurora band (subtle, upper left) ----------
aur = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ad = ImageDraw.Draw(aur)
for i in range(26):
    t = i / 25
    y_base = H * (0.12 + 0.10 * t)
    amp = 40 + 60 * (1 - t)
    pts = []
    for x in range(-40, W + 40, 40):
        y = y_base + rng.uniform(-amp, amp) * (0.4 + 0.6 * abs(x / W - 0.5))
        pts.append((x, y))
    col = (int(lerp(90, 30, t)), int(lerp(210, 80, t)), int(lerp(150, 60, t)), int(lerp(46, 10, t)))
    ad.line(pts, fill=col, width=10)
aur = aur.filter(ImageFilter.GaussianBlur(14))
img.alpha_composite(aur)

# ---------- low moon with halo ----------
moon_pos = (W * 0.72, H * 0.18)
halo = radial_glow(640, (190, 208, 232), peak=0.22)
img.alpha_composite(halo, (int(moon_pos[0] - halo.width / 2), int(moon_pos[1] - halo.height / 2)))
moon = Image.new("RGBA", (220, 220), (0, 0, 0, 0))
ImageDraw.Draw(moon).ellipse([0, 0, 219, 219], fill=(206, 220, 240, 200))
img.alpha_composite(moon, (int(moon_pos[0] - 110), int(moon_pos[1] - 110)))

# ---------- distant pine line (dark band above horizon) ----------
band = Image.new("RGBA", (W, H), (0, 0, 0, 0))
bd = ImageDraw.Draw(band)
bd.rectangle([0, int(H * 0.60), W, H], fill=(8, 13, 24, 255))
band = band.filter(ImageFilter.GaussianBlur(6))
img.alpha_composite(band)

pines = Image.new("RGBA", (W, H), (0, 0, 0, 0))
pd = ImageDraw.Draw(pines)
base_y = int(H * 0.625)
x = -20
while x < W:
    hgt = rng.uniform(60, 150)
    draw_pine(pd, x, base_y + rng.uniform(0, 8), hgt, (9, 14, 26, 255))
    x += rng.uniform(34, 90)
img.alpha_composite(pines)

# ---------- frozen lake (left, dark reflective patch) ----------
lake = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ld = ImageDraw.Draw(lake)
ld.polygon([(0, int(H * 0.66)), (int(W * 0.52), int(H * 0.66)), (int(W * 0.60), int(H * 0.90)), (0, int(H * 0.90))],
           fill=(20, 30, 50, 255))
# ice cracks
for _ in range(26):
    x0 = rng.uniform(0, W * 0.5)
    y0 = rng.uniform(H * 0.68, H * 0.86)
    ln = rng.uniform(20, 110)
    ang = rng.uniform(0, 3.1415)
    ld.line([(x0, y0), (x0 + ln * np.cos(ang), y0 + ln * np.sin(ang))],
            fill=(150, 172, 200, rng.randint(18, 46)), width=1)
lake = lake.filter(ImageFilter.GaussianBlur(2))
img.alpha_composite(lake)

# ---------- snow ground ----------
snow = Image.new("RGBA", (W, H), (0, 0, 0, 0))
snd = ImageDraw.Draw(snow)
snd.rectangle([0, int(H * 0.66), W, H], fill=(46, 60, 84, 255))
# snow shading: lighter near horizon, darker at bottom
for y in range(int(H * 0.66), H):
    t = (y - H * 0.66) / (H - H * 0.66)
    c = tuple(int(lerp(a, b, t)) for a, b in zip((84, 102, 128), (30, 40, 60)))
    snd.line([(0, y), (W, y)], fill=c + (255,))
# drift lines
for _ in range(40):
    x0 = rng.uniform(0, W)
    y0 = rng.uniform(H * 0.70, H)
    ln = rng.uniform(40, 240)
    col = (int(lerp(130, 180, rng.random())), int(lerp(148, 196, rng.random())), int(lerp(170, 216, rng.random())))
    snd.line([(x0, y0), (x0 + ln, y0 + rng.uniform(-4, 10))], fill=col + (rng.randint(14, 42),), width=rng.randint(1, 2))
snow = snow.filter(ImageFilter.GaussianBlur(1.2))
img.alpha_composite(snow)

# ---------- garage (right-center) ----------
garage = Image.new("RGBA", (W, H), (0, 0, 0, 0))
gd = ImageDraw.Draw(garage)
gx, gy = draw_garage(gd, int(W * 0.80), int(H * 0.76), scale=1.05)
img.alpha_composite(garage)

# ---------- sedan in front of garage, headlights on ----------
car_layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
cd = ImageDraw.Draw(car_layer)
hlx, hly = draw_sedan(cd, int(W * 0.62), int(H * 0.80), scale=1.25)
img.alpha_composite(car_layer)

# ---------- headlight beams sweeping the snow ----------
beam = Image.new("RGBA", (W, H), (0, 0, 0, 0))
bmd = ImageDraw.Draw(beam)
tx, ty = W * 0.18, H * 0.94
dx, dy = tx - hlx, ty - hly
length = (dx ** 2 + dy ** 2) ** 0.5
ux, uy = dx / length, dy / length
px, py = -uy, ux
spread = 0.22
p1 = (hlx + px * 18, hly + py * 18)
p2 = (hlx + dx + px * spread * length, hly + dy + py * spread * length)
p3 = (hlx + dx - px * spread * length, hly + dy - py * spread * length)
p4 = (hlx - px * 18, hly - py * 18)
bmd.polygon([p1, p2, p3, p4], fill=(255, 214, 150, 110))
beam = beam.filter(ImageFilter.GaussianBlur(14))
img.alpha_composite(beam)

# second (upper) beam, shorter and higher
beam2 = Image.new("RGBA", (W, H), (0, 0, 0, 0))
b2 = ImageDraw.Draw(beam2)
tx2, ty2 = W * 0.30, H * 0.80
dx2, dy2 = tx2 - hlx, ty2 - hly
len2 = (dx2 ** 2 + dy2 ** 2) ** 0.5
ux2, uy2 = dx2 / len2, dy2 / len2
px2, py2 = -uy2, ux2
b2.polygon([(hlx + px2 * 14, hly + py2 * 14),
            (hlx + dx2 + px2 * 0.16 * len2, hly + dy2 + py2 * 0.16 * len2),
            (hlx + dx2 - px2 * 0.16 * len2, hly + dy2 - py2 * 0.16 * len2),
            (hlx - px2 * 14, hly - py2 * 14)], fill=(255, 222, 168, 60))
beam2 = beam2.filter(ImageFilter.GaussianBlur(10))
img.alpha_composite(beam2)

# headlight hot core + warm pool on the snow from the garage door
core = radial_glow(130, (255, 224, 168), peak=0.9)
img.alpha_composite(core, (int(hlx - core.width / 2), int(hly - core.height / 2)))
pool = radial_glow(520, (255, 190, 110), peak=0.28)
img.alpha_composite(pool, (int(gx - pool.width / 2), int(H * 0.86 - pool.height / 2)))

# ---------- falling snow ----------
flakes = Image.new("RGBA", (W, H), (0, 0, 0, 0))
fd = ImageDraw.Draw(flakes)
for _ in range(420):
    x = rng.uniform(0, W)
    y = rng.uniform(0, H)
    r = rng.uniform(0.7, 2.4)
    a = rng.randint(70, 200)
    fd.ellipse([x - r, y - r, x + r, y + r], fill=(226, 236, 248, a))
flakes = flakes.filter(ImageFilter.GaussianBlur(0.7))
img.alpha_composite(flakes)

# ---------- subtle vignette ----------
vig = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(vig).rectangle([0, 0, W, H], fill=(0, 0, 0, 56))
vig = vig.filter(ImageFilter.GaussianBlur(150))
img.alpha_composite(vig)

# ---------- save ----------
out = img.convert("RGB")
out.save(OUT, "JPEG", quality=92)
print(f"wrote {OUT} ({W}x{H})")
