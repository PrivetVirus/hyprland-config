#!/bin/bash
IS_ACTIVE=$(hyprctl monitors -j | python3 -c 'import json,sys; print(next((m["specialWorkspace"]["name"] for m in json.load(sys.stdin) if m["focused"]), ""))')
if [[ "$IS_ACTIVE" == "special:magic" ]]; then
    hyprctl dispatch movetoworkspace +0
else
    hyprctl dispatch togglefloating
fi
