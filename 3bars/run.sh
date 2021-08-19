for i in 1 2 3 4; do
  feenox 3bars.fee ${i}
  pyxplot 3bars.ppl
  mv 3bars-sigma-vs-eps.pdf 3bars-sigma-vs-eps-${i}.pdf 
done  
