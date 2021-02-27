#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -o logs/getmtx.out
#SBATCH -e logs/getmtx.err
#SBATCH --job-name getmtx

ml load r/3.6.2-foss-2018b
scATAC-pro -s get_mtx -i output/preprocess_bin2kb/merged_peaks.bed \
	   -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt
