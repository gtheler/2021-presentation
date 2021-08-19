1. Para el modelo de tres barras de la figura, dibuje la secuencia de carga y descarga para
diferentes niveles de deformaciones. Las barras tienen la misma geometría y propiedades
elásticas, pero tienen diferentes tensiones de fluencia.


```
for i in 1 2 3 4; do
  feenox 3bars.fee ${i}
  pyxplot 3bars.ppl
  mv 3bars-sigma-vs-eps.pdf 3bars-sigma-vs-eps-${i}.pdf 
done  
```
