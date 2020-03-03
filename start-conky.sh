#/bin/bash
~/.local/conky_configs/weather-pull.sh &

#wait 3 seconds
sleep 3

#start Conky with said conky config destinations (or, your own, I'm not your mother)
#######################################################################
#MAKE SURE YOUR FILE NAMES AND DIRECTORIES MATCH UP WITH EVERYTHING!!!#
#######################################################################
conky -c ~/.local/conky_configs/conky.conf &
conky -c ~/.local/conky_configs/conkyrc-weather &
