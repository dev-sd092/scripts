#! /usr/bin/bash

find /home/vboxuser/logs -type f -name "*.log" -mtime -7 -exec rm -f {} \; -print
