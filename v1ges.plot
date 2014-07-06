reset
set terminal epslatex color
set output 'v1ges.tex'
set xlabel 'Zeit [s]'
set ylabel 'Höhe im Quadrat [m$^2$]'
set key top left
set xrange [0:*]
f(x)=a*x+b
set fit logfile 'lv1ges.log'
fit f(x) 'v1ges.txt' u 1:((($2-761)/100000)**2) via a,b
p 'v1ges.txt' u 1:((($2-761)/100000)**2) title 'Messwerte Versuch 1', f(x) lt -1 lc 1 title 'Fit'
set output
!epstopdf v1ges.eps

