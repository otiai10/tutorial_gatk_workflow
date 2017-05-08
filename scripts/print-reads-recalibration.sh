#!/bin/sh

#$ -S /bin/sh

### Print result of recalibration ###

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T PrintReads -R ${REFERENCE} -I ./results/all.realigned.bam --BQSR ./results/recalibration.table -o ./results/all.recalibrated.bam
