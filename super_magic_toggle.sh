#!/bin/bash
IS_ACTIVE=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .specialWorkspace.name')
if [[ "$IS_ACTIVE" == "special:magic" ]]; then
    hyprctl dispatch movetoworkspace +0
else
    hyprctl dispatch togglefloating
fi
