#!/bin/sh

dir="$HOME/Pictures/wallpapers"
wall_cache_folder="$HOME/.cache/wallpapers"
if [ ! -d $wall_cache_folder ]; then
    mkdir -p $wall_cache_folder
fi

# Get random wallpaper
BG="$(find "$dir" -name '*.jpg' -o -name '*.png' | shuf -n1)"
ext="${BG##*.}"

# Set wallpaper
awww img "$BG" --transition-fps 165 --transition-duration 1

# Create blured wallpaper
if [ ! -f "$wall_cache_folder/blur-$BG" ]; then
    magick "$BG" -resize 75% -blur 50x30 "$wall_cache_folder/blur-$(basename "${BG%.*}").png"
fi
cp "$wall_cache_folder/blur-$(basename "${BG%.*}").png" "$wall_cache_folder/blurred-wallpaper.png"
