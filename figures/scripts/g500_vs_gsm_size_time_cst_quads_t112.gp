set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/g500_vs_gsm_size_time_cst_quads_t112.pdf"
set xlabel "number of nodes (2^n)"
set ylabel "time (seconds)" enhanced
set key horizontal outside
set yrange [:*]
set xrange [:*]
# set logscale xy 2
#set style data histogram
#set style histogram clustered

plot "~/thesis/figures/data/g500_t112_quads.txt" u 1:2 with linespoint dashtype 1 pointtype 1 title "g500",\
	"~/thesis/figures/data/gsm_sssp_t112_quads.txt" u 1:2 with linespoint dashtype 1 pointtype 2 title "gsm",\
	# "m2.txt" u 3:2 with linespoint title "m2",\
	# "m3.txt" u 3:2 with linespoint title "m3",\
	# "m4.txt" u 3:2 with linespoint title "m4",\
	