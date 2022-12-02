#!/bin/bash

awk '{if ($1 !="") s+=$1; else {print s; s=0;}}' input1.txt | sort -rn | head -n 1