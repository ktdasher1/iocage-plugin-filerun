#!/bin/sh

# Create user 'tetris'
pw add user -n filerun -c FileRun -s /bin/csh -m

# Configure shellinabox
fetch -o /home/filerun/white-on-black.css https://raw.githubusercontent.com/shellinabox/shellinabox/master/shellinabox/white-on-black.css
sysrc shellinaboxd_enable=YES
sysrc shellinaboxd_flags="--css /home/filerun/white-on-black.css -t -s /:filerun:filerun:HOME:bastet"

# Start the service
service shellinaboxd start
