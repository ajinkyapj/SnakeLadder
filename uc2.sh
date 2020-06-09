#!/bin/bash -x

echo "*********** Welcome to Snake and Ladder Game ***********"

position=0

echo "Start position of game."

rolldice=$(( RANDOM%6 + 1 ))

echo "Roll Dice : $rolldice"

