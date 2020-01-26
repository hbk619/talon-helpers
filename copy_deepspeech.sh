#!/bin/bash

TALON_HOME=${TALON_HOME:=$HOME/.talon}
TALON_W2L=$TALON_HOME/w2l/en_US
DEEPSPEECH_HOME=${1:-$HOME/Documents/deepspeech}

echo "copying binary from $DEEPSPEECH_HOME to $TALON_W2L"
cp $DEEPSPEECH_HOME/lm.binary $TALON_W2L/lm-ngram.bin
echo "removing lexicon_flat"
rm $TALON_W2L/lexicon_flat.bin
