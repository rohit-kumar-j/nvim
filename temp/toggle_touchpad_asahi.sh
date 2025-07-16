#!/usr/bin/env bash

if [ $(gsettings get org.gnome.desktop.peripherals.touchpad send-events) == "'enabled'" ]; then
    echo "Switching off"
    gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled
else
    echo "Switching on"
    gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled
fi

# https://unix.stackexchange.com/questions/593050/shortcuts-to-enable-disable-a-touchpad-in-gnome3-on-wayland
