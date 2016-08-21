set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "Noise pollution use case"
set xlabel "Number of participants"
set ylabel "Percentage of coverage"
set grid
plot    "1.txt" using 1:2 title '' with linespoints smooth bezier
