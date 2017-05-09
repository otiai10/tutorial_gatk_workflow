#!/bin/sh

#$ -S /bin/sh

### Create recalibration table ###

bam_file=./results/all.realigned.bam
KNOWN_DB=./resources/db/dbsnp_138.b37.vcf

${JAVA_PATH} -Xmx1024m -jar ${GATK_JAR} -T BaseRecalibrator -R ${REFERENCE} -I ${bam_file} -knownSites:VCF ${KNOWN_DB} -o ./results/recalibration.table
