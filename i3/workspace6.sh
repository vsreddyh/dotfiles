#!/bin/bash
#ticktick
# Check if workspace 6 exists
if ! i3-msg -t get_workspaces | grep -q '"num":6'; then
	# Create workspace 6 if it doesn't exist
	i3-msg "workspace 6"

	# Launch ticktick in the left half for coding
	i3-msg "exec ticktick"
else
	# Switch to workspace 6 if it already exists
	i3-msg "workspace 6"
fi
