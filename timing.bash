#!/bin/bash

rs_start_time=$(date +%T)
srs_start_time=$(date +%s)
sleep 15
rs_end_time=$(date +%T)
srs_end_time=$(date +%s)

echo $rs_start_time
echo $rs_end_time

DIFFS=$((( $srs_end_time - $srs_start_time)%60))
DIFFM=$((( $srs_end_time - $srs_start_time)/60))


echo "It took $DIFFM minutes and $DIFFS seconds"

