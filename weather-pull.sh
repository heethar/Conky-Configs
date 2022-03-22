#/bin/bash
while [ 1 ]
do
		#Creates a temp file to curl wttr in, although, you do need to make sure these directories exist. 
		touch ~/.config/conky/tmp/moon.tmp ~/.config/conky/tmp/weather.tmp 

		#weather data, will make sure it updates every ten minutes
		curl "http://wttr.in/?1ATF" --silent --max-time 3 > ~/.config/conky/tmp/weather.tmp || echo " " > ~/.config/conky/tmp/weather.tmp
        
		#moon data, will remind you that you need some networking
		curl "http://wttr.in/moon?Q0ATF" --silent --max-time 3 > ~/.config/conky/tmp/moon.tmp || echo "Start the network..." > ~/.config/conky/tmp/moon.tmp
		cat ~/.config/conky/tmp/{moon, weather}.tmp

		#refresh every ten or so minutes.
		sleep 600
done
