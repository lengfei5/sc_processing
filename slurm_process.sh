#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=medium
#SBATCH --time=2-00:00:00
#SBATCH --partition=c
#SBATCH --mem=128G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH -o logs/process.out
#SBATCH -e logs/process.err
#SBATCH --job-name scATAC_process

mkdir -p logs

ml load python/3.6.6-foss-2018b
ml load bowtie2/2.3.4.2-foss-2018b
ml load r/3.6.2-foss-2018b

scATAC-pro -s process -i /scratch/jiwang/scATAC_pro_test/ngs_raw/105731_S1_L001_R1_001.fastq,/scratch/jiwang/scATAC_pro_test/ngs_raw/105731_S1_L001_R3_001.fastq,/scratch/jiwang/scATAC_pro_test/ngs_raw/105731_S1_L001_R2_001.fastq -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt

