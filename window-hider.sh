#!/bin/bash

function show() {
    while read HANDLE; do
        xdotool windowmap $HANDLE
    done <~/.config/.window-hider
    rm ~/.config/.window-hider
}

function hide() {
    ALL_VISIBLE_WINDOWS="$(wmctrl -l)"
    for title in "$@"
    do
        HANDLES="$(echo "$ALL_VISIBLE_WINDOWS" | grep -i $title | awk '{ print $1 }')"
        while IFS= read -r HANDLE; do
            if [ ${#HANDLE} -gt 0 ]; then
            echo $HANDLE >> ~/.config/.window-hider
            xdotool windowunmap $HANDLE
        fi
        done <<< "$HANDLES"
    done
}

if [ "$1" != "toggle" ]; then
    echo "Usage: ./window-hider.sh toggle windowTitle1, windowTitle2, ..."
    exit 1
fi

shift

if [ -f ~/.config/.window-hider ]; then
    show $@
else
    hide $@
fi






