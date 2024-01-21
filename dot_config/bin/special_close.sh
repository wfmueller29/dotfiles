#!/bin/bash

# If it is the last window of an application, closing the window will quit the
# application

current_app=$(yabai -m query --windows --window | jq .app)

# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"

no_window=$(yabai -m query --windows | jq -r '.[].app' | grep -oc "${current_app}")

if (( no_window > 1 )); then 
    yabai -m window --close;
else
    bash ~/.config/bin/quit_app.sh || yabai -m window --close;
fi


