#!/bin/bash
TMPDIR=$1/_ei_tmp


${HOME:="/var/www"}
export HOME=$HOME
${PYRANKFINDER_HOME:="/home/friker/Systems/pyRankFinder"}
pyRF=$PYRANKFINDER_HOME/rankfinder.py

OUTSDIR=$TMPDIR/outs
mkdir -p $OUTSDIR
# mkdir -p $TMPDIR/t2
echo "<eiout>"

python3 $pyRF ${@:2} --ei-out -of dot fc svg -od "$OUTSDIR/" 2> "$TMPDIR/errors"

i=0
echo "<eicommands>"
for f in "$OUTSDIR/"*.svg
do
    if [ -f $f ]; then
	echo ""
	echo "<printonconsole consoleid='graph-dot' consoletitle='Program Graph'><content><![CDATA["
	echo $(basename $f)
	echo "]]></content></printonconsole>"
	echo "<printonconsole consoleid='graph-dot' consoletitle='Program Graph'>"
	echo "<content format='svg'>"
	cat $f
	#dot -Tsvg $f -o $f.svg
	#cat $f.svg | sed -e :a -re 's/<!.*?>//g;/<!/N;//ba'
	echo "</content></printonconsole>"
	echo ""
	i=$i + 1
    fi
done


if [ -s "$TMPDIR/errors" ]; then
    echo "<printonconsole consoleid='errors' consoletitle='Errors'><content><![CDATA["
    echo "========== Command line ====================================="
    echo ${@:2} --ei-out -of dot fc svg -od "$OUTSDIR/"
    echo "=============================================================="
    cat "$TMPDIR/errors"
    echo "]]></content></printonconsole>"
else
    echo "<printonconsole><content><![CDATA[]]></content></printonconsole>"
fi
echo "</eicommands>"
echo "</eiout>"
