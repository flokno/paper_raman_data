Raman from first principles
===

Repository with data and figures

## Figures

- [Fig. 1: PO Raman for GaN 0001](./figure_01/README.md)
- [Fig. 2: PO Raman for GaN 10-10](./figure_02/README.md)
- [Fig. 3: Phonon frequencies and linewidths for GaN 0001](./figure_03/README.md)
- [Fig. 4: Phonon frequencies and linewidths for GaN 10-10](./figure_04/README.md)
- [Fig. 5: PO Raman for BZS](./figure_05/README.md)
- [Fig. 6: Unpolarized Raman for BZS at 300K](./figure_06/README.md)
- [Fig. 7: 2nd order estimates for BZS](./figure_07/README.md)
- [Fig. 8: Comparison 2PDOS vs. cDOS](./figure_08/README.md)

## How to run

Plots were created with python3.12 in a `venv` with the dependencies listed in `requirements.txt`

```bash
python3 -m venv venv
source activate venv/bin/activate

pip install -r requirements.txt
```

Then each plot can be created by running `make` in the respective folder.

## Computational details

- [SO3krates ML potential for GaN](./info/SO3krates/README.md)

