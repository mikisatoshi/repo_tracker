#!/bin/bash

cd pi_tracker
python tracker.py
cd
files="/home/pi/repo_tracker/storage/*"
for pathfile in $files
do
  echo $pathfile
  name="${pathfile##*/}"
  echo $name
  ./dropbox_uploader.sh upload $pathfile /home/pi/projects/pi_tracker/$name
  rm $pathfile
done


