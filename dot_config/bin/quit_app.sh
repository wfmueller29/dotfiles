#!/bin/bash

# This function will quit a given application

current_app=$(yabai -m query --windows --window | jq .app)
# To remove quotes from string
current_app="${current_app%\"}"
current_app="${current_app#\"}"

osascript -e 'quit app"'"${current_app}"'"'
