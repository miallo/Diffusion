reset

set terminal epslatex color

set xlabel 'x [mm]'
set ylabel 'c/c$_0$'

f(x)=0.5*(1-erf(x/(sqrt(4*(4*10**(-4))*2475))))
g(x)=0.5*(1-erf(x/(sqrt(4*(4*10**(-4))*5784.7))))

set xtics 0,1,6

set xrange [-0.2:6]
set output 'profiel1.tex'
p "v3.txt" u (($3-470)/100):4 t 'Messwerte', f(x) t 'Theorie für t = 41 min'
set output
!epstopdf profiel1.eps
set xtics 0,0.5,6
set xrange [-0.1:4]
set output 'profiel2.tex'
p "v4.txt" u (($3-797)/100):4 t 'Messwerte', g(x) t 'Theorie für t = 96 min'
set output
!epstopdf profiel2.eps
