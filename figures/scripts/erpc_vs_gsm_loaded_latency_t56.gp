set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/erpc_vs_gsm_loaded_latency_t56.pdf"
set xlabel "throughput (MOPs)" enhanced
set ylabel "latency (us)"
set key horizontal outside
set yrange [0:400]
set xrange [0:*]
# set logscale y 2
#set style data histogram
#set style histogram clustered

plot "~/thesis/figures/data/erpc_t56.txt" u 1:4 with linespoint dashtype 1 pointtype 1 title "erpc",\
	"~/thesis/figures/data/gsm_loaded_latency_k56_l150.txt" u 8:20 with linespoint dashtype 1 pointtype 2 title "gsm",\
	# "erpc/erpc_t28_b7.txt" u 1:4 with linespoint title "b7"
	