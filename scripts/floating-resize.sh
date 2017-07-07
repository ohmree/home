#!/usr/bin/env dash

[ ! $(bspc query -N -n focused.floating) || $(bspc query -N -n focused.pseudo_tiled) ] && ~/scripts/resize.sh $1 && exit 0

case $1 in
	south*)
		bspc node -z bottom 50 50
		;;
	north*)
		bspc node -z bottom 50 -50
		;;
	east*)
		bspc node -z right 50 50
		;;
	west*)
		bspc node -z right -50 50
		;;
esac
