#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=6
#SBATCH -o logs/demplx.out
#SBATCH -e logs/demplx.err
#SBATCH --job-name demplx

mkdir -p logs

scATAC-pro -s demplx_fastq -i ngs_raw/105731_S1_L001_R1_001.fastq,ngs_raw/105731_S1_L001_R3_001.fastq,ngs_raw/105731_S1_L001_R2_001.fastq -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt

