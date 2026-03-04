#!/bin/bash
# FILENAME: gr.slurm
#SBATCH -A MCH240098          # Allocation name	
#SBATCH --nodes=2             # Total # of nodes 
#SBATCH --ntasks=256          # Total # of MPI tasks
#SBATCH --time=4-00:00:00     # Total run time limit (dd-hh:mm:ss)
#SBATCH -J 300K_grall         # Job name
#SBATCH -o myjob.txt          # Name of stdout output file
#SBATCH -e myjob.txt          # Name of stderr error file
#SBATCH -p wholenode             # Queue (partition) name
#SBATCH --mail-user=md.sagor@maine.edu 
#SBATCH --mail-type=all       # Send email to above address at begin and end of job

ulimit -l unlimited
module load gcc/11.2.0 openmpi/4.1.6

export PATH=/anvil/projects/x-mch240098/software_installation/qe-7.4.1/bin:$PATH

echo 'Bismillah, scf is running'
#srun pw.x < gr.scf.in > gr.scf.out
srun pw.x < gr.nscf.in > gr.nscf.out
echo 'Alhamdulillah, scf done, bands nscf is running'
#srun pw.x < gr.bands.in > gr.bands.out

echo 'Alhamdulillah, nscf done, bands.x is running'
#srun bands.x < bands.in > bands.out

echo 'Alhamdulillah, all done'
