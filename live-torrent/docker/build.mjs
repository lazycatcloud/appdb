#!/usr/bin/env zx

import fs from 'fs'

const pj = 'lt'
const gitRepo = 'https://github.com/Davenchy/live-torrent'
const patchFile = 'patch.diff'
const dockerVersion = '0.2'
const image = 'registry.lazycat.cloud/nodejs/live-torrent-next:' + dockerVersion

if (!fs.existsSync(pj)) {
  chalk.red(`try to clone ${gitRepo}`)
  await $`git clone --depth=1 ${gitRepo} ${pj}`
}

await $`cp ${patchFile} ${pj}/`
await $`cd ${pj}`
await $`git apply ${patchFile}`
await $`cd ${pj} && docker build -t ${image} .`
await $`docker push ${image}`