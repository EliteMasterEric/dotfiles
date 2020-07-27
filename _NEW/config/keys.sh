#!/bin/bash

regex='^#(.*): (.*)$'

cat ~/.config/i3/config | \
    while read CMD; do
        if [[ $CMD =~ $regex ]]
        then
            if [[ ${BASH_REMATCH[0]} ]]
            then
                comment=`echo "${BASH_REMATCH[1]}" | awk '{$1=$1};1'`
                bind=`echo "${BASH_REMATCH[2]}" | awk '{$1=$1};1'`
                printf "%s\033[32G" "${comment}" "${bind}"
                printf "\n"
            fi
        fi
    done