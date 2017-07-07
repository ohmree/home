#!/usr/bin/env dash
# ~/scripts/scrot.sh
#

_copy_cmd='xclip -sel clip -t image/png'

case "$1" in
	--desk|-d|$NULL)
	        maim | $_copy_cmd &&
		sleep 1 &&
		notify-send 'screenshot has been copied'
		;;
	--window|-w)
		maim -i "$(xdotool getactivewindow)" | $_copy_cmd
		sleep 1 &&
		notify-send 'screenshot has been copied'
		;;
	--select|-s)
		notify-send 'select an area for the screenshot' &
		maim -s | $_copy_cmd &&
		sleep 1 &&
		notify-send "screenshot has been copied"
		;;
	--help|-h)
		echo "
available options:
-d | --desk    full screen
-w | --window  active window
-s | --select  selection
-h | --help    display this information

Default option is 'full screen'.

"
		;;
	*)
		echo "
== ! $0: missing or wrong argument ! ==

available options:
-d | --desk    full screen
-w | --window  active window
-s | --select  selection
-h | --help    display this information

Default option is 'full screen'.

"

        exit 2
esac

exit 0
