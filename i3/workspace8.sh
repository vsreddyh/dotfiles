#!/bin/bash
#web dev
# Check if workspace 8 exists
if ! i3-msg -t get_workspaces | grep -q '"num":8'; then
    # Create workspace 8 if it doesn't exist
    i3-msg "workspace 8"

    # Launch Wezterm in the left half for coding
    i3-msg "exec wezterm"
	sleep 1
    i3-msg "split h"

    # Launch Chrome in the top-right for viewing
    i3-msg "exec google-chrome"
	sleep 1
    i3-msg "split v"

    # Launch Wezterm instance in the bottom-right left for frontend
    i3-msg "exec wezterm"
	sleep 1
	i3-msg "split h"
	#Launch Wezterm instance in the bottom-right right for backend
	i3-msg "exec wezterm"
else
    # Switch to workspace 8 if it already exists
    i3-msg "workspace 8"
fi
