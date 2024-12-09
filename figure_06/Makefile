PLOT_LINK = figure_06.pdf
DATA_FILE = outfile.raman_intensity_101.csv
PLOT_OUTPUT = plot_bzs_300K_unpolarized.pdf
NOTEBOOK = notebook_plot_bzs_300K.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK) $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -sf $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/BZS_tdep/outfile.phonon_dos_convolutions.csv
	ln -sf ../data/BZS_temperature/BaZrS3_Raman_785nm_Norm.txt

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

allclean: clean
	rm -f BaZrS3_Raman_785nm_Norm.txt
	rm -f outfile.phonon_dos_convolutions.csv
