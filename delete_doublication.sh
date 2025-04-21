#!/bin/bash


folder_path=".";

for file_mkv in *.mkv;
do
	prefix_file_mkv="${file_mkv:0:3}";
	file_mp4=$(find . -maxdepth 1 -type f -name "${perfix_file_mkv}*.mp4");
	if [ "$file_mp4" != "" ];
	then
		echo "removing mkv file: $perfix_file_mkv"
		rm -rf "$file_mkv";
	fi
done;
	
