#!/bin/sh

#$ -S /bin/sh

### Execute realignment for each splitted bam ###

bam_file=./resources/origin/src.bam
table=./results/tmp_realign_tgt.intervals
result_bam=./results/all.realigned.bam

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T IndelRealigner -R ${REFERENCE} -I ${bam_file} -targetIntervals ${table} -o ${result_bam}
