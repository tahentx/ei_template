#!/bin/bash

num=1000
outdir=NCAI-MDM1000_200

python submit_jobs.py -state AZ -num_tunes $num -num_draws $num -outdir $outdir 
python submit_jobs.py -state NV -num_tunes $num -num_draws $num -outdir $outdir
python submit_jobs.py -state WI -num_tunes $num -num_draws $num -outdir $outdir
python submit_jobs.py -state GA -num_tunes $num -num_draws $num -outdir $outdir
