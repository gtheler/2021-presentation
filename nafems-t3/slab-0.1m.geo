l = 0.1;
n = 1000;

Point(1) = {0, 0, 0};
Point(2) = {l, 0, 0};
Line(1) = {1, 2};

Physical Point("left") = {1};
Physical Point("right") = {2};
Physical Line("bulk") = {1};

Mesh.MeshSizeMin = l/n;
Mesh.MeshSizeMax = l/n;
