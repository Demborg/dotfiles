#!/usr/bin/env bash

#stolen from https://github.com/savoca/dotfiles/blob/gray/home/.bin/scripts/lock.sd, modified by fbtlurker in unixporn subreddit

icon="$HOME/.i3/resources/lock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

#wait for rofi to go away
sleep 0.2

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
