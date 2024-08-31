#!/bin/sh

set -ex

name='vikunja-frontend'
commit_hash='6550e48e175e05830b68b771f790be1ea8b2c91a'
clone_url="git@gitee.com:lazycatcloud/${name}.git"

git clone ${clone_url}

pushd ${name}
git checkout "${commit_hash}"

pnpm install --frozen-lockfile
pnpm run build

popd
