PLOT_OUTPUT = plot_gan_2pdos.png
NOTEBOOK = notebook_gan_2pdos.ipynb

$(PLOT_OUTPUT): $(NOTEBOOK) $(DATA_FILE)
	jupyter nbconvert --inplace --execute $(NOTEBOOK)

tidy: $(NOTEBOOK) $(PLOT_OUTPUT)
	clean_jupyter_notebook $(NOTEBOOK)

clean:
	rm -f *.png

