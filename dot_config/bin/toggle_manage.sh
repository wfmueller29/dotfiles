#!/bin/bash


current_app=$(yabai -m query --windows --window | jq .app)
# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"

current_manage=$(yabai -m query --windows --window | jq '."is-floating"') 
current_app="^${current_app}\$"
# current_app="\"${current_app}\""

echo $current_app

if [ "$current_manage" == "false" ]; then
    yabai -m rule --add app=$current_app manage=off
elif [ "$current_manage" == "true" ]; then
    yabai -m rule --add app=$current_app manage=on
fi
