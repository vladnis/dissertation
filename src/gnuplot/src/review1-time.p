reset

set term pdfcairo size 7cm,4cm font 'Times, 8'
set output 'time.pdf'
set xtic auto                          # set xtics automatically
set ytic auto 

set grid
set style data linespoints
set key left top

set xlabel "Time [min]"

set format y "%.0f"
set ylabel "Percentage covered"

set  linetype 1 linewidth 1 lc "#e41a1c" pt 1 ps 0.5

plot  "time.dat" using 1:2 title '' with linespoints 

unset output
