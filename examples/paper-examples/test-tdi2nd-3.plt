set terminal x11

set title "First-generation TDI laser-noise subtraction for eccentric LISA orbit";
set xlabel "f [Hz]"; set ylabel "";

#set logscale x;
set logscale y;

#set format x "10^{%L}"; 
set format y "10^{%L}"; 

set xrange [1e-4:0.1];
set yrange [0.75:40];

#unset key;

#plot 1 notitle;
plot "data/tdi2nd-comparison.txt" using 1:2 title 'ratio between (amplitude) S/Ns nominal-laser and no-laser X' with lines;
replot "data/tdi2nd-comparison.txt" using 1:3 title 'ratio between (amplitude) S/Ns 0.3x-rms-laser and no-laser X' with lines;
replot "data/tdi2nd-comparison.txt" using 1:4 title 'ratio between (amplitude) S/Ns 0.1x-rms-laser and no-laser X' with lines;

set size 0.8,0.8; set ylabel 2,0;
set terminal postscript eps enhanced "Times" 18;
set output "eps/test-tdi2nd-comp.eps";
replot;
