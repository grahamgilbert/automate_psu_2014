#!/bin/sh

/usr/bin/profiles -R -p Office2011UpdatePrefs
/bin/rm -f /usr/local/share/Office2011UpdatePrefs.mobileconfig
/usr/sbin/pkgutil --forget com.github.makeprofilepkg.Office2011UpdatePrefs
