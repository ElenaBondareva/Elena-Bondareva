#!/bin/bash

echo "<html>" > index.html
echo "<head><meta charset=\"utf-8\"/></head>" >> index.html
echo "<body>" >> index.html
echo "<h3><a href="../index.html">Бондарева Елена Михайловна</a></h3>" >> index.html
echo "<h4>Грамоты и награды:</h4>" >> index.html

#echo "<ul>" >> index.html
#list=`find . -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | sort`
#for i in $list
#do
#  echo " <li><a href=\"$i\">$i</a></li>" >> index.html
#  cd $i
#  ./make-index.sh
#  cd ..
#done
#echo "</ul>" >> index.html

#echo "<ul>" >> index.html
list=`ls *.jpeg`
for i in $list
do
  name=`basename $i .jpeg`
#  echo " <li><a href=\"$name.jpeg\"><img src=\"sm/$name.jpeg\">$name</a> </li>" >> index.html
  echo " &nbsp;<a href=\"$name.jpeg\"><img src=\"sm/$name.jpeg\"></a> " >> index.html
done
#echo "</ul>" >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html
