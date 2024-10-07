#!/bin/bash
#zen-browser
# Check if workspace 5 exists
if ! i3-msg -t get_workspaces | grep -q '"num":5'; then
    # Create workspace 5 if it doesn't exist
    i3-msg "workspace 5"
    sleep 1
    # Launch zen-browser in the left half for coding
    i3-msg "exec zen.sh"
else
    # Switch to workspace 5 if it already exists
    i3-msg "workspace 5"
fi
