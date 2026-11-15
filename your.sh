#!/bin/bash

VIDEO="/home/user/.config/.sysvideo/videoplayback.mp4"

amixer -D pulse sset Master 90% unmute 2>/dev/null
pactl set-sink-volume @DEFAULT_SINK@ 90% 2>/dev/null

if command -v cvlc >/dev/null 2>&1; then
    cvlc --play-and-exit --fullscreen --no-video-title-show "$VIDEO" >/dev/null 2>&1
elif command -v mpv >/dev/null 2>&1; then
    mpv --fs --really-quiet "$VIDEO" >/dev/null 2>&1
elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$VIDEO" >/dev/null 2>&1
fi
