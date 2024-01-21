#!/bin/bash

space_no=$(yabai -m query --spaces | jq -r '.[]."has-focus"' | grep -n "true" | cut -d: -f1)

space_type=$(yabai -m query --spaces | jq -r '.[].type' | sed "${space_no}q;d")

if [ "$space_type" == "stack" ]; then
    yabai -m config --space $space_no layout bsp
elif [ "$space_type" == "bsp" ]; then
    yabai -m config --space $space_no layout stack
fi



