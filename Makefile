extensions_to_clean := out aux log bbl blg fls fdb_latexmk glg gls lof glo glsdefs lot toc dvi ist acn acr synctex.gz alg xdy

all: plots thesis

PLOTS = erpc_vs_gsm_loaded_latency_t28 erpc_vs_gsm_loaded_latency_t56 erpc_throughput_vs_latency_batch_size \
	hydra_redis_quads g500_vs_gsm_n26_time_xl170 g500_vs_gsm_size_time_xl170_t160 g500_vs_gsm_size_time_cst_quads_t112 \
	hydra_r6515 qp_scaling_6m_r6515 qp_scaling_5m_r6515
	
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
