#!/bin/sh

# if a volume has been mounted copy in the config file and symlink it
# so the config persists container restarts
if [ -d /etc/fr24feed ]; then
    echo Found /etc/fr24feed directory
    if [ -f /etc/fr24feed/fr24feed.ini ]; then
        echo Removing default config
        rm /etc/fr24feed.ini
    else
        echo Copying default config to directory
        mv /etc/fr24feed.ini /etc/fr24feed/
    fi
    ln -s /etc/fr24feed/fr24feed.ini /etc/fr24feed.ini
fi

/usr/local/bin/fr24feed
