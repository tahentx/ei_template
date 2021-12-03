#!/bin/bash
#SBATCH --job-name=PRES20
#SBATCH --time=7-00:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=16000
#SBATCH -o NCAI-MDM1000_200/GA/diagnostics/GA_PRES20_AMINVAP.txt
#SBATCH -e NCAI-MDM1000_200/GA/diagnostics/GA_PRES20_AMINVAP.txt

python ei.py -state GA -elec PRES20 -g AMINVAP -num_tunes 1000 -num_draws 1000 -outdir NCAI-MDM1000_200 
python viz.py -state GA -elec PRES20 -g AMINVAP -outdir NCAI-MDM1000_200 
python summary.py -state GA -elec PRES20 -g AMINVAP -outdir NCAI-MDM1000_200 
