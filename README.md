Raman from first principles
===

[![DOI](https://zenodo.org/badge/900659851.svg)](https://doi.org/10.5281/zenodo.14514883)

Repository with data, figures, and supplemental information for the work

```
@unpublished{Knoop.2025,
  author = {Knoop, Florian},
  title  = "Ab initio theory of the non-resonant Raman effect in crystals in comparison to experiment: The examples of GaN and BaZrS3",
  year   = 2025,
  note   = "in preparation"
}
```

## Figures

- [Fig. 1: PO Raman for GaN 0001](./figure_01/README.md)
- [Fig. 2: PO Raman for GaN 10-10](./figure_02/README.md)
- [Fig. 3: Phonon frequencies and linewidths for GaN 0001](./figure_03/README.md)
- [Fig. 4: Phonon frequencies and linewidths for GaN 10-10](./figure_04/README.md)
- [Fig. 5: PO Raman for BZS](./figure_05/README.md)
- [Fig. 6: Unpolarized Raman for BZS at 300K](./figure_06/README.md)
- [Fig. 7: 2nd order estimates for BZS](./figure_07/README.md)
- [Fig. 8: Comparison 2PDOS vs. cDOS](./figure_08/README.md)

## Computational details

- [SO3krates ML potential for GaN](./info/SO3krates/README.md)

## Supplemental information

- [Convergence of susceptibility derivatives with supercell size](./supplement/convergence_supercell/README.md)
- [Raman activity vs. xc functional and basisset convergence](./supplement/convergence_xc_and_basisset/README.md)

## How to run

Plots were created with python3.12 in a `venv` with the dependencies listed in `requirements.txt`

```bash
python3 -m venv venv
source activate venv/bin/activate

pip install -r requirements.txt
```

Then each plot can be created by running `make` in the respective folder.
