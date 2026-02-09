\# Phonon transmission validation (AGF) — heterogeneous 1D chain (no vacuum gap)



Notebook-based validation of a 1D heterogeneous mass–spring chain using Atomistic Green’s Functions (AGF).

It reproduces transmission T(ω) and thermal conductance G(T) and overlays reference data.



\## Files

\- `phonon\_AGF\_wo\_vacuumgap.ipynb` — main notebook (runs the calculation and produces the plot)

\- `transmission\_heterogeneous.txt` — reference data: ω (rad/s), T(ω)

\- `conductance\_heterogeneous.txt` — reference data: T (K), G(T) (W/K)

\- `heterogeneous\_conductance\_and\_transmission.png` — comparison figure



\## Run

Install dependencies:

```bash

pip install numpy scipy matplotlib



