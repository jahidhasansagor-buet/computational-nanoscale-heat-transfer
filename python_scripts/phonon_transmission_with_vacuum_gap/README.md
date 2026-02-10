# Acoustic-phonon transport across a vacuum gap (AGF)

This repository reproduces **Fig. 5** from the paper *“Role of acoustic phonon transport in near- to asperity-contact heat transfer”* using an **Atomistic Green’s Function (AGF)** workflow for **acoustic phonon transmission across a vacuum gap** between two solids.

The model treats the two sides as **separate harmonic lattices** and introduces a **gap-dependent coupling** across the vacuum region (i.e., no direct bonded interface). 
The notebook regenerates the **spectral phonon transmission** used in Fig. 5 and overlays digitized reference points for validation.

## Reference:
Jarzembski, A., Tokunaga, T., Crossley, J., Yun, J., Shaskey, C., Murdick, R.A., Park, I., Francoeur, M. and Park, K., 2022.
Role of acoustic phonon transport in near-to asperity-contact heat transfer. Physical Review B, 106(20), p.205418.

## Reproduced result

This code reproduces:

- **Fig. 5:** Transmission spectra for multiple **vacuum-gap separations**.

The “present model” curves are generated for the following separations:

- **1.5 nm**
- **2.5 nm**
- **3.5 nm**
- **4.5 nm**

## Validation data (digitized from the paper)

Digitized reference points (used only for overlay/verification) are provided as:
- `1.5nm.txt`
- `2.5nm.txt`
- `3.5nm.txt`
- `4.5nm.txt`

Each file contains **two columns**:

1. Frequency (Hz)
2. Transmission

> Recommended: keep digitized data in a dedicated folder like `validation_data/` to separate it from generated outputs.

## Repository contents
- `phonon_AGF_with_vacuumgap.ipynb`  
  Main notebook that:
  - builds left/right harmonic dynamical matrices (device region),
  - applies **gap-dependent coupling** across the vacuum gap,
  - computes transmission over a frequency grid,
  - overlays digitized points for **1.5, 2.5, 3.5, 4.5 nm**,

## How to run
1. Clone the repo and open the notebook:
   - `phonon_AGF_with_vacuumgap.ipynb`
2. Install requirements.
3. Run all cells. The notebook will:
   - regenerate the transmission curves for **1.5–4.5 nm**,
   - overlay the digitized reference points,

## Key editable parameters
- gap/separation list (currently **1.5, 2.5, 3.5, 4.5 nm**)
- frequency grid resolution
- material parameters
- damping parameter used in surface Green’s function decimation

## Requirements
- Python 3.x
- numpy
- scipy
- matplotlib
- pandas *(optional; only needed if you export tables or read CSVs)*
