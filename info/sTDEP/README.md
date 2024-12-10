sTDEP for GaN and BZS
===

## References:

​    [1] D. West and S. K. Estreicher, Phys Rev Lett **96**, 115504 (2006).  

​    [2] N. Shulumba, O. Hellman, and A. J. Minnich, Phys. Rev. Lett. **119**, 185901 (2017).  

​    [3] N. Benshalom *et al.*, Phys Rev Mater **6**, 033607 (2022).  

​    [4] A. Castellano, J. P. A. Batista, and M. J. Verstraete,  J. Chem. Phys. **159**, 234501 (2023). 

## General considerations

- sTDEP sampling at 0K with zero point motion
- temperature normalization of force constants neglected
- lattice expansion neglected

## GaN

- Potential: SO3krates PBE@intermediate potential as described [here](../SO3krates/README.md)
- Primitive cell:
    - 4 atoms
    - Space group P6_3mc (186)
- Supercell: 
    - near-cubic superzell with 360 atoms
    - largest possible cutoff: 7.873 Å
- 10 sTDEP iterations with geometric series up to 1536 samples
- RC2: 7.873 Å
- RC3: 4.5 Å

## BZS

- xc: am05
- light default basis
- 2x2x2 kpoints → 6.587  Å^-1 kpoint density
- Primitive cell
    - space group Pnma (62)
    - 20 atoms
- Supercell
    - 3x2x3 superzell (360 atoms)
    - largest possible cutoff: 9.951 Å
- 8 sTDEP iterations with geometric series up to 768 samples
    - RC2: 8 Å
    - RC3: 4 Å
