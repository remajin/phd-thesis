set  terminal "pdfcairo" enhanced size 6,4 mono
set out "~/thesis/figures/plots/echo_tput_r6615.pdf"
set xlabel "number of threads"
set ylabel "throughput (MOPs)" enhanced
set key horizontal outside
set yrange [0:*]
set xrange [0:*]
# set logscale xy 2
#set style data histogram
#set style histogram clustered


plot "~/thesis/figures/data/erpc_throughput_r6615.txt" u 2:4 with linespoint dashtype 1 pointtype 1 title "erpc",\
	"~/thesis/figures/data/mpi_echo.txt" u 2:4 with linespoint dashtype 1 pointtype 2 title "mpi",\
	"~/thesis/figures/data/gsm_echo.txt" u 2:8 with linespoint dashtype 1 pointtype 3 title "gsm"
	# "m3.txt" u 3:2 with linespoint title "m3",\
	# "m4.txt" u 3:2 with linespoint title "m4",\
	