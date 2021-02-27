#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=128G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH -o logs/mapping.out
#SBATCH -e logs/mapping.err
#SBATCH --job-name mapping

mkdir -p logs

ml load bowtie2/2.3.4.2-foss-2018b
scATAC-pro -s mapping -i output/trimmed_fastq/demplxed_105731_S1_L001_R1_001_val_1.fq.gz,output/trimmed_fastq/demplxed_105731_S1_L001_R3_001_val_2.fq.gz -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt

