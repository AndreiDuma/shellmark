#!/bin/sh

function mark {
    # Remove mark with same name, if existing.
    if [ -f ~/.shellmark ]; then
        others=$(grep -v "^mark:$1:" ~/.shellmark | grep --color=never -v "^$")
        echo "$others" > ~/.shellmark
    fi

    # Write mark to file
    echo "mark:$1:$(pwd)" >> ~/.shellmark
}

function go {
    if [ -f ~/.shellmark ]; then
        MARK_PATH=$(grep --color=never "^mark:$1:" ~/.shellmark | cut -d ":" -f 3)
        if [ -n "$MARK_PATH" ]; then
            cd $MARK_PATH
            return
        fi
    fi

    echo "Error: mark '$1' is not set"
    return 1
}
