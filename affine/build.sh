if [ ! -d "AFFiNE" ]; then
  git clone git@github.com:toeverything/AFFiNE.git
fi

# ref: https://github.com/toeverything/AFFiNE/blob/master/docs/BUILDING.md
pushd AFFiNE
# before install nx
yarn install
yarn build
cd apps/web
next export
popd

lzc-cli project build
# lzc-cli appstore publish