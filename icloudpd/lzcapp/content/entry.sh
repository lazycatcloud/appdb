#/bin/bash
set -e

tz=$(/content/getzone.sh)

export TZ="$tz"
cd /usr/local/share
TZ="$tz" /usr/bin/server