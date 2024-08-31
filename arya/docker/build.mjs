#!/usr/bin/env zx

import fs from 'fs'

const pj = 'md'

const image = 'nicejade/markdown-online-editor'
const version = '0.1'
const fullImage = `registry.lazycat.cloud/${image}:${version}`

console.log('执行该脚本前请先切换到 node16.版本(nvm use 16)')

if (!fs.existsSync(pj)) {
  chalk.red('try to clone https://github.com/nicejade/markdown-online-editor.git')
  await $`git clone https://github.com/nicejade/markdown-online-editor.git ${pj}`
}

cd(pj)
// await $`nvm use 16`
// await $`npm i --registry=https://registry.npmmirror.com`
// await $`npm run build`
await $`yarn`
await $`yarn build`
await $`docker build -t ${fullImage} .`
await $`docker push ${fullImage}`