#!/bin/bash

# This scripts checks to see if an app is open, if not it will open the app in
# a predetermined space

target_app=$1
target_space=$2
# To remove quotes from string
target_app="${target_app%\"}"
target_app="${target_app#\"}"

no_window=$(yabai -m query --windows | jq -r '.[].app' | grep -oc "${target_app}")

if (( no_window >= 1 )); then 
    open -a "${target_app}"
else
    yabai -m space --focus "${target_space}"; open -a "${target_app}"
fi

