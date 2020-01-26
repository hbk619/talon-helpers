#!/bin/bash

TALON_HOME="$HOME/.local/share/talon"
echo "Removing previous tmp"
rm -rf tmp

echo "extracting $1 into tmp"
mkdir tmp && cd tmp
tar -xf $1

echo "backing up to ./talon.bak"
mv $TALON_HOME talon.bak
mv talon $TALON_HOME
cd ../

