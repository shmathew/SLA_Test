#!/bin/bash

qu_start_time=$(date +%T)
squ_start_time=$(date +%s)
sleep 15
qu_end_time=$(date +%T)
squ_end_time=$(date +%s)

echo "qu_start_time=$qu_start_time" >> sla_output.txt
echo "qu_end_time=$qu_end_time" >> sla_output.txt

DIFFS=$((( $squ_end_time - $squ_start_time)%60))
DIFFM=$((( $squ_end_time - $squ_start_time)/60))


echo "It took $DIFFM minutes and $DIFFS seconds"