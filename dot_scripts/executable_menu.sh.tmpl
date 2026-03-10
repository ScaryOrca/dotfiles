#!/usr/bin/env sh

SWAYIDLE_STATUS="Enable swayidle"

if pgrep -x "swayidle"; then
  SWAYIDLE_STATUS="Disable swayidle"
else
  SWAYIDLE_STATUS="Enable swayidle"
fi

MENU="$SWAYIDLE_STATUS|Network config|Reboot"
FONT_NAME="Go Mono"

{{- if eq .chezmoi.hostname "spock" }}
FONT_SIZE=24
{{- else }}
FONT_SIZE=16
{{- end }}

DIALOG_RESULT=$(echo $MENU | rofi -sep "|" -dmenu -i -p "quick menu" -tokenize -lines 2 -disable-history -font "$FONT_NAME $FONT_SIZE")

if [ "$DIALOG_RESULT" = "Enable swayidle" ]; then
  swayidle -w \
    timeout 300 'swaylock -f -c 000000' \
    timeout 600 'wlopm --off \*' \
    timeout 601 'systemctl suspend' \
    resume 'wlopm --on \*' \
    before-sleep 'swaylock -f -c 000000' >/dev/null 2>&1 &

elif [ "$DIALOG_RESULT" = "Disable swayidle" ]; then
  pkill swayidle

elif [ "$DIALOG_RESULT" = "Network config" ]; then
  exec alacritty -e nmtui

elif [ "$DIALOG_RESULT" = "Reboot" ]; then
  exec ~/.scripts/reboot.sh
fi
