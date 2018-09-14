#!/bin/sh

# if a volume has been mounted copy in the feed file and symlink it
# so the config persists container restarts
if [ -d /etc/fr24feed && -f /etc/fr24feed.ini ]; then
    mv /etc/fr24feed.ini /etc/fr24feed/fr24feed.ini
    ln -s /etc/fr24feed/fr24feed.ini /etc/fr24feed.ini
fi

/usr/local/bin/fr24feed
