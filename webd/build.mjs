#!/usr/bin/env zx

import fs from 'fs'

const dockerVersion = `0.0.3`
const dockerBasename = `registry.lazycat.cloud/d1y/webd`
const dockerImage = `${dockerBasename}:${dockerVersion}`

if (!fs.existsSync('webd')) {
  chalk.red('start download webd')
  const tmpPath = "/tmp/webd.tar.gz"
  await $`wget -O ${tmpPath} https://cnt2.cf/webd/20230604/webd-20230604-x86_64-pc-linux-gnu.tar.gz`
  await $`pwd`
  await $`tar -xvf ${tmpPath}`
}

await $`docker build --platform=linux/amd64 -t ${dockerImage} .`
await $`docker push ${dockerImage}`

// await $`lzc-cli project build`
