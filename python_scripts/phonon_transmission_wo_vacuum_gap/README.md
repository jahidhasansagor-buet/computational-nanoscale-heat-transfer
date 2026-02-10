# Phonon transmission via Atomistic Green’s Function (AGF) without vacuum gap — Heterogeneous atomic chain

This repository reproduces the **heterogeneous 1D atomic-chain** results (phonon transmission and thermal conductance)
using the **Atomistic Green’s Function (AGF)** method, and validates the implementation against published results by
overlaying digitized reference data.

## Reference (paper)
Zhang, W., Fisher, T.S. and Mingo, N., 2007. *The atomistic Green's function method: An efficient simulation approach for nanoscale phonon transport.Numerical Heat Transfer, Part B: Fundamentals, 51(4), pp. 333–349.

## Reproduced results
This code reproduces the following figures from the reference paper:

- **Fig. 5:** Phonon transmission
- **Fig. 7:** Thermal conductance 

The notebook generates a combined figure:
- `heterogeneous_conductance_and_transmission.png`

## Validation data (digitized from the paper)
The following files contain digitized data points extracted from the paper and are used **only for validation**

- `transmission_heterogeneous.txt` → reference points for **Fig. 5**
- `conductance_heterogeneous.txt`  → reference points for **Fig. 7**
## Repository contents
- `phonon_AGF_wo_vacuumgap.ipynb`  
  Main notebook that:
  1) computes transmission \( \mathcal{T}(\omega) \) on a frequency grid  
  2) computes conductance \( G_{\mathrm{th}}(T) \) via frequency integration  
  3) overlays digitized reference points for validation  
  4) saves the output figure as PNG

## Requirements
- Python 3.x
- `numpy`
- `scipy`
- `matplotlib`


