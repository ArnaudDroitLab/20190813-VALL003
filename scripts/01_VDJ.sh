#!/bin/bash

module load CellRanger/3.1.0

base_path=/mnt/genomique/Analyses/20190813-VALL003

mkdir -p results

for i in {1..4}; do
    cellranger vdj --id=${i}_VDJ \
        --reference=${base_path}/ref/refdata-cellranger-vdj-GRCm38-alts-ensembl-3.1.0 \
        --fastqs=${base_path}/raw_data/vdj \
        --sample=${i}_VDJ
    mv ${i}_VDJ results/
done
