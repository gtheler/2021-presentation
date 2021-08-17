```
wget http://www.mazegenerator.net/static/delta_maze_with_35_by_20_cells.png
convert delta_maze_with_35_by_20_cells.png -negate maze.pnm
potrace maze.pnm --alphamax 0  --opttolerance 0 -b svg -o maze.svg
./svg2dxf maze.svg maze.dxf
./dxf2geo maze.dxf 0.1
```
