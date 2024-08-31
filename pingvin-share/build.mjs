#!/usr/bin/env zx

import fs from 'fs'

const commitID = `7c5ec8d0ea7b40031d38f13c147b1b3f29e43403`
const project = `pingvin-share`

const dockerVersion = `0.0.1`
const dockerBasename = `registry.lazycat.cloud/d1y/pingvin-share`
const dockerImage = `${dockerBasename}:${dockerVersion}`

if (!fs.existsSync(project)) {
  await $`git clone https://github.com/stonith404/pingvin-share.git ${project}`
  cd(project)
  await $`git checkout ${commitID}`
  await $`git apply ../apply.diff`
  await startBuildDockerImage()
  cd('..')
}

async function startBuildDockerImage(push = false) {
  await $`docker build --platform=linux/amd64 -t ${dockerImage} .`
  if (push) {
    await $`docker push -f ${dockerImage}`
  }
}