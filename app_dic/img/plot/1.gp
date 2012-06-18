set terminal postscript eps enhanced size 9cm,5cm
set output "deflection.eps"
#f(x)=a*exp(b*x)+c
#f(x)=a*x*x+b*x+c
f(x)=a*x*x*x+d
#set key top left
unset key
set xrange [0:25]
set yrange [0:180]
set xlabel "voltage on tilt electrode UCE/V"
set ylabel "mirror deflection d/nm"
set y2tics ("134" 134, "67" 67)
set x2tics ("22.5" 22.5, "17.7" 17.7)
set xtics nomirror
set ytics nomirror
set grid noxtics x2tics
set grid noytics y2tics
fit f(x) "uce.dat" u 1:2 via a,d
plot "uce.dat" u 1:2, f(x) title "a*x*x*x+d"
