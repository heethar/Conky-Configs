# Conky-Configs
**Just some configurations for Conky**

Of course, you need to install conky to run these things.  
If you're on Arch Linux, you can pass `sudo pacman -S conky`  
Even if you are not running Arch Linux, this is still a very helpful guide on how to configure Conky on various display configurations. 

https://wiki.archlinux.org/title/Conky

All colors have been altered to fit this desktop background provided in this repository> (1581207832610.png)  
 
My weather API is wttr.in, you can provide yourself with your own wttr configuration links here https://wttr.in/:help but you will need to alter the link in `weather-pull.sh` to your location. Otherwise, if you `cat http://wttr.in`, wttr will default to using your current geolocation data.   

**Start configuration files**  
Make sure you have a directory titled `~/.config/conky/tmp/`  
Assumming you have all Conky config files also located in `~/.config/conky`

**Auto-Start Conky on login**  
If you have a directory in `/home/%USER%/.config` named `autostart`, you can place the `.sh` scripts in that directory, only replace `.sh` with `.desktop`.

Here is a link to Conky variables: http://conky.sourceforge.net/variables.html
