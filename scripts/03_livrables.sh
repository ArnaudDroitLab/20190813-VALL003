#!/bin/bash

mkdir -p livrables

sample_names_vdj=$(echo {1,2,3,4}_VDJ)
sample_names_gex=$(echo c{1,2,3,4}_GEX)

mkdir -p livrables
for sample_name in ${sample_names_vdj} ${sample_names_gex}; do
    mkdir -p livrables/${sample_names}
    cp results/${sample_name}/outs/metrics_summary.csv livrables/${sample_name}_metrics_summary.csv
    cp results/${sample_name}/outs/web_summary.html livrables/${sample_name}_web_summary.html
done

for sample_name in ${sample_names_vdj}; do
    cp results/${sample_name}/outs/vloupe.vloupe livrables/${sample_name}_vloupe.vloupe
done

for sample_name in ${sample_names_gex}; do
    cp results/${sample_name}/outs/cloupe.cloupe livrables/${sample_name}_cloupe.cloupe
done
