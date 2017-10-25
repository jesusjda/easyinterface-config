#!/bin/bash

localP=$1
serverP=$2

function printFile(){
    source=$1
    localpath=$2
    serverpath=$3
    filepath=$4
    extension="${filepath##*.}"
    filename=`basename $filepath`
    if [[ ! -f $localpath'/'$filename ]]; then
	curl $source'/'$filename > $localpath'/'$filename
    fi
    echo '<file name="'$filename'" url="'$serverpath'/'$filename'" />'
}

function printFolder(){
    if [[ ! -d $1'/'$2 ]]; then
	mkdir -p $1'/'$2
    fi
    echo '<folder name="'$2'">'
}


function preparse (){
    localpath=$1
    serverpath=$2
    c=1
    for i in "${@:3}"; do
	if (( $c % 3 == 0 )); then
	    printFile http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/raw-file/3ce4bce287e1/Integer_Transition_Systems/From_AProVE_2014  $localpath $serverpath $i
	fi
	(( c++ ))
    done
}

DATA=`curl http://cl2-informatik.uibk.ac.at/mercurial.cgi/TPDB/raw-file/3ce4bce287e1/Integer_Transition_Systems/From_AProVE_2014`
printFolder $localP From_AProve_2014
preparse $localP'/From_AProve_2014' $serverP'/From_AProve_2014' $DATA
echo "</folder>"
