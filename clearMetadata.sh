#!/bin/bash
# script erases all matadata from file

# usage:
# ./clearMetadata.sh filename

# $1 - filename
function main(){
	exiftool -all=$1
}

main $1
