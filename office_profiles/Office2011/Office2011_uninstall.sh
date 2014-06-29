#!/bin/sh

/usr/bin/profiles -R -p Office2011
/bin/rm -f /usr/local/share/Office2011.mobileconfig
/usr/sbin/pkgutil --forget com.github.makeprofilepkg.Office2011
