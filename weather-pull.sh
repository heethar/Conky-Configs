#/bin/bash
function weather-pull {
	while true 
	do
		curl "http://wttr.in/?1ATF" --silent --max-time 3 > /tmp/weather.tmp
		sleep 600	
	done
}
weather-pull
