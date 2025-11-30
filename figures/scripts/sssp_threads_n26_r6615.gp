set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/sssp_threads_n26_r6615.pdf"
set xlabel "number of threads"
set ylabel "time (seconds)" enhanced
set key horizontal outside
set yrange [0:*]
set xrange [:*]
# set logscale xy 2
#set style data histogram
#set style histogram clustered

plot "~/thesis/figures/data/g500_n26_r6615.txt" u 1:2 with linespoint dashtype 1 pointtype 1 title "Graph500",\
	"~/thesis/figures/data/gsm_sssp_n26_r6615.txt" u 1:2 with linespoint dashtype 1 pointtype 2 title "Gossamer",\
	# "m2.txt" u 3:2 with linespoint title "m2",\
	# "m3.txt" u 3:2 with linespoint title "m3",\
	# "m4.txt" u 3:2 with linespoint title "m4",\
	