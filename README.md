# Watermark Wizard — Documentation

Project: Batch image watermarking tool using Python + Pillow.
Author: Anvith N (2025A7PS0916H)

## What You Need Already Installed

- Python 3.9 or newer (`python --version` to check)
- `pip` in your system PATH (`pip --version` should work in Command Prompt)
- Pillow (installed automatically by `first_time_setup.bat`)

If Python is missing, install it from python.org before running anything. Make sure both `python` and `pip` are in your PATH.

## Directory Structure

```
.
├── watermark_wizard.py       Main script
├── requirements.txt          Python dependencies
├── README.md                 This file
├── input_images/
│   ├── black_watermark/      Dark images → white logo (dopyb.png)
│   └── white_watermark/      Light images → black logo (dopyw.png)
├── output_images/            Final watermarked results
├── assets/
│   ├── dopyw.png                 White Dopy logo
│   ├── dopyb.PNG                 Black Dopy logo
│   └── atmos26.png               Custom logo
├── cleanup.bat               Clears input folders, recreates them
├── first_time_setup.bat      Creates folders + installs requirements
├── dopy_prompt.bat           One-click: applies Dopy logo
└── atmos26_prompt.bat        One-click: applies Dopy then custom logo
```

## How to Use (End User — Batch Scripts)

### 1. Setup (run once on first use)
Double-click `first_time_setup.bat`. This creates the input/output folders and installs Pillow via pip.

### 2. Sort and Add Your Photos
Put dark images into `input_images/black_watermark/`.
Put light images into `input_images/white_watermark/`.

### 3. Run the Required Batch File
- `dopy_prompt.bat` → applies ONLY the Dopy logo
- `atmos26_prompt.bat` → applies BOTH Dopy and atmos26 logo
Double-click the one you need.

### 4. Get Your Results
Watermarked images are saved in `output_images/`.

### 5. Clean Up Input Images for Next Run
Double-click `cleanup.bat`. It empties `input_images/black_watermark/` and `input_images/white_watermark/` so you can add new photos for the next run.

## Manual CLI (Advanced)

```bash
python watermark_wizard.py <input_folder> <output_folder> [options]
```

Options:
- `--text` — Watermark text string
- `--position` — `top-left` | `top-right` | `bottom-left` | `bottom-right` | `center`
- `--opacity` — `0-255` (default 128)
- `--logo` — Path to logo PNG
- `--size` — Logo size as % of image (default 20)
- `--offset` — `x,y` in percentages (default `1,1`)

Example:
```bash
python watermark_wizard.py input_images/black_watermark output_images --logo assets/dopyb.PNG --position bottom-right --opacity 200
```

## Batch Script Details

- `dopy_prompt.bat`: runs Dopy white on white images, Dopy black on black images
- `atmos26_prompt.bat`: runs Dopy (assets/dopyw.png / assets/dopyb.PNG) into `.\temp_images`, then overlays `assets/atmos26.png`, then deletes `.\temp_images`
- `cleanup.bat`: deletes contents of both input folders and remakes them
- `first_time_setup.bat`: `mkdir` + `pip install`

## Dependencies

- Python 3.9+
- Pillow (`pip install -r requirements.txt`)

## Notes

- Supported formats: `.jpg`, `.jpeg`, `.png`
- Output is saved as `.jpg` (converted to RGB)
- The script auto-creates output folders if missing
