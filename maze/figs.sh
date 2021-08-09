gmsh figs.geo

# 1 = problem statement
# 2 = mesh & bcs
# 3 = solution

for i in 1 2 3; do
  echo step ${i}
  convert -trim maze${i}.png maze${i}-trimmed.png
  width=$(identify -format "%[fx:w]" maze${i}-trimmed.png)
  convert -resize ${width}x  maze${i}-top.svg     maze${i}-top.png
  convert -resize ${width}x  maze${i}-bottom.svg  maze${i}-bottom.png
  montage -mode concatenate -tile 1x maze${i}-top.png maze${i}-trimmed.png maze${i}-bottom.png maze${i}.png
done

# montage -mode concatenate -tile x1 maze1.png maze2.png maze3.png maze.png
