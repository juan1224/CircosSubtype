#!/bin/bash

INPUT=$1
OUTPUT=$2

tail -n +2 $INPUT | awk '{if ($2>2.8 || $2 < -2.5) {print $8"\t"$9"\t"$10"\t"$2}}' | sed 's/chr/hs/g' > $OUTPUT
