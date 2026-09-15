#!/bin/bash
IS_ACTIVE=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .specialWorkspace.name')
if [[ "$IS_ACTIVE" == "special:magic" ]]; then
    hyprctl dispatch togglespecialworkspace magic
else
    WINDOWS=$(hyprctl workspaces -j | jq '.[] | select(.name == "special:magic") | .windows')
    if [[ -z "$WINDOWS" || "$WINDOWS" == "null" || "$WINDOWS" -eq 0 ]]; then
        hyprctl dispatch movetoworkspacesilent special:magic
    else
        hyprctl dispatch togglespecialworkspace magic
    fi
fi
