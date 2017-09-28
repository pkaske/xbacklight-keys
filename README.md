# xbacklight-keys
Helper script to map keys for xbacklight

## How it works

This script knows three command:

**Increase brightness**  
`xbacklight-keys.sh up`

**Decrease brightness**  
`xbacklight-keys.sh down`

**Restore brightnes from ~/.config/xbacklight-keys**  
`xbacklight-keys.sh restore`

## How to install

1. Download the script, make executable and symlink it into some folder that is in your $PATH
2. Use the gnome keyboard settings to create shortcuts for the above commands.

*Optionally*  
Create a autostart entry that calls the `restore` command to restore the last set brightness.

Here is a template for a autostart file for gnome:

**~/.config/autostart/xbrightness.desktop**  
```
[Desktop Entry]
Type=Application
Name=xbrightness
OnlyShowIn=GNOME;
Terminal=true
Exec="xbacklight-keys restore"
Hidden=false
Name[de_DE]=xbrightness.desktop
```
