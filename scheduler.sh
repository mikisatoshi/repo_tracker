#!/bin/bash
# ls
# cd pi_loger
# git pull origin master

ping -c 1 google.com
echo $?
if [ "$?" = "0" ] ; then
  rm -rf pi_tracker
fi
git clone https://github.com/mikisatoshi/pi_tracker.git

# cd pi_loger
# chmod 777 upd.sh
# ./upd.sh