#!/usr/bin/env zx

import fs from 'fs'

const project = "glutton"

if (!fs.existsSync(project)) {
  chalk.red('try to clone https://github.com/NemoAlex/glutton')
  await $`git clone https://github.com/NemoAlex/glutton --depth=1 ${project}`
}

await $`pwd`

await $`lzc-cli project build`