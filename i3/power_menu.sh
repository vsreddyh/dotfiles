#!/bin/bash

options="Shutdown\nRestart\nSleep\nSign Out"
choice=$(echo -e $options | rofi -dmenu -i -p "Power Menu")

case $choice in
    "Shutdown")
        shutdown now
        ;;
    "Restart")
        reboot
        ;;
    "Sleep")
        systemctl suspend
        ;;
    "Sign Out")
        i3-msg exit
        ;;
    *)
        exit 1
        ;;
esac

