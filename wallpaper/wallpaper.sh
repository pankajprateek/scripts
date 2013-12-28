ip link show up >  /tmp/networklink
x=`python2 check_network.py`
if [ "$x" -ge 0 ] ; then
    # rm ~/.wallpaper/bing
    # rm ~/.wallpaper/wallpaper
    wget -q --proxy-user=deepu --proxy-password=srujana http://bing.com -O ~/scripts/wallpaper/bing
    # wget http://www.bing.com -O ~/.wallpaper/bing
    x=`python2 ~/scripts/wallpaper//wallpaper.py`
    wget -q $x --proxy-user=deepu --proxy-password=srujana -O ~/scripts/wallpaper/wallpaper.jpg
fi
feh --bg-scale /home/pankaj/scripts/wallpaper/wallpaper.jpg & 
