#!/bin/bash
# Change the above if needed, default for most unix is bash

# Ask for number of flips
echo How many times should the coin be flipped?
read FLIPS

HEADS=0
TAILS=0
for i in `seq 1 $FLIPS`
do
  # Flip a coin
  NUMBER=$[ ( $RANDOM % 2 ) + 1 ]
  if [ $NUMBER -eq 1 ]
  then
    TAILS=$((TAILS+1))
    echo "Tails."
  else
    HEADS=$((HEADS+1))
    echo 'Heads.'
  fi
done

echo "Heads: $HEADS"
echo "Tails: $TAILS"
