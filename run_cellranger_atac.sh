#!/usr/bin/bash

#SBATCH --export=ALL	
#SBATCH --qos=medium
#SBATCH --time=2-00:00:00
#SBATCH --partition=c
#SBATCH --mem=120G
#SBATCH --ntasks=1 --cpus-per-task=30

#SBATCH -o logs/cellranger_counts.out
#SBATCH -e logs/cellranger_counts.err
#SBATCH --job-name cellranger

module load cellranger-atac/1.2.0
cellranger-atac count --id=cellranger_atac --fastqs=/groups/cochella/jiwang/Projects/Aleks/R8898_scATAC/HWGWFBGXC_all --sample=105731 --reference=/groups/cochella/jiwang/Genomes/C_elegans/ce11/ce11_cellrangerATAC/ce11_10xatac --jobmode=local --localcores=30 --localmem=100

