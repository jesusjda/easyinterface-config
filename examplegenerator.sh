#!/bin/bash
# ./examplegenerator.sh /home/friker/tmp/www/examples/rankfinder "fc" /home/friker/Systems/irankfinder/src/loopkiller/examples > ./config/pyRankFinder/examples.cfg

function printFile(){
    urlb=$1
    base=$2
    path=$3
    extension="${path##*.}"
    filename=`basename $path`
    cp $path $base"/"$filename
    echo '<file name="'$filename'" url="'$urlb'/'$filename'" />'
}

function printFolder(){
    urlb=$1
    base=$2
    path=$3
    folder=`basename $path`
    mkdir $base"/"$folder
    echo '<folder name="'$folder'">'
}

function processPath(){
    urlb=$1
    base=$2
    exts=$3
    path=$4
    if [[ -d $path ]]; then
	# echo "$path is a directory"
	folder=`basename $path`
	printFolder $urlb $base $path
	for f in $path/*; do
	    (processPath $urlb/$folder $base/$folder $exts $f)
	done
	echo "</folder>"
    elif [[ -f $path ]]; then
	#echo "$path is a file"
	extension="${path##*.}"
	filename="${path%.*}"
	if [[ " ${exts[@]} " =~ " ${extension} " ]]; then
	    (printFile $urlb $base $path)
	fi

    #else
	# echo "$path is not valid"
    fi
}

URLB="http://localhost/tmp/examples/rankfinder"
BASE=$1
EXTS=$2
DIR=$3
mkdir -p $BASE
echo "<exset id='pyset'>"
processPath $URLB $BASE $EXTS $DIR
echo "</exset>"
