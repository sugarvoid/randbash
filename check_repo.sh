#!/usr/bin/env bash

#Work in progress 

NONE='\033[0m'
BLUE='\033[0;34m'
WHITE='\033[0;37m' 
RED='\033[0;31m'  
GREEN='\033[0;32m' 

echo -e "${BLUE}Welcome ${NONE}to ${RED}France${NONE}"

for dic in */ ; do
    if test -d "$dic.git/"; then
        # echo "Directory exists."
        foo="$(git -C $dic status | tail -n 1)"
        if  [[ "${d}$'\t' ${foo}" == "$'\t' nothing to commit, working tree clean" ]]; then
            echo "you're good"
        else
            echo "there is something to commit??? in $dic"
        fi
        # echo "${d} $'\t' ${foo}"
    else
        echo "no .git folder in $dic"
    fi
done



