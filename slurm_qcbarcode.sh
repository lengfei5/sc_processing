#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=20G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH -o logs/getmtx.out
#SBATCH -e logs/getmtx.err

mkdir -p logs
ml load bioinfo.grp/r/3.6.1_Bioc3.9_rstudio1.2.5001_lib20190930
scATAC-pro -s qc_per_barcode -i output/summary/pbmc10k.fragments.txt,output/peaks/MACS2/pbmc10k_peaks.bed -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt
