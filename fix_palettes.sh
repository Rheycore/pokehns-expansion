for f in data/tilesets/secondary/ilex_forest_hns/palettes/*.pal; do
  awk '{ gsub(/\r$/, ""); if (NR<=4 || $0!="255 0 255") print; else print "0 0 0" }' "$f" > tmp.pal && mv tmp.pal "$f"
done