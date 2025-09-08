set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/hydra_r6515.pdf"
set ylabel "throughput (MOPs)" enhanced
set xlabel "number of machines"
set key horizontal outside
set yrange [0:*]
set xrange [0:*]
# set logscale y 2
#set style data histogram
#set style histogram clustered

# a = 0
# cdf(x) = (a = (x+a),a/500)
plot "~/thesis/figures/data/hydra_r6515.txt" u 2:8 with linespoint dashtype 1 pointtype 1 notitle,\
	# "nopt.txt" u ($2*$4):6 with linespoint title "quadratic number of QPs",\
	# "erpc/erpc_t28_b7.txt" u 1:4 with linespoint title "b7"
	