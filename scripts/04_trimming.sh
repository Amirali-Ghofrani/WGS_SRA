#!/bin/bash

# Create a directory for the trimmed FASTQ files
mkdir -p data/trimmed

# Run Trimmomatic in paired-end mode.
#
# Input:
#   _1.fastq -> Read 1
#   _2.fastq -> Read 2
#
# Output:
#   _1_paired.fastq   -> paired Read 1
#   _1_unpaired.fastq -> unpaired Read 1
#   _2_paired.fastq   -> paired Read 2
#   _2_unpaired.fastq -> unpaired Read 2

# LEADING:25
#   Remove low-quality bases from the beginning.
#
# TRAILING:28
#   Remove low-quality bases from the end.
#
# SLIDINGWINDOW:5:20
#   Scan with a 5-base window and trim when
#   the average quality falls below 20.
#
# MINLEN:60
#   Remove reads shorter than 60 bases after trimming.

java -jar /usr/share/java/trimmomatic.jar PE \
data/raw/SRR28339303_1.fastq \
data/raw/SRR28339303_2.fastq \
data/trimmed/SRR28339303_1_paired.fastq \
data/trimmed/SRR28339303_1_unpaired.fastq \
data/trimmed/SRR28339303_2_paired.fastq \
data/trimmed/SRR28339303_2_unpaired.fastq \
LEADING:25 \
TRAILING:28 \
SLIDINGWINDOW:5:20 \
MINLEN:60

