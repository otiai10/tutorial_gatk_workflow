#!/bin/sh

#$ -S /bin/sh

### Execute realignment for each splitted bam ###

label=`printf %02d ${SGE_TASK_ID}`
bam_file=./results/tmp_splitted.${label}.bam
table=./results/tmp_realign_tgt.${label}.intervals
result_bam=./results/tmp_realigned.${label}.bam

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T IndelRealigner -R ${REFERENCE} -I ${bam_file} -targetIntervals ${table} -o ${result_bam}
