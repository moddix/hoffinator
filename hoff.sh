#!/bin/bash

# download a fancy hasselhof
curl -o /tmp/david.jpeg http://moddix.com/hoff.jpeg

if [ `uname` == "Darwin" ]; then
        osascript -e 'tell application "System Events" to tell every desktop to set picture to "/tmp/david.jpeg"'
else
        gsettings set org.gnome.desktop.background picture-uri file:///tmp/david.jpeg
fi
