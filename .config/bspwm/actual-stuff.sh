#!/usr/bin/env bash

~/.config/bspwm/bspwm-colors.sh

bspc monitor -d {1..5}

bspc config border_width               5
bspc config window_gap                 14

bspc config split_ratio                0.52
bspc config borderless_monocle         true
bspc config gapless_monocle            true
bspc config focus_follows_pointer      true
bspc config single_monocle             true


bspc rule -a Gimp desktop='^8' state=floating follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off

