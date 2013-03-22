#!/bin/sh

if [ -f ~/.shellmark ]; then
    SHELLMARK_PATH=$(grep "^mark:$1:" ~/.shellmark | cut -d ":" -f 3)
    if [ -n $SHELLMARK_PATH ]; then
        cd $SHELLMARK_PATH
    else
        echo "Error: mark $1 is not set"
    fi
else
    echo "Error: mark $1 is not set"
fi
