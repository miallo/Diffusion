reset
set terminal epslatex color
set output 'v1.tex'
set xlabel 'Zeit [s]'
set ylabel 'Höhe im Quadrat [m$^2$]'
set key top left
set xrange [0:*]
f(x)=a*x+b
set fit logfile 'lv1.log'
fit f(x) 'v1.txt' u 1:(($2/100000)**2) via a,b
f2(x)=c*x+d
set fit logfile 'lv1-2.log'
fit f2(x) 'v1-2.txt' u 1:(($2/100000)**2) via c,d
p 'v1.txt' u 1:(($2/100000)**2) title 'Messwerte Versuch 1', f(x) lt -1 lc 1 title 'Fit', 'v1-2.txt' u 1:(($2/100000)**2) title 'Messwerte Versuch 1 zweiter Teil', f2(x) lt -1 lc 1 title 'Fit zweiter Teil'
set output
!epstopdf v1.eps

