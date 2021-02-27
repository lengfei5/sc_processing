#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=medium
#SBATCH --time=16:00:00
#SBATCH --partition=c
#SBATCH --mem=80G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH -o logs/trimming.out
#SBATCH -e logs/trimming.err
#SBATCH --job-name trimming

mkdir -p logs

scATAC-pro -s trimming -i output/demplxed_fastq/demplxed_105731_S1_L001_R1_001.fastq,output/demplxed_fastq/demplxed_105731_S1_L001_R3_001.fastq -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt

