#!/bin/bash

# Quality control with FastQC

fastqc -t 2 \
  data/raw/SRR28339303_1.fastq \
  data/raw/SRR28339303_2.fastq \
  --outdir results/fastqc
