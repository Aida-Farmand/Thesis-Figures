set term postscript eps enhanced color "Times-New-Roman" 12
set encoding iso_8859_1

#set title "Real median full time hourly wages for men with bachelors degrees" font ",16"

set xtics nomirror
set ytics nomirror

set xlabel 'Year' font ",16" 
set ylabel 'Real hourly wage (2018 dollars)' font ",16"

set xrange [ 1990 : 2019 ]
set yrange [ 30 : 42 ]
set xtics 1991,2,2019

set grid

set style line 1 linetype 1 linecolor rgb "red" lw 1
set style line 2 linetype 1 linecolor rgb "blue" lw 1
set style line 3 linetype 1 linecolor rgb "green" lw 1
set style line 4 linetype 1 linecolor rgb "black" lw 1
set style line 5 linetype 1 linecolor rgb "black" lw 2.5
set style line 6 linetype 13 linecolor rgb "black" lw 3.5 dashtype 3

set key box linestyle 4 at 2009,41 center reverse samplen 4 spacing 1 width -4  font ",16"
set key center

plot "wages.dta" using 1:2 smooth csplines with lines ls 5 title "Male older workers with college degree" ,\
     "wages.dta" using 1:3 smooth csplines with lines ls 6 title "Male mid-career workers with college degree"
