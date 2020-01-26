#!/bin/bash
TALON_HOME=${TALON_HOME:=$HOME/.talon}
W2L_HOME=${1:-$HOME/Documents/w2l}
TALON_W2L=$TALON_HOME/w2l/en_US

echo "copying binary from $W2L_HOME to $TALON_W2L"
cp $W2L_HOME/en_US/lm-ngram.bin $TALON_W2L/lm-ngram.bin
rm $TALON_W2L/lexicon_flat.bin
