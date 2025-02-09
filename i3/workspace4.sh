#!/bin/bash

options="Albion Online
The Pirate:Caribbean Hunt
ClusterTruck
Steam
Hearts Of Iron IV
"

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
	./home/vishnu/Games/HOI4/HeartsOfIronIV/HeartsOfIronIV/start.sh
	;;
*)
	exit 1
	;;
esac
