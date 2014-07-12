reset

set terminal epslatex color

set xlabel 'x [m]'
set ylabel '$\frac{\text{c}}{\text{c}_0}$'

f(x)=0.5*(1-erf(x/sqrt(4*(4*10**(-10))*2475)))
g(x)=0.5*(1-erf(x/sqrt(4*(4*10**(-10))*5784.7)))

set xtics 0,0.001,0.006

set xrange [-0.0002:0.006]
set output 'profiel1.tex'
p "v3.txt" u (($3-470)/100000):4 t 'Messwerte', f(x) t 'Theorie für t = 41 min'
set output
!epstopdf profiel1.eps
set xtics 0,0.0005,0.006
set xrange [-0.0001:0.004]
set output 'profiel2.tex'
p "v4.txt" u (($3-797)/100000):4 t 'Messwerte', g(x) t 'Theorie für t = 96 min'
set output
!epstopdf profiel2.eps
