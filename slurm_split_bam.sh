#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH -o logs/split_bam.out
#SBATCH -e logs/split_bam.err
#SBATCH --job-name split_bam

mkdir -p logs

ml load python/3.6.6-foss-2018b
scATAC-pro -s split_bam -i output/filtered_matrix_peaks_barcodes/barcodes_and_clusters.txt \
	   -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt
