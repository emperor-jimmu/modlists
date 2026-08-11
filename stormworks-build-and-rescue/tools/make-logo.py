"""Whitecap cover emblem — storm-sea rescue scene (PIL + numpy).

Generates assets/logo.jpg: a dark stormy night, a rescue vessel
cutting through whitecaps with its searchlight sweeping the water,
and a rescue helicopter overhead. Colors match the guide palette
(ocean-navy background, foam-white, rescue-orange accents).
"""
import random
import sys

import numpy as np
from PIL import Image, ImageDraw, ImageFilter

W, H = 1400, 1050
OUT = sys.argv[1] if len(sys.argv) > 1 else "assets/logo.jpg"

rng = random.Random(20260812)

# ---------- helpers ----------
def lerp(a, b, t):
    return a + (b - a) * t


def vgrad(w, h, top, bottom):
    """Vertical gradient array (h, w, 3) float from top color to bottom color."""
    arr = np.zeros((h, w, 3), dtype=np.float64)
    for y in range(h):
        t = y / (h - 1)
        arr[y, :, :] = lerp(top, bottom, t)
    return arr


def radial_glow(size, color, peak=1.0):
    """Radial glow sprite (size x size RGBA) with gaussian falloff."""
    x = np.linspace(-1, 1, size)
    xx, yy = np.meshgrid(x, x)
    d = np.sqrt(xx ** 2 + yy ** 2)
    fall = np.clip(1.0 - d, 0, 1) ** 2
    arr = np.zeros((size, size, 4), dtype=np.float64)
    arr[..., 0] = color[0] * fall * peak
    arr[..., 1] = color[1] * fall * peak
    arr[..., 2] = color[2] * fall * peak
    arr[..., 3] = fall * peak * 255
    return Image.fromarray(arr.astype(np.uint8), "RGBA")


def storm_cloud_layer(color, base_y, amp_min, amp_max, seed):
    """Bumpy cloud band: a filled shape whose top edge is noisy sine bumps."""
    r = random.Random(seed)
    layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    d = ImageDraw.Draw(layer)
    pts = []
    x = 0
    while x <= W + 40:
        y = base_y + r.uniform(amp_min, amp_max) * (
            0.55 + 0.45 * np.sin(x / 260.0 + r.uniform(0, 6.28))
        )
        pts.append((x, y))
        x += 40
    pts.append((W + 60, H))
    pts.append((-60, H))
    d.polygon(pts, fill=color)
    layer = layer.filter(ImageFilter.GaussianBlur(16))
    return layer


def draw_boat(d, x0, y0, scale=1.0):
    """Rescue vessel silhouette; (x0, y0) is the keel center. Returns (light_x, light_y)."""
    black = (7, 10, 17, 255)
    dark = (11, 15, 24, 255)
    hull_y = y0
    # hull
    d.polygon(
        [
            (x0 - 180 * scale, hull_y),
            (x0 - 205 * scale, hull_y - 30 * scale),
            (x0 + 190 * scale, hull_y - 34 * scale),
            (x0 + 210 * scale, hull_y - 12 * scale),
            (x0 + 195 * scale, hull_y),
        ],
        fill=black,
    )
    # deckhouse / bridge
    d.rectangle(
        [x0 - 70 * scale, hull_y - 88 * scale, x0 + 30 * scale, hull_y - 34 * scale],
        fill=black,
    )
    # wheelhouse with windows
    d.rectangle(
        [x0 - 62 * scale, hull_y - 118 * scale, x0 + 18 * scale, hull_y - 88 * scale],
        fill=dark,
    )
    # mast forward
    d.line(
        [(x0 - 130 * scale, hull_y - 34 * scale), (x0 - 130 * scale, hull_y - 150 * scale)],
        fill=black,
        width=int(4 * scale),
    )
    # radar dome on mast
    d.ellipse(
        [x0 - 138 * scale, hull_y - 166 * scale, x0 - 122 * scale, hull_y - 150 * scale],
        fill=black,
    )
    # rescue-orange life raft canister on deck
    d.rounded_rectangle(
        [x0 + 60 * scale, hull_y - 52 * scale, x0 + 92 * scale, hull_y - 36 * scale],
        radius=8 * scale,
        fill=(240, 138, 36, 255),
    )
    # navigation lights: red port / green starboard
    d.ellipse(
        [x0 - 186 * scale, hull_y - 40 * scale, x0 - 176 * scale, hull_y - 30 * scale],
        fill=(224, 64, 54, 255),
    )
    d.ellipse(
        [x0 + 176 * scale, hull_y - 42 * scale, x0 + 186 * scale, hull_y - 32 * scale],
        fill=(80, 214, 120, 255),
    )
    # searchlight on the wheelhouse roof
    light_x = int(x0 - 30 * scale)
    light_y = int(hull_y - 118 * scale)
    return light_x, light_y


def draw_helicopter(d, cx, cy, scale=1.0):
    """Simple rescue helicopter silhouette (side view, facing left)."""
    black = (6, 9, 15, 255)
    d.ellipse([cx - 46 * scale, cy - 16 * scale, cx + 30 * scale, cy + 16 * scale], fill=black)
    d.polygon(
        [(cx - 46 * scale, cy - 2 * scale), (cx - 76 * scale, cy - 8 * scale), (cx - 66 * scale, cy + 4 * scale)],
        fill=black,
    )
    d.polygon(
        [(cx + 30 * scale, cy - 6 * scale), (cx + 58 * scale, cy - 10 * scale), (cx + 42 * scale, cy + 4 * scale)],
        fill=black,
    )
    # tail boom + tail rotor
    d.line([(cx - 46 * scale, cy), (cx - 118 * scale, cy - 6 * scale)], fill=black, width=int(5 * scale))
    d.line(
        [(cx - 118 * scale, cy - 6 * scale), (cx - 118 * scale, cy - 34 * scale)],
        fill=black,
        width=int(3 * scale),
    )
    # main rotor
    d.line(
        [(cx - 40 * scale, cy - 16 * scale), (cx + 30 * scale, cy - 16 * scale)],
        fill=(10, 14, 22, 220),
        width=int(3 * scale),
    )
    # skids
    d.line([(cx - 30 * scale, cy + 16 * scale), (cx + 16 * scale, cy + 16 * scale)], fill=black, width=int(4 * scale))
    # floodlight under the nose
    d.ellipse([cx - 66 * scale, cy - 2 * scale, cx - 58 * scale, cy + 6 * scale], fill=(255, 214, 150, 255))


# ---------- sky ----------
sky = vgrad(W, H, np.array([8, 14, 26]), np.array([30, 44, 68]))  # #080e1a -> #1e2c44
img = Image.fromarray(sky.astype(np.uint8), "RGB").convert("RGBA")

# ---------- faint stars (upper sky only) ----------
star_layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sd = ImageDraw.Draw(star_layer)
for _ in range(90):
    x = rng.uniform(0, W)
    y = rng.uniform(0, H * 0.42)
    r = rng.uniform(0.6, 1.6)
    a = rng.randint(30, 110)
    sd.ellipse([x - r, y - r, x + r, y + r], fill=(214, 224, 238, a))
img.alpha_composite(star_layer)

# ---------- moon glow behind clouds ----------
moon_pos = (W * 0.78, H * 0.16)
glow = radial_glow(560, (168, 196, 226), peak=0.30)
img.alpha_composite(glow, (int(moon_pos[0] - glow.width / 2), int(moon_pos[1] - glow.height / 2)))
moon = Image.new("RGBA", (240, 240), (0, 0, 0, 0))
ImageDraw.Draw(moon).ellipse([0, 0, 239, 239], fill=(196, 212, 232, 150))
img.alpha_composite(moon, (int(moon_pos[0] - 120), int(moon_pos[1] - 120)))

# ---------- storm clouds ----------
img.alpha_composite(storm_cloud_layer((20, 28, 44, 255), int(H * 0.34), -8, 60, 31))
img.alpha_composite(storm_cloud_layer((14, 20, 33, 255), int(H * 0.44), -4, 46, 47))

# ---------- rain squall (diagonal streaks, upper-left) ----------
rain = Image.new("RGBA", (W, H), (0, 0, 0, 0))
rnd = ImageDraw.Draw(rain)
for _ in range(340):
    x = rng.uniform(-50, W * 0.55)
    y = rng.uniform(-50, H * 0.58)
    ln = rng.uniform(14, 46)
    a = rng.randint(10, 42)
    rnd.line([(x, y), (x + ln * 0.28, y + ln)], fill=(168, 184, 208, a), width=1)
rain = rain.filter(ImageFilter.GaussianBlur(0.8))
img.alpha_composite(rain)

# ---------- distant dark sea band ----------
band = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(band).rectangle([0, int(H * 0.60), W, H], fill=(10, 16, 27, 255))
band = band.filter(ImageFilter.GaussianBlur(10))
img.alpha_composite(band)

# ---------- sea ----------
sea = Image.new("RGBA", (W, H), (0, 0, 0, 0))
sead = ImageDraw.Draw(sea)
# base water gradient
for y in range(int(H * 0.62), H):
    t = (y - H * 0.62) / (H - H * 0.62)
    c = tuple(int(lerp(a, b, t)) for a, b in zip((24, 36, 56), (8, 12, 22)))
    sead.line([(0, y), (W, y)], fill=c + (255,))
img.alpha_composite(sea)

# ---------- waves / whitecaps (short foam streaks) ----------
foam = Image.new("RGBA", (W, H), (0, 0, 0, 0))
fd = ImageDraw.Draw(foam)
for _ in range(260):
    x = rng.uniform(0, W)
    y = rng.uniform(H * 0.64, H - 8)
    depth = (y - H * 0.64) / (H - H * 0.64)          # 0 far, 1 near
    length = lerp(8, 46, depth) * rng.uniform(0.6, 1.4)
    alpha = int(lerp(24, 110, depth) * rng.uniform(0.4, 1.0))
    col = (226, 234, 244, alpha)
    x2 = x + length * rng.choice([-1, 1])
    fd.line([(x, y), (x2, y)], fill=col, width=max(1, int(lerp(1, 3, depth))))
foam = foam.filter(ImageFilter.GaussianBlur(1.2))
img.alpha_composite(foam)

# whitecaps cresting around the hull
crest = Image.new("RGBA", (W, H), (0, 0, 0, 0))
cdr = ImageDraw.Draw(crest)
bx0, by0 = int(W * 0.60 - 256), int(H * 0.80 - 46)
for _ in range(40):
    x = bx0 + rng.uniform(-60, 520)
    y = by0 + rng.uniform(0, 60)
    ln = rng.uniform(10, 40)
    a = rng.randint(90, 190)
    cdr.line([(x, y), (x + ln, y + rng.uniform(-3, 3))], fill=(240, 246, 252, a), width=rng.randint(1, 3))
crest = crest.filter(ImageFilter.GaussianBlur(1.0))
img.alpha_composite(crest)

# ---------- rescue vessel ----------
boat_layer = Image.new("RGBA", (W, H), (0, 0, 0, 0))
bd = ImageDraw.Draw(boat_layer)
light_x, light_y = draw_boat(bd, W * 0.60, H * 0.80, scale=1.25)
img.alpha_composite(boat_layer)

# ---------- searchlight beam (from bridge, sweeping left across the water) ----------
beam = Image.new("RGBA", (W, H), (0, 0, 0, 0))
bmd = ImageDraw.Draw(beam)
bx = light_x
by = light_y
# beam fans toward lower-left
tx = W * 0.14
ty = H * 0.95
spread = 0.24
dx = tx - bx
dy = ty - by
length = (dx ** 2 + dy ** 2) ** 0.5
ux, uy = dx / length, dy / length
px, py = -uy, ux
hx, hy = bx + dx, by + dy
p1 = (bx + px * 26, by + py * 26)
p2 = (hx + px * spread * length, hy + py * spread * length)
p3 = (hx - px * spread * length, hy - py * spread * length)
p4 = (bx - px * 26, by - py * 26)
bmd.polygon([p1, p2, p3, p4], fill=(255, 216, 150, 120))
beam = beam.filter(ImageFilter.GaussianBlur(16))
img.alpha_composite(beam)

# searchlight hot core + reflection on the water
core = radial_glow(120, (255, 224, 168), peak=0.9)
img.alpha_composite(core, (int(light_x - core.width / 2), int(light_y - core.height / 2)))
refl = Image.new("RGBA", (W, H), (0, 0, 0, 0))
rd = ImageDraw.Draw(refl)
for i in range(14):
    y = H * 0.80 + i * 14
    rd.line([(W * 0.14, y), (W * 0.14 + lerp(60, 180, i / 13), y)],
            fill=(255, 216, 150, int(lerp(80, 14, i / 13))))
refl = refl.filter(ImageFilter.GaussianBlur(6))
img.alpha_composite(refl)

# ---------- helicopter overhead ----------
helo = Image.new("RGBA", (W, H), (0, 0, 0, 0))
hd = ImageDraw.Draw(helo)
draw_helicopter(hd, W * 0.30, H * 0.30, scale=1.3)
img.alpha_composite(helo)

# helicopter floodlight cone (faint, toward the water)
hbeam = Image.new("RGBA", (W, H), (0, 0, 0, 0))
hbd = ImageDraw.Draw(hbeam)
hx0, hy0 = W * 0.30 - 84, H * 0.30 + 6
hx1, hy1 = W * 0.20, H * 0.62
hdx, hdy = hx1 - hx0, hy1 - hy0
hlen = (hdx ** 2 + hdy ** 2) ** 0.5
hux, huy = hdx / hlen, hdy / hlen
hpx, hpy = -huy, hux
hbx, hby = hx0 + hdx, hy0 + hdy
hbd.polygon(
    [
        (hx0 + hpx * 10, hy0 + hpy * 10),
        (hbx + hpx * 60, hby + hpy * 60),
        (hbx - hpx * 60, hby - hpy * 60),
        (hx0 - hpx * 10, hy0 - hpy * 10),
    ],
    fill=(226, 226, 236, 46),
)
hbeam = hbeam.filter(ImageFilter.GaussianBlur(12))
img.alpha_composite(hbeam)

# ---------- subtle vignette ----------
vig = Image.new("RGBA", (W, H), (0, 0, 0, 0))
ImageDraw.Draw(vig).rectangle([0, 0, W, H], fill=(0, 0, 0, 52))
vig = vig.filter(ImageFilter.GaussianBlur(140))
img.alpha_composite(vig)

# ---------- save ----------
out = img.convert("RGB")
out.save(OUT, "JPEG", quality=92)
print(f"wrote {OUT} ({W}x{H})")
