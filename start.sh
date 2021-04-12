#!/bin/bash
ICECAST_MOUNT="${ICECAST_MOUNT:-/example}"
ICECAST_USERNAME="${ICECAST_USERNAME:-user}"
ICECAST_PASSWORD="${ICECAST_PASSWORD:-password}"

envsubst < old.xml > new.xml

rsas -c new.xml