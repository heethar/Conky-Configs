#/bin/bash
while [ 1 ]
do
		#Creates a temp file to curl wttr in, although, you do need to make sure these directories exist. 
		touch ~/.local/conky_configs/tmp/moon.tmp ~/.local/conky_configs/tmp/weather.tmp 
		#weather data, will make sure it updates every ten minutes
		curl "http://wttr.in/?1ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/weather.tmp || echo " " > ~/.local/conky_configs/tmp/weather.tmp
		#moon data, will remind you that you need some networking
		curl "http://wttr.in/moon?Q0ATF" --silent --max-time 3 > ~/.local/conky_configs/tmp/moon.tmp || echo "Start the network..." > ~/.local/conky_configs/tmp/moon.tmp
		cat ~/.local/conky_configs/tmp/{moon, weather}.tmp
		#refresh every ten or so minutes.
		sleep 600
done
