#!/bin/bash

awk '{if ($1 !="") s+=$1; else {print s; s=0;}}' day1input.txt | sort -n | tail -n 3 | awk '{s+=$1} END {print $1, s}'
