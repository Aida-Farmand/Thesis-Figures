set term postscript eps enhanced color "Times-New-Roman" 12
set encoding iso_8859_1

#set title "Real median full time hourly wages for men with bachelors degrees" font ",16"

set xtics nomirror
set ytics nomirror

set xlabel 'Year' font ",16" 
set ylabel 'Job loss rate %' font ",16"

set xrange [ 1994 : 2020 ]
set yrange [ 0 : 18 ]
set xtics 1994,2,2020

set grid

set style line 1 linetype 1 linecolor rgb "red" lw 1
set style line 2 linetype 1 linecolor rgb "blue" lw 1
set style line 3 linetype 1 linecolor rgb "green" lw 1
set style line 4 linetype 1 linecolor rgb "black" lw 1
set style line 5 linetype 1 linecolor rgb "black" lw 2.5
set style line 6 linetype 13 linecolor rgb "black" lw 3.5 dashtype 3

set key box linestyle 4 at 2007,4 center reverse samplen 4 spacing 1 width -4  font ",16"
set key center

plot "displaced.dta" using 1:($3*100) with lines ls 6 title "Mid-career workers" ,\
     "displaced.dta" using 1:($2*100) with lines ls 5 title "Older workers"
