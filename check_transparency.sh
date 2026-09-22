#!/bin/bash
find data/tilesets -name "*.pal" | while read -r f; do
  awk -v file="$f" 'NR>4 && $0=="255 0 255" {print file": line "NR}' "$f"
done
