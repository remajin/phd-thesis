set  terminal "pdfcairo" enhanced size 6,4
set out "~/thesis/figures/plots/erpc_throughput_vs_latency_batch_size.pdf"
set xlabel "throughput (MOPs)" enhanced
set ylabel "latency (us)"
set key horizontal outside
set yrange [0:400]
set xrange [:*]
set monochrome
# set dashtype 1
# set logscale y 2
#set style data histogram
#set style histogram clustered

plot "~/thesis/figures/data/erpc_t28_b3.txt" u 1:4 with linespoint dashtype 1 pointtype 1 title "b3",\
	"~/thesis/figures/data/erpc_t28_b5.txt" u 1:4 with linespoint dashtype 1 pointtype 2 title "b5",\
	"~/thesis/figures/data/erpc_t28_b7.txt" u 1:4 with linespoint dashtype 1 pointtype 3 title "b7",\
	