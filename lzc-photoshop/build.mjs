#!/usr/bin/env zx

import fs from 'fs'

if (!fs.existsSync('ps')) {
  chalk.red('try to clone https://git.nixnet.services/DUOLabs333/Photopea-Offline')
  await $`git clone --depth=1 https://git.nixnet.services/DUOLabs333/Photopea-Offline.git ps`
}

await $`lzc-cli project build`