reset
set terminal epslatex color
set output 'v1ges.tex'
set xlabel 'Zeit [s]'
set ylabel '$x^2$ [m$^2$]
set key top left
set xrange [0:*]
set yrange [0:*]
f(x)=a*x
set fit logfile 'lv1ges.log'
fit f(x) 'v1ges.txt' u 1:((($2-761)/100000)**2) via a
f2(x)=c*x
set fit logfile 'lv2.log'
fit f2(x) 'v2.txt'u 1:((($2-541)/100000)**2) via c
p 'v1ges.txt' u ($1):((($2-761)/100000)**2):(((2*($2-761)*0.02)/100000)**2) w e title 'Messung 1', f(x) lt -1 lc 1 title 'Fit Messung 1', 'v2.txt' u 1:((($2-541)/100000)**2):(((2*($2-541)*0.02)/100000)**2) w e title 'Messung 2', f2(x) lt -1 lc 3 title 'Fit Messung 2'
set output
!epstopdf v1ges.eps

