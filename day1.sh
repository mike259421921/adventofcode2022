#!/bin/bash
# TODO: last batch of data not included.  else not triggered at end of file.  update if statement or append new line to input
awk '{if ($1 !="") s+=$1; else {print s; s=0;}}' day1input.txt} | sort -n | tail -n 3 | awk '{s+=$1} END {print $1, s}'
