#!/bin/sh

#$ -S /bin/sh

### Create realignment targets for each splited bam ###

label=`printf %02d ${SGE_TASK_ID}`
bam_file=./results/tmp_splitted.${label}.bam
result_table=./results/tmp_realign_tgt.${label}.intervals

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T RealignerTargetCreator -R ${REFERENCE} -I ${bam_file} -o ${result_table}
