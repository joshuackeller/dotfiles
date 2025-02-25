# Update Focus
if [ -n "$FOCUSED_WORKSPACE" ]; then
  if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
      sketchybar --set $NAME background.drawing=on
  else
      sketchybar --set $NAME background.drawing=off
  fi
fi

apps=$(aerospace list-windows --workspace $1 | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}' | sort -u)

icons=""

# Iterate through each app name and map it to an icon
if [ -n "$apps" ]; then
  . $CONFIG_DIR/icon_map.sh
  while IFS= read -r app; do
      __icon_map "$app"
      icons+="${icon_result}"
  done <<< "$apps"
fi

# Trim trailing space from icons
icons=$(echo "$icons" | sed 's/ *$//')

# Update the workspace label in SketchyBar
sketchybar --set $NAME label=$icons label.font="sketchybar-app-font"
