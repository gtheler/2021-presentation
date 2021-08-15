```
wget http://www.mazegenerator.net/static/orthogonal_maze_with_20_by_20_cells.png
convert orthogonal_maze_with_20_by_20_cells.png -negate maze.png
potrace maze.pnm --alphamax 0  --opttolerance 0 -b svg -o maze.svg
./svg2dxf maze.svg maze.dxf
./dxf2geo maze.dxf 0.1
```
