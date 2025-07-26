#! /usr/bin/bash

curr_dir=$(basename "$PWD")
timestamp=$(date +%H:%M:%S_%d-%m-%Y)
user=$USER

tar -uvf ${HOME}/${curr_dir}_${timestamp}_${user}.tar . 2>/dev/null

exit 0
