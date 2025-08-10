#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

cd "$WALLPAPER_DIR" || exit 1

# === handle spaces name
IFS=$'\n'

# === ICON-PREVIEW SELECTION WITH ROFI, SORTED BY NEWEST ===
SELECTED_WALL=$(for a in $(ls -t *.jpg *.png *.gif *.jpeg 2>/dev/null); do echo -en "$a\0icon\x1f$a\n"; done | rofi -dmenu -p "")
[ -z "$SELECTED_WALL" ] && exit 1
SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# === SET WALLPAPER ===
# hyprctl hyprpaper preload "$SELECTED_PATH"
# hyprctl hyprpaper wallpaper ",$SELECTED_PATH"
# hyprctl hyprpaper unload all

wal -n -i "$SELECTED_PATH"
matugen image "$SELECTED_PATH"

sleep 0.2

swww img "$SELECTED_PATH" \
  --transition-type grow \
  --transition-step 90 \
  --transition-fps 60 \
  --transition-duration 1.25 \
  --transition-bezier .1,1,.1,1
