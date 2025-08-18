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

wal -q -n -i "$SELECTED_PATH"
matugen -q -t scheme-fidelity image "$SELECTED_PATH" 

hyprctl hyprpaper reload ,"$SELECTED_PATH"
ln -sf -T "$SELECTED_PATH" ~/.config/hypr/scripts/current_wallpaper

# swww img "$SELECTED_PATH" \
#   --transition-type grow \
#   --transition-step 90 \
#   --transition-fps 60 \
#   --transition-duration 1.25 \
#   --transition-bezier .1,1,.1,1
