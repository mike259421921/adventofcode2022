#!/bin/bash

# A for Rock, B for Paper, and C for Scissors
# part 1: X for Rock, Y for Paper, and Z for Scissors
# part 2: X lose, Y draw, Z win

# 1 for Rock, 2 for Paper, and 3 for Scissors
# 0 for lost, 3 for draw, and 6 for win

awk '
    /A X/ {s1+=(1+3); s2+=(3+0)}
    /A Y/ {s1+=(2+6); s2+=(1+3)}
    /A Z/ {s1+=(3+0); s2+=(2+6)}
    /B X/ {s1+=(1+0); s2+=(1+0)}
    /B Y/ {s1+=(2+3); s2+=(2+3)}
    /B Z/ {s1+=(3+6); s2+=(3+6)}
    /C X/ {s1+=(1+6); s2+=(2+0)}
    /C Y/ {s1+=(2+0); s2+=(3+3)}
    /C Z/ {s1+=(3+3); s2+=(1+6)}
    END {print s1, s2}' day2input.txt
