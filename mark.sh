#!/bin/sh

# Remove mark with same name, if existing.
if [ -f ~/.shellmark ]; then
    others=$(grep -v "^mark:$1:" ~/.shellmark | grep -v "^$")
    echo "$others" > ~/.shellmark
fi

# Write mark to file
echo "mark:$1:$(pwd)" >> ~/.shellmark
