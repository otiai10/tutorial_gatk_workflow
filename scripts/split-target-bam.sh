#!/bin/sh

#$ -S /bin/sh

### Split bams according to regions ###

i=1
while read region; do
	label=`printf %02d ${i}`
	fname=./results/tmp_splitted.${label}.bam
	samtools view ./resources/origin/src.bam ${region} > ${fname}
	${JAVA_PATH} -jar ${PICARD_JAR} AddOrReplaceReadGroups I=${fname} O=${fname} RGLB=lib1 RGPL=illumina RGPU=unit1 RGSM=20
	echo $fname
	i=$(( i + 1 ))
done<./resources/GRCh37_noScaffold_noDecoy.interval_list
