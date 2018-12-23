#!/bin/bash

# Variables
extension='png'
report='report.log'    

if [ -f $report ];
then
    rm -rf $report
fi

echo $'renaming files . . .\n'

for filename in *.$extension
do
    echo filename
    #temp=$(echo $filename | tr '_' ' ' | tr '%20' ' ' | tr '[]' '()' | tr -s ' ' | sed 's/\.[^.]*$//' )
    #
    #part1=$(echo $temp | cut -f1 -d-)
    #part2=$(echo $temp | cut -f2 -d-)
    #new_filename=$(echo "${part2#?} - ${part1%?}.$extension")
    #echo $(mv -v "$filename" "$new_filename") | tee -a $report
    #if [ $? -ne 0 ]; then
    #    echo $'\n\nScript FAILED'
    #    exit 1
    #fi
done

echo $'\n\nScript SUCCESSFUL'
exit 0