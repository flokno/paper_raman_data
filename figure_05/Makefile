PLOT_LINK = figure_05.pdf
DATA_FILE = outfile.raman_intensity_101_po.h5
PLOT_OUTPUT = plot_BZS_PO_101_total_linear.pdf
NOTEBOOK = notebook_plot_bzs_po_raman_101.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK) $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)
	ln -sf $(PLOT_OUTPUT) $(PLOT_LINK)

inputs:
	ln -sf ../data/BZS_PO_data/BZS_10K_PO_Crs_head.txt
	ln -sf ../data/BZS_PO_data/BZS_10K_PO_Crs_body.txt
	ln -sf ../data/BZS_PO_data/BZS_10K_PO_Prll_body.txt
	ln -sf ../data/BZS_PO_data/BZS_10K_PO_Prll_head.txt

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.pdf
	rm -f *.png

