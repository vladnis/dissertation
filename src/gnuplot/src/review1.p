reset

set term pdfcairo size 7cm,4cm font 'Times, 8'
set output 'all.pdf'
set xtic auto                          # set xtics automatically
set ytic auto 

set grid
set style data linespoints
set key right bottom

set xlabel "Number of pedestrians"

set format y "%.0f"
set ylabel "Percentage covered"

set  linetype 1 linewidth 1 lc "#e41a1c" pt 1 ps 0.5

plot  "1.txt" using 1:2 title 'Air quality' with linespoints, \
		"10m-1h.txt" using 1:2 title 'Pedestrian density' with linespoints, \
		"100m-1h.txt" using 1:2 title 'WiFi access' with linespoints

unset output 
