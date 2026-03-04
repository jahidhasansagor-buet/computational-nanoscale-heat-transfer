# Graphene Band Structure (Quantum ESPRESSO + Python)

This repository contains **Quantum ESPRESSO (QE)** input/output files and **Python Jupyter notebooks** to generate:

- **Electronic band structure (E–k plot)**
- **Surface band structure** (E vs \(k_x, k_y\) surface plot)
- **Projected surface band structure**

---

## Repository Structure

- `gr_QE_input_output/`  
  QE input files (`*.in`), SLURM scripts (`*.slurm`), pseudopotential (`*.UPF`), and output files (`*.out`).

- `python_scripts_band_structure_plot/`  
  Jupyter notebooks (`*.ipynb`) for plotting and post-processing.

---

## 1) Electronic Band Structure

### QE Inputs
Inside `gr_QE_input_output/` you will find:
- `gr.scf.in`
- `gr.bands.in`
- `bands.in`

### Run (QE)
Check `gr.slurm` for the full job setup. Core commands:

```bash
srun pw.x < gr.scf.in   > gr.scf.out
srun pw.x < gr.bands.in > gr.bands.out
srun bands.x < bands.in > bands.out
```

### Outputs
After successful runs, you should get:
- `gr.bands`
- `gr.bands.gnu`

These are used for band structure plotting.

### Plotting (Python)
Notebook location:
- `python_scripts_band_structure_plot/gr_band_structure.ipynb`

Run the notebook to plot the electronic band structure.

---

## 2) Surface Band Structure

### QE Input
Inside `gr_QE_input_output/` you will find:
- `gr.nscf.in`

### Run (QE)
Check `grv1.slurm` for the full job setup. Core command:

```bash
srun pw.x < gr.nscf.in > gr.nscf.out
```

### Output
- `gr.nscf.out`

This output is used for extracting k-points and band energies for surface plotting.

### Plotting (Python)
Notebook location:
- `python_scripts_band_structure_plot/gr_surface_band_structure.ipynb`

Run the notebook to generate the surface band structure plot.

---

## 3) Projected Surface Band Structure

### Plotting (Python)
Notebook location:
- `python_scripts_band_structure_plot/gr_band_structure_projected.ipynb`

Run this notebook to generate the **projected surface band structure**.

---

## Notes

- The commands above use `srun` for SLURM/HPC systems. If running locally, you can typically remove `srun` and run:
  ```bash
  pw.x < gr.scf.in > gr.scf.out
  ```
- Ensure Quantum ESPRESSO executables (`pw.x`, `bands.x`) are available in your environment/module setup.
