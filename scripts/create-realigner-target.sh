#!/bin/sh

#$ -S /bin/sh

### Create realignment targets for each splited bam ###

bam_file=./resources/origin/src.bam
result_table=./results/tmp_realign_tgt.intervals

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T RealignerTargetCreator -R ${REFERENCE} -I ${bam_file} -o ${result_table}
