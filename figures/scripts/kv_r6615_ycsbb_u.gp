set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/kv_r6615_ycsbb_u.pdf"
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
plot "~/thesis/figures/data/hydra_r6615_ycsbb_u.txt" u 2:8 with linespoint dashtype 1 pointtype 1 title "Hydra server sharded",\
	"~/thesis/figures/data/trust_r6615_ycsbb_u.txt" u 2:8 with linespoint dashtype 1 pointtype 2 title "Trust client sharded",\
	"~/thesis/figures/data/rwlock_r6615_ycsbb_u.txt" u 2:8 with linespoint dashtype 1 pointtype 6 title "Rwlock client sharded",\
	"~/thesis/figures/data/dashmap_r6615_ycsbb_u.txt" u 2:8 with linespoint dashtype 1 pointtype 5 title "Dashmap client sharded",\
	"~/thesis/figures/data/redis_r6615_ycsbb_u.txt" u 2:8 with linespoint dashtype 1 pointtype 4 title "Redis",\
	"~/thesis/figures/data/redis_r6615_ycsbb_u.txt" u 2:($8*8.8) with lines dashtype 2 title "Redis hypothetical",\
	# "nopt.txt" u ($2*$4):6 with linespoint title "quadratic number of QPs",\
	# "erpc/erpc_t28_b7.txt" u 1:4 with linespoint title "b7"
	