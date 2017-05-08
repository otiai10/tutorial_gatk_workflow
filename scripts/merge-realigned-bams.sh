#!/bin/sh

#$ -S /bin/sh

### Merge realignme splitted bams to one indexed bam ###

list=`find . -name \tmp_realigned.*.bam -print`
samtools merge ./results/all.realigned.bam ${list}
samtools index ./results/all.realigned.bam
