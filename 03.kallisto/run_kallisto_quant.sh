#!/bin/bash

sample_pa=$1
idx_pa=$2
#sample_ec=$3
#idx_ec=$4
fastq=/Users/djfeistel/Desktop/GA_Tech/BIOL6150/class_project/teams12/02.trimmed

#PA samples
for i in $(cat $sample_pa) ; do

	kallisto quant -i ${idx_pa} -o ${i}_kallisto -b 100 -t 2 --verbose ${fastq}/${i}_trimmed_1.fastq ${fastq}/${i}_trimmed_2.fastq

done

#for i in $(cat $sample_ec) ; do

#	kallisto quant -i ${idx_ec} -o ${i}_kallisto -b 100 -t 2 --verbose ${fastq}/${i}_trimmed_1.fastq ${fastq}/${i}_trimmed_2.fastq

#done
