#!/usr/bin/env bash

image="${1:-container.sif}"

singularity exec --bind ./test:/test "$image" sniffles --allow-overwrite --tandem-repeats /test/annotations/human_hs37d5.trf.bed -i /test/2_59305747-59505747_X_151018513-151218513.BND.bam -v /test/output_run_test.vcf

exit $?
