extensions_to_clean := out aux log bbl blg fls fdb_latexmk glg gls lof glo glsdefs lot toc dvi ist acn acr synctex.gz alg xdy

all: plots thesis

PLOTS = echo_loaded_latency echo_tput_r6615  kv_r6615_ycsbc_u kv_r6615_ycsbc_z\
	sssp_threads_n26_r6615 sssp_threads_n27_r6615 sssp_size_r6615 kv_r6615_ycsbb_u kv_r6615_ycsbb_z \
	qp_scaling_6m_r6615 echo_tput_reqsize_r6615
	
SCRIPTS_DIR = figures/scripts

clean:
	@if [ -f thesis.pdf ]; then \
		rm thesis.pdf;\
	fi;
	@for extension in $(extensions_to_clean); do \
		find . -type f -name "*.$$extension" -delete;\
	done;
	@if [ -f thesis.epub ]; then \
		rm thesis.epub;\
	fi;

plots:
	@for p in $(PLOTS); do \
		gnuplot < $(SCRIPTS_DIR)/$$p.gp; \
	done

thesis: plots
	latexmk -bibtex -pdf thesis
	pdflatex -bibtex thesis

epub:
	latexmlc -dest=thesis.epub thesis.tex
	ebook-meta thesis.epub --authors "Noaman Ahmad"