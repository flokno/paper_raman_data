DATA_FILE = data_peaks.csv
PLOT_OUTPUT = plot_lineshifts_and_linewidths_1010.pdf
PLOT_LINK = figure_04.pdf
NOTEBOOK = notebook_plot_temperature_dependence.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK) $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -sf $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/GaN_laser_532nm/data_voigt_fit_all_temperatures_most_prominent_1010.csv

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

