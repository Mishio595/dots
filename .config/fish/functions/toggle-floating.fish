function toggle-floating
	if bspc query -N -n focused.floating
bspc node focused -t tiled
else
bspc node focused -t floating
end
end
