DATA_FILE = data_exp_GaN_488nm_0001.xlsx
DATA_SOURCE = ../data/GaN_laser_488nm/data_exp_GaN_488nm_0001.xlsx
PLOT_OUTPUT = plot_GaN_488nm_PO_001_total_linear.pdf
PLOT_LINK = figure_01.pdf
NOTEBOOK = notebook_plot_po_raman_001.ipynb

$(PLOT_OUTPUT): $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	clean_jupyter_notebook $(NOTEBOOK)
	ln -s $(PLOT_OUTPUT) $(PLOT_LINK)

$(DATA_FILE):
	ln -s $(DATA_SOURCE) $(DATA_FILE)

clean:
	rm *.pdf
	rm *.png

