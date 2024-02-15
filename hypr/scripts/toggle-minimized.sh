#!/usr/bin/env bash

mainMod=SUPER
MINIMIZED_WAS_OPEN=$1
SELF_PATH="${BASH_SOURCE[0]}"

if [[ -z "$MINIMIZED_WAS_OPEN" ]]; then
    echo "ERROR: Wrong usage: $*"
    echo "ERROR: Expected 1st arg (0 or 1)"
    exit 1
fi

hyprctl dispatch togglespecialworkspace minimized

if [[ "$MINIMIZED_WAS_OPEN" == "0" ]]; then
    hyprctl keyword unbind $mainMod,E
    hyprctl keyword bind $mainMod,E,exec,"hyprctl dispatch movetoworkspace +0 ; hyprctl keyword unbind $mainMod,E ; hyprctl keyword bind $mainMod,E,movetoworkspacesilent,special:minimized ; hyprctl keyword unbind $mainMod,MINUS ; hyprctl keyword bind $mainMod,MINUS,exec,\"$SELF_PATH 0\""
    hyprctl keyword unbind $mainMod,MINUS
    hyprctl keyword bind $mainMod,MINUS,exec,"$SELF_PATH 1"
elif [[ "$MINIMIZED_WAS_OPEN" == "1" ]]; then
    hyprctl keyword unbind $mainMod,E
    hyprctl keyword bind $mainMod,E,movetoworkspacesilent,special:minimized
    hyprctl keyword unbind $mainMod,MINUS
    hyprctl keyword bind $mainMod,MINUS,exec,"$SELF_PATH 0"
else
    echo "ERROR: Unexpected argument value: $MINIMIZED_WAS_OPEN"
    exit 1
fi
