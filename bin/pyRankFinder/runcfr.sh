#!/bin/bash
TMPDIR=$1/_ei_tmp

${HOME:="/var/www"}
export HOME=$HOME

${PYRANKFINDER_HOME:="/home/friker/Systems/pyRankFinder"}
pyRF=$PYRANKFINDER_HOME/CFRefinement.py

echo "<eiout>"

python3 $pyRF --dir $TMPDIR ${@:2} --ei-out 2> $TMPDIR/errors


echo "<eicommands>"

echo "<printonconsole consoleid='errors' consoletitle='ERRORS?'><content><![CDATA["
cat $TMPDIR/errors
echo "]]></content></printonconsole>"

echo "<printonconsole><content><![CDATA["
echo "]]></content></printonconsole>"

echo "</eicommands>"

echo "</eiout>"
