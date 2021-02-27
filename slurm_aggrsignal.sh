#!/usr/bin/bash

#SBATCH --export=ALL
#SBATCH --qos=short
#SBATCH --time=08:00:00
#SBATCH --partition=c
#SBATCH --mem=64G
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH -o logs/aggrsignal.out
#SBATCH -e logs/aggrsignal.err
#SBATCH --job-name aggr_signal

mkdir -p logs
scATAC-pro -s aggr_signal -i output/mapping_result/pbmc10k.positionsort.MAPQ30.bam -c /groups/cochella/jiwang/scripts/scATAC_pro/scATAC-pro_1.1.0/configure_user.txt
