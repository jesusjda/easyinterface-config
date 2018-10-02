#!/bin/bash
TMPDIR=$1/_ei_tmp


${HOME:="/var/www"}
export HOME=$HOME
${PYRANKFINDER_HOME:="/home/friker/Systems/pyRankFinder"}
pyRF=$PYRANKFINDER_HOME/rankfinder.py

mkdir -p $TMPDIR/dot
mkdir -p $TMPDIR/t2
echo "<eiout>"

python3 $pyRF ${@:2} --ei-out --dotDestination "$TMPDIR/dot" 2> "$TMPDIR/errors"

i=0
echo "<eicommands>"
for f in "$TMPDIR/dot/"*.dot
do
    if [ -f $f ]; then
	echo ""
	echo "<printonconsole consoleid='graph-dot' consoletitle='Program Graph'><content><![CDATA["
	echo $(basename $f)
	echo "]]></content></printonconsole>"
	echo "<printonconsole consoleid='graph-dot' consoletitle='Program Graph'>"
	echo "<content format='svg'>"
	dot -Tsvg $f -o $f.svg
	cat $f.svg | sed -e :a -re 's/<!.*?>//g;/<!/N;//ba'
	echo "</content></printonconsole>"
	echo ""
	i=$i + 1
    fi
done


if [ -s "$TMPDIR/errors" ]; then
    echo "<printonconsole consoleid='errors' consoletitle='Errors'><content><![CDATA["
    echo "========== Command line ====================================="
    echo ${@:2} --ei-out --dotDestination "$TMPDIR/dot"
    echo "=============================================================="
    cat "$TMPDIR/errors"
    echo "]]></content></printonconsole>"
fi

echo "<printonconsole><content><![CDATA[]]></content></printonconsole>"

echo "</eicommands>"
echo "</eiout>"
