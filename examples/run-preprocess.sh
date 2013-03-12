#!/bin/sh -x

#usage:  run-preprocess.sh 90-cloudalytics-pre.json > 99-out.json
# need to manually add in a blank line before ${name:"subject", type:"randomChoice"} definition
gcc -E -x c -P -C  $*
