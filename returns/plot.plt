set term postscript eps enhanced color "Times-New-Roman" 12
set encoding iso_8859_1

#set title "Returns To Tenure For Older Workers (1994-2016)" font ",16"

set xtics nomirror
set ytics nomirror

set xlabel 'Years with the same employer' font ",16" 
set ylabel '% Return to tenure' font ",16"

set xrange [ 0 : 30 ]
#set yrange [ 30 : 42 ]
set xtics 5 

set style line 1 linetype 1 linecolor rgb "black" lw 2.5
set style line 2 linetype 1 linecolor rgb "black" lw 2.5 dashtype 3
set style line 3 linetype 1 linecolor rgb "black" lw 2.5 dashtype 4
set style line 4 linetype 1 linecolor rgb "black" lw 2.5 dashtype 6

set key box linestyle 1 at 22,10 center reverse samplen 4 spacing 1 width -1  font ",16"
set key center


f(x) = 0.0367*x-0.000639*x*x
g(x) = 0.0353*x-0.000561*x*x
h(x) = 0.0191*x-0.000205*x*x
i(x) = 0.0161*x-0.000162*x*x

plot 100*f(x) with lines ls 1 title "1994-1998 " ,\
     100*g(x) with lines ls 2 title "2000-2004 " ,\
     100*h(x) with lines ls 4 title "2006-2010 " ,\
     100*i(x) with lines ls 3 title "2012-2016 " 
