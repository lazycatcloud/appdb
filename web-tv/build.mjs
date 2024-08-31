#!/usr/bin/env zx

import fs from 'fs'

if (!fs.existsSync('web-tv')) {
  chalk.red('try to clone https://github.com/weekend-project-space/web-tv')
  await $`git clone https://github.com/weekend-project-space/web-tv`
}

cd('web-tv')
await $`pwd`

chalk.blue('install dep & build start')
await $`cnpm install`
await $`cnpm run build`
cd ('..')
await $`lzc-cli project build`