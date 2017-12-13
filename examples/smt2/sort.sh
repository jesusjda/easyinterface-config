#!/bin/bash

folder=$1

for f in $folder/*.smt2; do
    name=`basename $f`
    l=${name:0:1}
    l=${l,,}
    mkdir -p $folder/$l
    mv $f $folder/$l/$name
done
