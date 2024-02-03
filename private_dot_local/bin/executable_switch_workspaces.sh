workspace=$(hyprctl workspaces -j | jq -r '.[].name' | wofi --show dmenu)
hyprctl dispatch workspace $workspace
