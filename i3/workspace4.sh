#!/bin/bash

options="
Pokemon Revolution Online
Albion Online
The Pirate:Caribbean Hunt
ClusterTruck
Steam
Hearts Of Iron IV
"
if ! i3-msg -t get_workspaces | grep -q '"num":4'; then
	i3-msg "workspace 4"
	choice=$(echo "$options" | rofi -dmenu -i -p "Games List")
	case $choice in
	"Albion Online")
		./Games/launcher/Albion-Online
		;;
	"ClusterTruck")
		./Games/clustertruck/Clustertruck/start.sh
		;;
	"The Pirate:Caribbean Hunt")
		steam steam://rungameid/512470
		;;
	"Steam")
		steam
		;;
	"Hearts Of Iron IV")
		./Games/HOI4/HeartsOfIronIV/HeartsOfIronIV/start.sh
		;;
	"Pokemon Revolution Online")
		./Games/PRO/PROClient/PROClient.x86_64
		;;
	*)
		exit 1
		;;
	esac
else
	i3-msg "workspace 4"
fi
