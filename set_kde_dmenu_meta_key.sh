#!/bin/bash

# First make a Custom Global Shortcut which opens dmenu_run
# System Settings > Shortcuts > Custom Shortcuts > Edit > New > Global Shortcut > Command/URL
# Set action to the path to dmenu_run
# Save and open ~/.config/khotkeysrc and search for you shortcut name, then look for the uuid= and take the value and paste it below
# Save and run this script, and the 'meta' key will now run dmenu_run

uuid="{bce5ae82-b9bc-4b10-9bd6-5e5aa51019d4}"

kwriteconfig5 \
	--file ~/.config/kwinrc \
	--group ModifierOnlyShortcuts \
	--key Meta \
	"org.kde.kglobalaccel,/component/khotkeys,org.kde.kglobalaccel.Component,invokeShortcut,${uuid}"

qdbus org.kde.KWin /KWin reconfigure
