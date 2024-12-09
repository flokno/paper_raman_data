DATA_FILE = data_peaks.csv
PLOT_OUTPUT = plot_lineshifts_and_linewidths_0001.pdf
PLOT_LINK = figure_03.pdf
NOTEBOOK = notebook_plot_temperature_dependence.ipynb

$(PLOT_OUTPUT): $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -s $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/GaN_laser_532nm/data_GaN_temperature_data_0001_cleaned_peak_144_fits.csv
	ln -sf ../data/GaN_laser_532nm/data_GaN_temperature_data_0001_cleaned_peak_570_fits.csv
	ln -sf ../data/GaN_laser_532nm/data_GaN_temperature_data_0001_cleaned_peak_735_fits.csv

tidy: $(NOTEBOOK)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

