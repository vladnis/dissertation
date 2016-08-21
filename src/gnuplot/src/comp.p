unset log                              # remove any log-scaling
unset label                            # remove any previous labels

set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

set fs pattern 1 lc rgb "red"
set fs pattern 2 lc rgb "blue"
set fs pattern 7 lc rgb "green"

set boxwidth 0.8
set style fill solid

set ylabel "Number of recomended participants"

set title "Comparison between use cases"

set grid


plot "comp1.dat" every ::0::0 using 1:3:xtic(2) with boxes  ls 1 notitle, \
	"comp1.dat" every ::1::2 using 1:3:xtic(2) with boxes  ls 2 notitle, \
	"comp1.dat" every ::2::3 using 1:3:xtic(2) with boxes  ls 3 notitle
