plot_GaN_488nm_PO_001_total_linear.pdf: data_exp_GaN_488nm_0001.xlsx
	jupyter nbconvert --inplace --execute notebook_plot_po_raman_001.ipynb
	clean_jupyter_notebook notebook_plot_po_raman_001.ipynb
	ln -s plot_GaN_488nm_PO_001_total_linear.pdf figure_01.pdf

data_exp_GaN_488nm_0001.xlsx:
	ln -s ../data/GaN_laser_488nm/data_exp_GaN_488nm_0001.xlsx

clean:
	rm *.pdf
	rm *.png
