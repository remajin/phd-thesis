set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/qp_scaling_5m_r6615.pdf"
set ylabel "throughput (MOPs)" enhanced
set xlabel "number of threads"
set key horizontal outside
set yrange [0:*]
set xrange [0:*]
# set logscale y 2
#set style data histogram
#set style histogram clustered

# a = 0
# cdf(x) = (a = (x+a),a/500)
plot "~/thesis/figures/data/qp_red_5m.txt" u ($2*$4):6 with linespoint dashtype 1 pointtype 1 title "reduced number of QPs",\
	"~/thesis/figures/data/qp_nopt_5m.txt" u ($2*$4):6 with linespoint dashtype 1 pointtype 2 title "quadratic number of QPs",\
	# "erpc/erpc_t28_b7.txt" u 1:4 with linespoint title "b7"
	