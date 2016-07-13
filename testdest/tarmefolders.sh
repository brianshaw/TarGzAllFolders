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
for D in /Users/brianshaw/Repos/TarGzAllFolders/testloop/*;
do
    if [ -d "${D}" ]; then
        echo "Processing: ${D}"   # your processing here
        filename="${D##*/}"
        filename="${filename// /_}.tar.gz"
        echo "Creating $filename"   # your processing here
        
        tar -zcvf "$filename" "${D}"

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