#!/bin/bash
# files returns a gps position in file metadata

# usage:
# GPSpositionFromFile.sh filename

# function returns a gps position of file
# $1 - filename
function GPSposition(){
	ret=$(exiftool $1 | grep "GPS Position" | cut -f2 -d:)
	echo $ret
}

# main function
# $1 - filename
function main(){
	GPSposition $1
}
main $1
