#/bin/bash
while [ 1 ]
do
		#Creates a temp file to curl wttr in
		touch ~/.local/conky_configs/tmp/moon.tmp ~/.local/conky_configs/tmp/weather.tmp ~/.local/conky_configs/tmp/sun.tmp
		#weather data
		curl "http://wttr.in/?1ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/weather.tmp
		#moon data
		curl "http://wttr.in/moon?Q0ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/moon.tmp
		sleep 600
done
