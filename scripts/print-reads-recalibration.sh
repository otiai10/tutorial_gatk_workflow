#!/bin/sh

#$ -S /bin/sh

### Print result of recalibration ###

bam_file=./results/all.realigned.bam

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T PrintReads -R ${REFERENCE} -I ${bam_file} --BQSR ./results/recalibration.table -o ./results/all.recalibrated.bam
