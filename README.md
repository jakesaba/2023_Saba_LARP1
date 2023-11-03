# 2023_Saba_LARP1

Description of repository files:

1_20231025_demultiplexing.sh describes command-line code that was used to demultiplex sequencing reads into individual fastq files

2_20231025_mapping_sorting.sh is command-line code which takes input fastq files (from 1), aligns reads to the transcriptome (using minimap2), and outputs an indexed BAM file

3_20231025_quants.sh is command-line code which takes input BAM files (from 2), quantifies the number of alignments to each transcript, and outputs a CSV file of raw counts

4_20231020_transcriptome_quant_eGFP_v19.Rmd is R markdown code which takes input CSV files (from 3), joins them into a large data frame, removes NAs, filters for transcripts above a certain threshold of reads, removes unmapped reads, normalizes quants to an eGFP spike-in, calculates percent RNA across the gradient, collapses quants to a single canonical transcript per gene, and constructs plots of % RNA across the gradient.

20231019_qPCR-plotting.Rmd is R markdown code which constructs plots for percent RNA across the gradient (appropriate for qPCR data which has been previously normalized and formatted prior to importing into R)
