#!/bin/bash


if [[ -z $1 ]];
then 
    echo "No input file provided."
else
	basename="${1%.*}"
	input_file=$1
	ffmpeg -i "$input_file" -c:a libvorbis -qscale 1 c_"$basename".ogg
fi