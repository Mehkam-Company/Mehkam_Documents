from pathlib import Path
import json
import zipfile
import shutil

from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from reportlab.lib.colors import Color


# ============================================================
# Project Root
# ============================================================

PROJECT_ROOT = Path(__file__).resolve().parent.parent

ASSET_ROOT = PROJECT_ROOT / "assets" / "color"
PACKAGE_ROOT = PROJECT_ROOT / "mehkam-master-color-asset-package"
ZIP_PATH = PROJECT_ROOT / "mehkam-master-color-asset-package.zip"

VERSION = "V1.0.0"


# ============================================================
# Clean Previous Output
# ============================================================

if PACKAGE_ROOT.exists():
    shutil.rmtree(PACKAGE_ROOT)

if ZIP_PATH.exists():
    ZIP_PATH.unlink()


# ============================================================
# Create Directory Structure
# ============================================================

for subdirectory in ["core", "neutral", "semantic", "print"]:
    (PACKAGE_ROOT / "assets" / "color" / subdirectory).mkdir(
        parents=True,
        exist_ok=True,
    )


# ============================================================
# Core Colors
# ============================================================

core = {
    "MEHKAM-BLACK": {
        "hex": "#000000",
        "rgb": [0, 0, 0],
        "cmyk": [0, 0, 0, 100],
    },
    "MEHKAM-WHITE": {
        "hex": "#FFFFFF",
        "rgb": [255, 255, 255],
        "cmyk": [0, 0, 0, 0],
    },
}


# ============================================================
# Neutral Gray Scale
# ============================================================

neutral = {}

for percentage in range(0, 101, 10):
    value = round(255 * percentage / 100)

    neutral[f"MEHKAM-GRAY-{percentage:03d}"] = {
        "percentage": percentage,
        "hex": f"#{value:02X}{value:02X}{value:02X}",
        "rgb": [value, value, value],
        "cmyk": [
            0,
            0,
            0,
            round((255 - value) / 255 * 100),
        ],
    }


# ============================================================
# Semantic Colors
# ============================================================

semantic_map = {
    "SUCCESS": "MEHKAM-GRAY-070",
    "ERROR": "MEHKAM-GRAY-030",
    "WARNING": "MEHKAM-GRAY-050",
    "INFO": "MEHKAM-GRAY-080",
}

semantic = {}

for state, reference in semantic_map.items():
    semantic[state] = {
        "source_gray": reference,
        **neutral[reference],
    }


# ============================================================
# Color Tokens
# ============================================================

tokens = {
    "metadata": {
        "brand": "Mehkam",
        "system": "Master Color System",
        "version": VERSION,
        "mode": "Monochromatic",
        "core_colors": [
            "MEHKAM-BLACK",
            "MEHKAM-WHITE",
        ],
        "supporting_colors": [],
    },
    "core": core,
    "neutral": neutral,
    "semantic": semantic,
}


# ============================================================
# JSON Tokens
# ============================================================

json_tokens_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "core"
    / f"MEHKAM-BRAND-ASSET-COLOR-TOKENS-{VERSION}-JSON.json"
)

json_tokens_path.write_text(
    json.dumps(tokens, indent=2),
    encoding="utf-8",
)


# ============================================================
# CSS Variables
# ============================================================

css = [
    ":root {",
    "  /* Mehkam Master Color System V1.0.0 */",
    "  --mehkam-black: #000000;",
    "  --mehkam-white: #FFFFFF;",
]

for percentage in range(0, 101, 10):
    value = round(255 * percentage / 100)

    css.append(
        f"  --mehkam-gray-{percentage:03d}: "
        f"#{value:02X}{value:02X}{value:02X};"
    )

for state, reference in semantic_map.items():
    gray_number = reference.split("-")[-1]

    css.append(
        f"  --mehkam-semantic-{state.lower()}: "
        f"var(--mehkam-gray-{gray_number});"
    )

css.append("}")


css_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "core"
    / f"MEHKAM-BRAND-ASSET-COLOR-TOKENS-{VERSION}-CSS.css"
)

css_path.write_text(
    "\n".join(css) + "\n",
    encoding="utf-8",
)


# ============================================================
# Neutral JSON
# ============================================================

neutral_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "neutral"
    / f"MEHKAM-BRAND-ASSET-COLOR-NEUTRAL-{VERSION}-JSON.json"
)

neutral_path.write_text(
    json.dumps(neutral, indent=2),
    encoding="utf-8",
)


# ============================================================
# Semantic JSON
# ============================================================

semantic_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "semantic"
    / f"MEHKAM-BRAND-ASSET-COLOR-SEMANTIC-{VERSION}-JSON.json"
)

semantic_path.write_text(
    json.dumps(semantic, indent=2),
    encoding="utf-8",
)


# ============================================================
# Print PDF
# ============================================================

pdf_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "print"
    / f"MEHKAM-BRAND-ASSET-COLOR-PRINT-{VERSION}-PDF.pdf"
)

pdf = canvas.Canvas(str(pdf_path), pagesize=A4)

page_width, page_height = A4

y = page_height - 50

pdf.setFont("Helvetica-Bold", 18)
pdf.drawString(
    48,
    y,
    "MEHKAM — MASTER COLOR SYSTEM",
)

y -= 24

pdf.setFont("Helvetica", 9)
pdf.drawString(
    48,
    y,
    "V1.0.0 | Monochromatic | Core: Black + White",
)

y -= 35


all_colors = (
    list(core.items())
    + list(neutral.items())
    + [
        (
            f"MEHKAM-SEMANTIC-{state}",
            value,
        )
        for state, value in semantic.items()
    ]
)


for name, value in all_colors:

    if y < 75:
        pdf.showPage()
        y = page_height - 50

    hex_value = value["hex"]

    rgb_value = int(
        hex_value[1:3],
        16,
    ) / 255

    pdf.setFillColor(
        Color(
            rgb_value,
            rgb_value,
            rgb_value,
        )
    )

    pdf.rect(
        48,
        y - 30,
        45,
        45,
        fill=1,
        stroke=1,
    )

    pdf.setFillColor(
        Color(0, 0, 0)
    )

    pdf.setFont(
        "Helvetica-Bold",
        8,
    )

    pdf.drawString(
        105,
        y + 2,
        name,
    )

    pdf.setFont(
        "Helvetica",
        8,
    )

    pdf.drawString(
        105,
        y - 11,
        f"HEX {hex_value}",
    )

    pdf.drawString(
        105,
        y - 23,
        f"RGB {value['rgb']}",
    )

    pdf.drawString(
        105,
        y - 35,
        f"CMYK {value['cmyk']}",
    )

    y -= 60


pdf.save()


# ============================================================
# CMYK JSON
# ============================================================

cmyk_path = (
    PACKAGE_ROOT
    / "assets"
    / "color"
    / "print"
    / f"MEHKAM-BRAND-ASSET-COLOR-CMYK-{VERSION}-JSON.json"
)

cmyk_path.write_text(
    json.dumps(
        {
            "version": VERSION,
            "core": core,
            "neutral": neutral,
            "semantic": semantic,
        },
        indent=2,
    ),
    encoding="utf-8",
)


# ============================================================
# Manifest
# ============================================================

manifest = f"""# Mehkam Master Color Asset Package

Version: {VERSION}

## System

- Core: Black + White
- Supporting colors: None
- Neutral: Full grayscale, 0%–100%, 10% steps
- Semantic: Success / Error / Warning / Info
- Mode: Fully monochromatic

## Digital

- JSON
- CSS Variables

## Print

- PDF
- CMYK references

## Storage

assets/color/

- core/
- neutral/
- semantic/
- print/

Initial Founder-produced assets may enter the official Asset Library
directly after production and validation.
"""


manifest_path = (
    PACKAGE_ROOT / "ASSET-MANIFEST.md"
)

manifest_path.write_text(
    manifest,
    encoding="utf-8",
)


# ============================================================
# Create ZIP Package
# ============================================================

with zipfile.ZipFile(
    ZIP_PATH,
    "w",
    zipfile.ZIP_DEFLATED,
) as archive:

    for file in PACKAGE_ROOT.rglob("*"):

        if file.is_file():

            archive.write(
                file,
                file.relative_to(PACKAGE_ROOT),
            )


# ============================================================
# Output
# ============================================================

print()
print("==============================================")
print(" Mehkam Master Color Asset Package")
print("==============================================")
print()
print(f"Version : {VERSION}")
print(f"Output  : {PACKAGE_ROOT}")
print(f"ZIP     : {ZIP_PATH}")
print()
print("Created successfully.")