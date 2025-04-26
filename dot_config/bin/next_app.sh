# open the next app

next_app=$(yabai -m query --windows | jq -r '.[1].app')

if [[ "$next_app" == "null" ]]; then
    next_app=$(yabai -m query --windows | jq -r '.[0].app')
fi

open -a "${next_app}"





