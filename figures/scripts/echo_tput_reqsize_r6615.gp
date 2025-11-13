set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/echo_tput_reqsize_r6615.pdf"
set xlabel "Request size in bytes"
set ylabel "throughput (MOPs)" enhanced
set key horizontal outside
# set yrange [0:500]
# set xrange [0:*]
set logscale xy 2
#set style data histogram
#set style histogram clustered


plot "~/thesis/figures/data/erpc_reqsize.txt" u 6:4 with linespoint dashtype 1 pointtype 2 title "erpc",\
	"~/thesis/figures/data/echo_mpi_reqsize.txt" u 6:4 with linespoint dashtype 1 pointtype 4 title "mpi",\
	"~/thesis/figures/data/echo_gsm_reqsize.txt" u 10:8 with linespoint dashtype 1 pointtype 6 title "gsm"
	# "m3.txt" u 3:2 with linespoint title "m3",\
	# "m4.txt" u 3:2 with linespoint title "m4",\
	