PLOT_LINK = figure_08.pdf
PLOT_OUTPUT = plot_bzs_pdos_vs_cdos.pdf
NOTEBOOK = notebook_plot_bzs_cdos.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -sf $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/BZS_tdep/outfile.2pdos.csv
	ln -sf ../data/BZS_tdep/outfile.phonon_dos_convolutions.csv

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

allclean: clean
	rm -f outfile.2pdos.csv
	rm -f outfile.phonon_dos_convolutions.csv
