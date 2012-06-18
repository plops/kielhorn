set terminal postscript eps enhanced size 7cm,7cm
set output "lut_graph.eps"
set xrange [0:255]
set yrange [0:0.23]
unset key
#set xtics 0,32,256
set y2tics ("0.214" 0.214, "0.064" 0.064)
#set x2tics ("200" 200)
set xtics nomirror
set ytics nomirror
set grid noxtics x2tics
set grid noytics y2tics
set xlabel "displayed grayvalue on MMA mirror 1/ADU"
set ylabel "{/Symbol h}"
plot "lut.dat" u 1:2 w l

