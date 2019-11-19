#!/bin/sh -x

# Download Dropbox daemon
cd ~ && wget -q -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

# Download Dropbox cli script
wget -q -O /usr/bin/dropbox "https://www.dropbox.com/download?dl=packages/dropbox.py"

# Start Dropbox daemon
dropbox autostart y
~/.dropbox-dist/dropboxd
