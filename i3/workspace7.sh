#!/bin/bash
#wez + zen
# Check if workspace 7 exists
if ! i3-msg -t get_workspaces | grep -q '"num":7'; then
    # Create workspace 7 if it doesn't exist
    i3-msg "workspace 7"

    # Launch Wezterm in the left half for coding
    i3-msg "exec wezterm"
	sleep 1
    i3-msg "split h"

    # Launch zen-browser in the right half for viewing
    i3-msg "exec zen.sh"
else
    # Switch to workspace 7 if it already exists
    i3-msg "workspace 7"
fi
