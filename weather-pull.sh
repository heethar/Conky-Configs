#/bin/bash
while [ 1 ]
do
		#Creates a temp file to curl wttr in, although, you do need to make sure these directories exist. 
		touch ~/.local/conky_configs/tmp/moon.tmp ~/.local/conky_configs/tmp/weather.tmp 
		#weather data
		curl "http://wttr.in/?1ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/weather.tmp
		#moon data
		curl "http://wttr.in/moon?Q0ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/moon.tmp
		sleep 600
done
