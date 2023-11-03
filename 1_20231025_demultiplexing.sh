#!/bin/bash

# Each demultiplexed library was separated into its own fastq file using the grep function at the command-line

#dmso
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode01" | gzip -c > dmso_f1.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode02" | gzip -c > dmso_f2.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode03" | gzip -c > dmso_f3.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode04" | gzip -c > dmso_f4.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode05" | gzip -c > dmso_f5.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode06" | gzip -c > dmso_f6.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode07" | gzip -c > dmso_f7.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode08" | gzip -c > dmso_f8.fastq.gz &
gunzip -c data/210804_dmso_js.fastq.gz | grep -A 3 --no-group-separator "barcode12" | gzip -c > dmso_whole.fastq.gz &

#torin
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode09" | gzip -c > torin_f1.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode10" | gzip -c > torin_f2.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode11" | gzip -c > torin_f3.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode12" | gzip -c > torin_f4.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode01" | gzip -c > torin_f5.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode02" | gzip -c > torin_f6.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode03" | gzip -c > torin_f7.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode04" | gzip -c > torin_f8.fastq.gz &
gunzip -c data/210804_torin_js.fastq.gz | grep -A 3 --no-group-separator "barcode08" | gzip -c > torin_whole.fastq.gz &
