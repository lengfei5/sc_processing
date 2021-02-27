#qlogin
#ml load cellranger-atac/1.2.0
#id=105731
#folder_fastq=/groups/cochella/jiwang/Projects/Aleks/R8898_scATAC/HWGWFBGXC_all/HWGWFBGXC/105731
#sample=105731
#genome=/groups/cochella/jiwang/Genomes/C_elegans/ce11/ce11_10xatac
#cellranger-atac count --id=$id --reference=$genome --fastqs=$folder_fastq --sample=$sample

~/scripts/atac_seq/cellRanger_atac_count.sh -o res_counts -f /groups/cochella/jiwang/Projects/Aleks/R8898_scATAC/HWGWFBGXC_all -s 105731 -r /groups/vbcf-ngs/misc/genomes/worm/c_elegans/cellranger_atac_WBcel235/wbcel235
