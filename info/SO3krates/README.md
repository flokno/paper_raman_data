SO3krates potential for GaN
===

## References:

​    [1] J. T. Frank, O. T. Unke, and K.-R. Müller, in *Advances in Neural Information Processing Systems* (Curran Associates, Inc., 2022), pp. 29400–29413.  

​    [2] M. F. Langer, J. T. Frank, and F. Knoop,  J. Chem. Phys. **159**, 174105 (2023).  

​    [3] J. T. Frank *et al.*, Nat. Commun. **15**, 6539 (2024).   

## Training infrastructure

https://github.com/flokno/tools.mlff

## DFT settings

- DFT
    - xc: PBE
    - kpoints: 2x2x2
    - Basis sets: intermediate defaults
    - Superzell size: 360 atoms

## Training

- Stategy:

    - Training set:
        - -1% to +3% strain in 1% steps
        - Harmonic sampling between 100K and 900K in 100K steps
        - 2-8 samples per temperature-strain point
        - **total no. of samples: 442**
    - Test set:
        - -2% to +4% stain in 0.6% steps
        - Harmonic sampling 100K to 900K in 100K steps
        - 2 samples each
        - **total no. of samples: 198**

## SO3krates settings

- SO3krates settings:

    - loss variance scaling
    - r_cut: 5 Å
    - L: 3
    - epochs: 2000
    - Relative training weights:
        - forces: 1
        - energy: 0.001
        - stress: 0.01
    - otherwise default settings

## Test errors

- **Final errors on independent test set**

    - Energy
        - R2: 1.000
        - RMSE/STD: 0.004
        - MAE: 0.129 meV/atom
        - RMSE: 0.151 meV/atom
    - Forces
        - R2: 1.000
        - RMSE/STD: 0.004
        - MAE: 2.966 meV/Å
        - RMSE: 4.075 meV/Å
    - Stress
        - R2: 1.000
        - RMSE/STD: 0.002
        - MAE: 0.064 meV/Å³
        - RMSE: 0.089 meV/Å³

    ![image](./.assets/plot_so3krates_gan_test.png)

## Full settings

```json
{
 "r_cut": 5.0,
 "L": 3,
 "epochs": 2000,
 "we": 0.001,
 "wf": 1.0,
 "ws": 0.01,
 "loss_variance_scaling": true,
 "wandb_group": "train_GaN",
 "wandb_project": "so3krates",
 "file_data": "../mlff_data.npz",
 "ckpt_dir": "module",
 "F": 132,
 "l_min": 1,
 "l_max": 3,
 "max_body_order": 2,
 "F_body_order": 1,
 "train_split": 0.8,
 "eval_every_t": null,
 "mic": true,
 "float64": false,
 "lr": 0.001,
 "lr_stop": 1e-05,
 "lr_decay_exp_transition_steps": 100000,
 "lr_decay_exp_decay_factor": 0.7,
 "clip_by_global_norm": null,
 "shift_mean": true,
 "size_batch": null,
 "size_batch_training": null,
 "size_batch_validation": null,
 "seed_model": 0,
 "seed_data": 0,
 "seed_training": 0,
 "wandb_name": null,
 "outfile_inputs": "inputs.json",
 "overwrite_module": false,
 "ace": false
}
```
