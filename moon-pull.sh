#/bin/bash
function weather-pull {
	while true 
	do
		curl "http://wttr.in/moon_?0ATF" --silent --max-time 3 > /tmp/moon.tmp
		sleep 600	
	done
}
weather-pull
