set title "SYSTEM HARDWARE" 
set xlabel "MEMOIRE"
set ylabel " IFORMATIONS"
set grid

plot "info.txt" u (column(0)):2:xtic(1) w l title " " , "info.txt" u (column(0)):3:xtic(1) w l title ""

