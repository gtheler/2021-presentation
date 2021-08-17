```
wget http://www.mazegenerator.net/static/theta_maze_with_20_cells_diameter.png
convert theta_maze_with_20_cells_diameter.png -negate maze.png
potrace maze.pnm --alphamax 0  --opttolerance 0 -b svg -o maze.svg
./svg2dxf maze.svg maze.dxf
./dxf2geo maze.dxf 0.1
```
