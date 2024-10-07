#!/bin/bash
#notes + zen
# Check if workspace 6 exists
if ! i3-msg -t get_workspaces | grep -q '"num":6'; then
    # Create workspace 6 if it doesn't exist
    i3-msg "workspace 6"
	sleep 1
    # Launch zen-browser in the left half for coding
    i3-msg "exec zen.sh"
	sleep 1
    i3-msg "split h"

    # Launch obsidian in the top-right for viewing
    i3-msg "exec obsidian.sh"
	sleep 2 #sleep needs to be greater than 1 for size reduction. reason:- dk. guess:-time needed to focus on container(dumb but the only viable reason)
	#make obsidian smaller
	i3-msg "resize shrink width 600 px"
else
    # Switch to workspace 6 if it already exists
    i3-msg "workspace 6"
fi
