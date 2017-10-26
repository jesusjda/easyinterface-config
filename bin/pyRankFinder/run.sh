#!/bin/bash
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
echo "</eicommands>"


${T2_HOME:="/opt/tools/t2"}
pyT2=$PYRANKFINDER_HOME/runT2.py

echo "<eicommands>"
echo "<printonconsole consoleid='t2-result' consoletitle='T2 Result'><content><![CDATA["
"./runT2.sh ${@:2}"
python2.7 $pyT2 ${@:2} -t2 $T2_HOME -td $TMPDIR/t2 2> $TMPDIR/errors
echo "]]></content></printonconsole>"
echo "</eicommands>"

echo "<printonconsole consoleid='errors' consoletitle='ERRORS?'><content><![CDATA["
echo ${@:2} --ei-out --dotDestination $TMPDIR/dot
echo "ERRORS?"
cat $TMPDIR/errors
echo "]]></content></printonconsole>"
echo "</eicommands>"


echo "</eiout>"
