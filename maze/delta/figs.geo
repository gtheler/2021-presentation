Merge "maze.geo";
Merge "maze.msh";

General.SmallAxes = 0;
Mesh.ColorCarousel = 2;
Geometry.Points = 0;
Geometry.Curves = 1;
Geometry.Color.Curves = {0,0,0};

Mesh.Color.One = {56,149,174};
Mesh.SurfaceFaces = 1;
Mesh.SurfaceEdges = 0;

// Print "maze1.svg";
Print "maze1.png";

Mesh.SurfaceFaces = 1;
Mesh.SurfaceEdges = 1;
Mesh.Lines = 1;

// Print "maze2.svg";
Print "maze2.png";

Merge "maze-solved.msh";

Mesh.SurfaceFaces = 0;
Mesh.SurfaceEdges = 0;

View[0].ShowScale = 0;
View[0].RangeType = 2;
View[0].CustomMax = 0.0010;

View[1].ShowScale = 0;
View[1].CustomMax = 0.0006;
View[1].RangeType = 2;
View[1].GlyphLocation = 1; // Glyph (arrow, number, etc.) location (1: center of gravity, 2: node)
View[1].ArrowSizeMax = 20;

// Print "maze3.svg";
Print "maze3.png";

Exit;
