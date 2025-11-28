set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/erpc_vs_gsm_loaded_latency.pdf"
set xlabel "throughput (MOPs)" enhanced
set ylabel "latency (us)"
set key horizontal outside
set yrange [0:*]
set xrange [0:*]
# set logscale y 2
#set style data histogram
#set style histogram clustered

plot "~/thesis/figures/data/erpc_loaded_latency.txt" u 2:6 with linespoint dashtype 1 pointtype 2 title "eRPC",\
	"~/thesis/figures/data/gsm_loaded_latency.txt" u 8:22 with linespoint dashtype 1 pointtype 6 title "Gossamer",\
	# "erpc/erpc_t28_b7.txt" u 1:4 with linespoint title "b7"
	