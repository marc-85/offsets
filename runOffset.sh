#!/bin/bash

OFFSET=-1
mpic++ -O3 -D_OFFSET=$OFFSET offsets.cpp -o offsets.p

for n in $(seq 3 30); do
	N=$((2**$n))
	echo $N $(taskset -c 0 ./offsets.p $N)
	rm dummyFile.txt
done