#!/bin/sh

/usr/bin/profiles -R -p com.grahamgilbert.icloud_assistant
/bin/rm -f /usr/local/share/com.grahamgilbert.icloud_assistant.mobileconfig
/usr/sbin/pkgutil --forget com.github.makeprofilepkg.com.grahamgilbert.icloud_assistant
