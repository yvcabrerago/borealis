#!/bin/bash

/etc/init.d/dbus start
avahi-daemon -D

exec avahi-browse "$@"