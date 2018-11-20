#!/bin/bash

# usage ./search /folde-path *.html mobile

SEARCH_PATH=`realpath $1`;
SEARCH_FORMAT=$2;
SEARCH_STRING=$3;
DEST_FILE=`pwd`/resp.txt;

echo "" >> $DEST_FILE;
echo ">> Search resuls for '$SEARCH_STRING' in '$SEARCH_FORMAT' files at $SEARCH_PATH:" >> $DEST_FILE;
echo "" >> $DEST_FILE;

RESULTS=`find $SEARCH_PATH -name $SEARCH_FORMAT`;

for current_file in $RESULTS;
	do
		if [[ `cat $current_file` =~ .*$SEARCH_STRING.* ]]; then
			file_path=`realpath $current_file`;
			printf "file: $file_path\n";
			echo $file_path >> $DEST_FILE;
		fi
done;

echo "----" >> $DEST_FILE;
echo "" >> $DEST_FILE;
