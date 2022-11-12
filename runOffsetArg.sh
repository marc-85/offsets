#!/bin/bash

OFFSET=-1
mpic++ -O3 offsets_argument.cpp -o offsets_arg.p

for n in $(seq 3 30); do
	N=$((2**$n))
	echo $N $(taskset -c 0 ./offsets_arg.p $N $OFFSET)
	rm dummyFile.txt
done