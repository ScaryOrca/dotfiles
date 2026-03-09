#!/usr/bin/env sh

MENU="Yes|No"
FONT_NAME="Go Mono"
FONT_SIZE=16

DIALOG_RESULT=$(echo $MENU | rofi -sep "|" -dmenu -i -p "are you sure?" -tokenize -lines 2 -disable-history -font "$FONT_NAME $FONT_SIZE")

if [ "$DIALOG_RESULT" = "Yes" ]; then
  systemctl reboot
fi
