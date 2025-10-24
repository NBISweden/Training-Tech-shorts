#!/bin/bash

echo -e "\n\n"
figlet ALIGN
echo -e "align with bwa\n\n"
bwa mem /data/genomes/Hsapiens/hg19/bwa/hg19.fa /data/wgs/mt_1.fq.gz /data/wgs/mt_2.fq.gz > /output/mt.aligned.sam

echo -e "\n\n"
figlet SORT
echo -e "sort and convert to bam\n\n"
samtools sort /output/mt.aligned.sam > /output/mt.aligned.bam

echo -e "\n\n"
figlet READ GROUPS
echo -e "add read groups\n\n"
gatk AddOrReplaceReadGroups -I /output/mt.aligned.bam -O /output/mt.aligned.rg.bam --RGID rg_HG00097 --RGSM HG00097 --RGPL illumina --RGLB libx --RGPU XXX

echo -e "\n\n"
figlet INDEX
echo -e "index new bam file\n\n"
samtools index /output/mt.aligned.rg.bam

echo -e "\n\n"
figlet CALL SNPs
echo -e "call the snps\n\n"
gatk --java-options -Xmx4g HaplotypeCaller -R /data/genomes/Hsapiens/hg19/seq/hg19.fa -I /output/mt.aligned.rg.bam -O /output/mt.aligned.rg.vcf
