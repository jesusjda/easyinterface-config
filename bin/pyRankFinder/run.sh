2#!/bin/bash
TMPDIR=$1/_ei_tmp

${PYRANKFINDER_HOME:="/home/friker/Systems/pyRankFinder"}
pyRF=$PYRANKFINDER_HOME/rankfinder.py

mkdir -p $TMPDIR/dot
mkdir -p $TMPDIR/t2
echo "<eiout>"

python2.7 $pyRF ${@:2} --ei-out --dotDestination $TMPDIR/dot 2> $TMPDIR/errors

i=0
echo "<eicommands>"
for f in $TMPDIR/dot/*.dot
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

echo "<printonconsole consoleid='errors' consoletitle='ERRORS?'><content><![CDATA["
echo ${@:2} --ei-out --dotDestination $TMPDIR/dot
echo "ERRORS?"
cat $TMPDIR/errors
echo "]]></content></printonconsole>"

${TRANS_HOME:="/usr/local/lib/python2.7/dist-packages/genericparser/smtpushdown2"}

O=$($TRANS_HOME -convertto FC $3)
echo "<printonconsole consoleid='translation' consoletitle='fccode'><content><![CDATA["
echo "$O"
echo "]]></content></printonconsole>"



echo "<printonconsole><content><![CDATA["
echo "]]></content></printonconsole>"

echo "</eicommands>"

echo "</eiout>"
