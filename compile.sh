#!/bin/bash

mpic++ -O3 -D_OFFSET=4 offsets.cpp -o offsets.p
mpic++ -O3 offsets_argument.cpp -o offsets_arg.p
