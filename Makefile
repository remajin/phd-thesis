extensions_to_clean := out aux log bbl blg fls fdb_latexmk glg gls lof glo glsdefs lot toc dvi ist acn acr synctex.gz alg xdy

all: plots thesis

PLOTS = erpc_vs_gsm_loaded_latency_t28 erpc_vs_gsm_loaded_latency_t56 echo_tput_r6615 \
	sssp_threads_n26_r6615 sssp_threads_n27_r6615 sssp_size_r6615 kv_r6615_ycsbc kv_r6615_ycsbd \
	qp_scaling_6m_r6615 qp_scaling_5m_r6615
	
SCRIPTS_DIR = figures/scripts

clean:
	@if [ -f thesis.pdf ]; then \
		rm thesis.pdf;\
	fi;
	@for extension in $(extensions_to_clean); do \
		find . -type f -name "*.$$extension" -delete;\
	done;

plots:
	@for p in $(PLOTS); do \
		gnuplot < $(SCRIPTS_DIR)/$$p.gp; \
	done

thesis: plots
	latexmk -bibtex -pdf thesis
	makeglossaries thesis
	pdflatex -bibtex thesis
