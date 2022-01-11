#!/bin/bash
#PBS -q parallel24
#PBS -l select=1:ncpus=24:mem=180GB
#PBS -l walltime=500:00:00
#PBS -j oe

cd $PBS_O_WORKDIR
source /etc/profile.d/rec_modules.sh
module load jre/1.8.0_162
module load singularity

cd /hpctmp/<NUSID>/<PROJECT ID>/
/hpctmp/<NUSID>/<PROJECT ID>/nextflow run nf-core/eager -r 2.4.1 -name <RUN NAME> -profile singularity -params-file nf-params.json


