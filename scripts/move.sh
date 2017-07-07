#!/usr/bin/env dash

[ ! $(bspc query -N -n focused.floating) ] && bspc node -s $1 && exit 0
case $1 in
	west*)
		bspc node -v -20 0
		;;
	south*)
		bspc node -v 0 20
		;;
	north*)
		bspc node -v 0 -20
		;;
	east*)
		bspc node -v 20 0
		;;
esac
