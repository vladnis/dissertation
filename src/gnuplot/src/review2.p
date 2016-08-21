reset

set term pdfcairo size 7cm,4cm font 'Times, 8'
set output 'comp.pdf'
unset grid

set style histogram cluster
set style data histogram
set key left top

set style line 1 lc rgb "red"
set style line 2 lc rgb "blue"
set style line 3 lc rgb "green"
set style fill solid
set boxwidth 0.8

set xlabel 'Use cases'
set ylabel 'Number of recomended participants'

plot "comp1.dat" every ::0::0 using 1:3:xtic(2) with boxes  ls 1 notitle, \
	"comp1.dat" every ::1::2 using 1:3:xtic(2) with boxes  ls 2 notitle, \
	"comp1.dat" every ::2::3 using 1:3:xtic(2) with boxes  ls 3 notitle

unset output

