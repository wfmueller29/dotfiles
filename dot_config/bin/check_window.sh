#!/bin/bash

# This script checks to see if the name of the app of the current window 
# matches the name of the app of the function input

app=$1
current_app=$(yabai -m query --windows --window | jq .app)
# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"

until [ "${app}" == "${current_app}" ]; do 
sleep .001
current_app=$(yabai -m query --windows --window | jq .app)
# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"
done
