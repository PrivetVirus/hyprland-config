#!/bin/bash
IS_ACTIVE=$(hyprctl monitors -j | python3 -c 'import json,sys; print(next((m["specialWorkspace"]["name"] for m in json.load(sys.stdin) if m["focused"]), ""))')
if [[ "$IS_ACTIVE" == "special:magic" ]]; then
    hyprctl dispatch togglespecialworkspace magic
else
    WINDOWS=$(hyprctl workspaces -j | python3 -c 'import json,sys; print(next((w["windows"] for w in json.load(sys.stdin) if w["name"] == "special:magic"), 0))')
    if [[ -z "$WINDOWS" || "$WINDOWS" == "null" || "$WINDOWS" -eq 0 ]]; then
        hyprctl dispatch movetoworkspacesilent special:magic
    else
        hyprctl dispatch togglespecialworkspace magic
    fi
fi
