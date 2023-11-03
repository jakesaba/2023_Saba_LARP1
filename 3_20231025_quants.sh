#!/bin/bash

# This shell script takes a BAM file and quantifies alignments by counting the number of reads aligning to each transcript and outputs a csv file with raw counts

SOURCE_DIR=$1
cd $SOURCE_DIR

for file in `ls -v *.bam`
do
	echo "starting $file"
	samtools view $file | cut -f3 | sort | uniq -c | awk '{print $2 ", " $1}' | sed "1i transcript_id, ${file}" > ${file}_quant_eGFP.csv
done