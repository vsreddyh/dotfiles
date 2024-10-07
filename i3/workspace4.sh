
#!/bin/bash

options="Albion Online\nThe Pirate:Carrabien Hunt\nSteam"
i3-msg "workspace 4"
choice=$(echo $options | rofi -dmenu -i -p "Games List")
case $choice in
    "Albion Online")
        ./Games/launcher/Albion-Online
        ;;
    "The Pirate:Caribbean Hunt")
        steam steam://rungameid/512470
        ;;
    "Steam")
        steam
        ;;
	*)
        exit 1
        ;;
esac
