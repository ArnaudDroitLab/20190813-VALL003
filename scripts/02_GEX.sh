#!/bin/bash

module load CellRanger/3.0.0

base_path=/mnt/genomique/Analyses/20190813-VALL003

mkdir -p results

for i in {1..4}; do
    cellranger count --id=${i}_GEX \
        --transcriptome=${base_path}/ref/refdata-cellranger-mm10-3.0.0 \
        --fastqs=${base_path}/raw_data/gex \
        --sample=${base_path}/results/${i}_GEX \
        --expect-cells=6000
    mv ${i}_GEX results/

    echo cellranger count --id=c${i}_GEX \
        --transcriptome=${base_path}/ref/refdata-cellranger-mm10-3.0.0 \
        --fastqs=${base_path}/raw_data/gex \
        --sample=${base_path}/results/c${i}_GEX \
        --expect-cells=6000
    mv c${i}_GEX results/
done
