#!/bin/bash

folder=$1

for f in $folder/*.smt2; do
    name=`basename $f`
    l=${name:0:1}
    l=${l,,}
    mv $f $l/$name
done
