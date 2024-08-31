#!/usr/bin/env zx

const imageName = 'registry.lazycat.cloud/d1y/landlord'
const version = '0.2'
const image = `${imageName}:${version}`

await $`docker build -t ${image} .`
await $`docker push ${image}`