#!/bin/sh
set -ex


# SHELLDIR="$(dirname "$(realpath "$0")")"
#
# cd "$SHELLDIR"

cd ui && npm run build
