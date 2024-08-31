#!/usr/bin/env zx

import fs from 'fs'

if (!fs.existsSync('flutter_drawing_board')) {
  chalk.red('try to clone https://github.com/JideGuru/flutter_drawing_board')
  await $`git clone https://github.com/JideGuru/flutter_drawing_board`
}

cd('flutter_drawing_board')
await $`pwd`

chalk.blue('install dep & build start')
await $`flutter pub get --directory .`
await $`flutter build web --release`
cd ('..')
await $`lzc-cli project build`