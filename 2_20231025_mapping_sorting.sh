#!/bin/bash

# Each fastq file is mapped to the transcriptome (using minimap2 with the -ax splice option)
# non-primary alignments are excluded (using samtools view with the -F 256 option)
# BAM files are sorted (using samtools sort).


for i in `ls -v *.gz`
do
	echo "starting $i"
	minimap2 -t 4 -ax splice ../../genomes/gencode.v38.transcripts_eGFP.fa $i | samtools view -b -F 256 | samtools sort -@ 4 > ../demuxed_minimap2_transcriptome_eGFP/${i}.bam
	samtools index ../demuxed_minimap2_transcriptome_eGFP/$i.bam > ../demuxed_minimap2_transcriptome_eGFP/${i}.bai
done