#!/bin/bash -x

echo "*********** Welcome to Snake and Ladder Game ***********"
position=0
echo "Start position of game : $position"

declare -a option
option[0]="No Play"
option[1]="Ladder"
option[2]="Snake"
check=$((RANDOM%3))

echo "${option[$check]}"

rolldice=$(( RANDOM%6 + 1 ))
echo "Roll Dice : $rolldice"
