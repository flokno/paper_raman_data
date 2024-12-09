PLOT_LINK = figure_07.pdf
DATA_FILE = BaZrS3_Raman_785nm_Norm.txt
PLOT_OUTPUT = plot_bzs_pdos.pdf
NOTEBOOK = notebook_plot_bzs_2pdos.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK) $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -sf $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/BZS_temperature/BaZrS3_Raman_785nm_Norm.txt
	ln -sf ../data/BZS_tdep/outfile.2pdos.csv
	ln -sf ../data/BZS_tdep/outfile.phonon_dos_convolutions.csv

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

allclean: clean
	rm -f BaZrS3_Raman_785nm_Norm.txt
	rm -f outfile.phonon_dos_convolutions.csv
