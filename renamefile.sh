#!/bin/bash
#following line changes Internal Field separator to 
#new line
IFS='
'

for f in *.mp4
do 
	fullname=$f #stores filename+extension to fullname variable
	filename="${fullname%.*}" #discards extension
	tracknumber="${filename//[^0-9]/}" #extract tracknumber
	newfilename="$tracknumber.mp4" #concat tracknumber with extension
	echo "oldname :$filename"
	echo "newname :$newfilename"
	mv $f $newfilename


done

