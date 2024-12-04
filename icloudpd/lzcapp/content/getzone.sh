#!/bin/bash
set -e

if filename=$(readlink /etc/localtime); then
    timezone=${filename#*zoneinfo/}
    if [[ $timezone = "$filename" || ! $timezone =~ ^[^/]+/[^/]+$ ]]; then
        >&2 echo "$filename points to an unexpected location"
        exit 1
    fi
    echo "$timezone"
else
    find /usr/share/zoneinfo -type f ! -regex ".*/Etc/.*" -exec \
        cmp -s {} /etc/localtime \; -print | sed -e 's@.*/zoneinfo/@@' | head -n1
fi