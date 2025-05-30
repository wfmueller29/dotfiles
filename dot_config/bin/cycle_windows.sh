#!/bin/bash

while [[ "$#" -gt 0 ]]
  do
    case $1 in
      -f|--focus)
        if [ "$2" = "prev" ]
        then
          pos=-1
        else
          pos=1
        fi
        ;;
    esac
    shift
  done

pos=${pos:-1}

focus="$(yabai -m query --windows | \
    jq -e --argjson pos $pos '(.[] | select(."has-focus")) as {$id, $app}
      | map( select( .app==$app and ((."is-hidden" or ."is-minimized") | not) ) )
      | sort_by(.space, .frame.x, .frame.y)
      | map(.id)
      | .[(index($id)+($pos))%length]'
  )"

yabai -m window --focus "$focus"
