#!/bin/bash

rm -rf /home/friker/Systems/irankfinder/trunk/build/*
find /home/friker/Systems/irankfinder/trunk -iname *.java > files-java.txt
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/:/usr/local/lib/ppl/
export LD_LIBRARY_PATH
javac -cp /usr/local/lib/ppl/ppl_java.jar:/home/friker/Systems/irankfinder/trunk/lib/commons-cli-1.3.1.jar -d /home/friker/Systems/irankfinder/trunk/build @files-java.txt
java  -cp /home/friker/Systems/irankfinder/trunk/lib/commons-cli-1.3.1.jar:/home/friker/Systems/irankfinder/trunk/build:/usr/local/lib/ppl/ppl_java.jar loopkiller.irankfinder.Main $@

echo $@

