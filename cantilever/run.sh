#!/bin/bash

rm -f *.dat
for element in tet4 tet10 hex8 hex20 hex27; do
 for c in 1 2 4 6 8 10; do
  scale=$(echo "PRINT 1/${c}" | feenox -)
  gmsh -3 -v 0 beam-cantilever-${element}.geo -clscale ${scale} -o beam-cantilever-${element}-${c}.msh
  feenox beam-cantilever.fee ${element} ${c} | tee -a beam-cantilever-${element}.dat
 done
done
