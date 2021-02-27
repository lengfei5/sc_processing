#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=32G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH -o logs/getmtx.out
#SBATCH -e logs/getmtx.err

ml load singularity/3.4.1
singularity exec -H /scratch/jiwang/scATAC_test_medium_c --cleanenv /groups/cochella/jiwang/scripts/scATAC_pro/scatac-pro_latest.sif scATAC-pro -s call_cell -i /scratch/jiwang/scATAC_test_medium_c/output/raw_matrix/MACS2/matrix.mtx -c configure_user.txt
