#!/bin/zsh

# This script checks to see if the name of the app of the current window 
# matches the name of the app of the function input

local app=$1
local current_app=$(yabai -m query --windows --window | jq .app)
current_app=$(echo "${current_app:1: -1}")

until [[ "${app}" == "${current_app}" ]]; do 
sleep .001
current_app=$(yabai -m query --windows --window | jq .app)
current_app=$(echo "${current_app:1: -1}")
done
