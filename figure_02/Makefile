DATA_FILE = data_exp_GaN_488nm_1010.xlsx
DATA_SOURCE = ../data/GaN_laser_488nm/data_exp_GaN_488nm_1010.xlsx
PLOT_OUTPUT = plot_GaN_488nm_PO_101_total_linear.pdf
PLOT_LINK = figure_02.pdf
NOTEBOOK = notebook_plot_po_raman_101.ipynb

$(PLOT_OUTPUT): $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -s $(PLOT_OUTPUT) $(PLOT_LINK)

inputs: $(DATA_FILE)

tidy: $(NOTEBOOK)
	clean_jupyter_notebook $(NOTEBOOK)

$(DATA_FILE):
	ln -s $(DATA_SOURCE) $(DATA_FILE)

clean:
	rm -f *.pdf
	rm -f *.png
	rm -f *.csv

