#!/bin/bash

# If it is the last window of an application, closing the window will quit the
# application

current_app=$(yabai -m query --windows --window | jq .app)

echo $current_app
# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"

echo $current_app

no_window=$(yabai -m query --windows | jq -r '.[].app' | grep -oc "${current_app}")

echo $no_window

if (( no_window > 1 )); then 
    echo "we are closing"
    yabai -m window --close;
else
    echo "we are quitting"
    bash ~/.config/bin/quit_app.sh || yabai -m window --close;
fi


