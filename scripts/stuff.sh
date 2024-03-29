#!/usr/bin/env bash
linear() {
    echo "($X + $*) - ($W - 1) * $*" | bc
}

binary() {
    echo "($X * 2) / (2  ($W -1))" | bc
}

pitch() {
    echo "$X * 0.25 / 0.282" | bc
}

resolution() {
    echo "$X * 1680 / 2560" | bc
}

bspc control --subscribe | while read -r; do
    X=94
    X=$(pitch) # alternatively X=$(resolution)
    W=$(bspc query --desktop focused --windows | wc -l)
    G=$(binary) # alternatively G=$(linear 10)
    [[ $G -lt 1 ]] && G=1
    bspc config --desktop focused window_gap $G
    # conky-padding
done
