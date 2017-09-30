#!/bin/bash
TMPDIR=$1/_ei_tmp
# rm -rf /home/friker/Systems/irankfinder/build/*
find /home/friker/Systems/irankfinder/trunk -iname *.java > $TMPDIR/files-java.txt
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/:/usr/local/lib/ppl/
export LD_LIBRARY_PATH
mkdir $TMPDIR/build
javac -cp /usr/local/lib/ppl/ppl_java.jar:/home/friker/Systems/irankfinder/trunk/lib/commons-cli-1.3.1.jar -d $TMPDIR/build @$TMPDIR/files-java.txt
java  -cp /home/friker/Systems/irankfinder/trunk/lib/commons-cli-1.3.1.jar:$TMPDIR/build:/usr/local/lib/ppl/ppl_java.jar loopkiller.irankfinder.Main ${@:2} > $TMPDIR/out 2> $TMPDIR/errout

cat $TMPDIR/out
echo "-------------------ERROR?-----------"
cat $TMPDIR/errout

echo ${@:2}
