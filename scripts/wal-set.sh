
#!/usr/bin/env bash
#
# Script to set colors generated by 'wal'
# https://github.com/dylanaraps/wal

# Source generated colors.
source "${HOME}/.cache/wal/colors.sh"

set_scss() {
    sassc --style expanded "${HOME}/projects/startpage/scss/style.scss" > "${HOME}/projects/startpage/style.css"
}



pkill -x dunst && \
while pgrep -x dunst >/dev/null; do sleep 1; done
dunst                                  \
      -lb "$color15"                   \
      -nb "$color15"                   \
      -cb "$color15"                   \
      -lf "$color0"                    \
      -bf "$color0"                    \
      -cf "$color9"                    \
      -fn "${DUNST_FONT:-Monospace 7}" \
      -geometry "${DUNST_SIZE:-300x30-40+40}" &

~/scripts/polybar.sh
~/.config/bspwm/bspwm-colors.sh