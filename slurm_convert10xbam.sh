#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH -o logs/bamconvert.out
#SBATCH -e logs/bamconvert.err
#SBATCH --job-name convert10xbam

mkdir -p logs

scATAC-pro -s convert10xbam -i /groups/cochella/jiwang/Projects/Aleks/R8898_scATAC/cellranger_atac_ce11/outs/possorted_bam.bam \
	   -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt \
	   -o output
