#!/bin/bash
#spotify
# Check if workspace 9 exists
if ! i3-msg -t get_workspaces | grep -q '"num":9'; then
    # Create workspace 9 if it doesn't exist
    i3-msg "workspace 9"

    # Launch spotify in the left half for coding
    i3-msg "exec spotify"
else
    # Switch to workspace 9 if it already exists
    i3-msg "workspace 9"
fi
