set xlabel "x" 
set ylabel "y" 
set zlabel "z" 
set ticslevel 0

set terminal svg size 800,600 fixed enhanced font 'Arial,12' butt dashlength 1.0 
set output 'lorenz.svg'
splot "lorenz.dat" u 2:3:4 w l ti ""
