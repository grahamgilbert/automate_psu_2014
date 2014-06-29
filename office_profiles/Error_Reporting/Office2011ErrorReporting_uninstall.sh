#!/bin/sh

/usr/bin/profiles -R -p Office2011ErrorReporting
/bin/rm -f /usr/local/share/Office2011ErrorReporting.mobileconfig
/usr/sbin/pkgutil --forget com.github.makeprofilepkg.Office2011ErrorReporting
