#!/bin/bash

mkdir -p livrables

sample_names_vdj=$(echo {1,2,3,4}_VDJ)
sample_names_gex=$(echo {,c}{1,2,3,4}_GEX)

mkdir -p livrables
for sample_name in ${sample_names_vdj} ${sample_names_gex}; do
    echo ${sample_name}
    mkdir -p livrables/${sample_name}
    cp results/${sample_name}/outs/metrics_summary.csv livrables/${sample_name}/
    cp results/${sample_name}/outs/web_summary.html livrables/${sample_name}/
    cp results/${sample_name}/outs/?loupe.?loupe livrables/${sample_name}/
done
