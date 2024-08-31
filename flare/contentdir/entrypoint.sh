#!/bin/sh
# set -e
set -x
ls -lah /pkg_content
cp /pkg_content/*.yml /app/
# exec "$@"
flare