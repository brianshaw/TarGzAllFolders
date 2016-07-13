#!/bin/bash 
#for D in `find /Users/brianshaw/Desktop/testloop/* -type d`
echo " "
echo "--------------------------"
echo " "
echo "Finding all folders and taring and gzing them"
echo " "
#folderToProcess="$1"
count=0
#for D in "$folderToProcess"; 
for D in /Users/brianshaw/Desktop/testloop/*;
do
    if [ -d "${D}" ]; then
        echo "Processing: ${D}"   # your processing here
        #echo "${D// /_}"   # your processing here
        
        #tar -zcvf "${D// /_}".tar.gz "${D}"

        echo "FINISHED Processing: ${D}"
        echo " "
        echo "--------------------------"
        echo " "
        ((count++))
    fi
done

echo "FINISHED Processing COMPLETE FOLDER $count folders "
        echo " "
        echo "--------------------------"
        echo " "