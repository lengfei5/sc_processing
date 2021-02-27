mkdir-p  ngs_raw

# unzip the fastq.gz files
cd ngs_raw
gunzip *.gz

# demultiplex step
sbatch slurm_demplex.sh

# tirmming
sbatch slurm_trimming.sh

# mapping

# peak calling

# aggr signals and make bigwig files

# get_mtx

