# Create output directory for trimmed-read QC reports.
mkdir -p results/fastqc_trimmed

# Run FastQC on trimmed paired-end reads.
fastqc \
data/trimmed/SRR28339303_1_paired.fastq \
data/trimmed/SRR28339303_2_paired.fastq \
-o results/fastqc_trimmed
