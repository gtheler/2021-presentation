gmsh -1 slab.geo
feenox thermal-1d-dirichlet-uniform-k.fee

for i in uniform space temperature; do
  feenox thermal-1d-dirichlet.fee ${i} > ${i}.dat
done

pyxplot thermal-slabs.ppl
