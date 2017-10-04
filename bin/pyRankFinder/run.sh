#!/bin/bash
TMPDIR=$1/_ei_tmp

${PYRANKFINDER_HOME:=/home/friker/Systems/pyRankFinder}
pyRF=$PYRANKFINDER_HOME/rankfinder.py


python2.7 $pyRF ${@:2} 2> $TMPDIR/errors

echo "ERRORS?"
cat $TMPDIR/errors


echo ${@:2}
