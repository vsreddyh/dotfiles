#!/bin/bash
#thunderbird
# Check if workspace 3 exists
if ! i3-msg -t get_workspaces | grep -q '"num":3'; then
	# Create workspace 3 if it doesn't exist
	i3-msg "workspace 3"
	sleep 1
	# Launch Thunderbird
	i3-msg "exec thunderbird"
else
	# Switch to workspace 3 if it already exists
	i3-msg "workspace 3"
fi
