#!/usr/bin/env bash

set -x

get_random_wall() {
    find "${HOME}/Pictures/wallpapers" -type f | shuf -n 1
}


declare -a walls

[[ ! -f ~/.wall_index  ]] && echo '__WALL_INDEX=1' > ~/.wall_index # && source ~/.wall_index


[[ $1 == 'prev' ]] && [[ $__WALL_INDEX -ne 0 ]] && echo "__WALL_INDEX=$((1 - WALL_INDEX))" > ~/.wall_index && source ~/.wall_index && wal -q -t -i "${walls[$__WALL_INDEX]}" -o "${HOME}/scripts/wal-set.sh" && exit 0


[[ ${#walls[@]} -le 0 ]] && walls[1]=$(get_random_wall)

wal -t -i "${walls[${#walls[@]}]}" -o "${HOME}/scripts/wal-set.sh"
echo "__WALL_INDEX=$((1 + WALL_INDEX))" > ~/.wall_index.sh
