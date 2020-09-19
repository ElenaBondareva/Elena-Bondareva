#!/bin/bash

mkdir -p sm
list=`ls *.jpeg`
for i in $list
do
    name=`basename $i .jpeg`
    echo "Make miniature $name"
    convert -resize 300x300 $name.jpeg sm/$name.jpeg
done
