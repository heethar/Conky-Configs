#/bin/bash
~/.config/conky/weather-pull.sh &

#wait 3 seconds
sleep 3

#start Conky with said conky config destinations (or, your own, I'm not your mother)
conky -c ~/.config/conky/conky.conf &
conky -c ~/.config/conky/conkyrc-weather &
