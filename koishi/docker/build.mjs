const image = "registry.lazycat.cloud/nodejs/koishi"
const version = "1.0"
const full = `${image}:${version}`

await $`docker build -t ${full} .`
await $`docker push ${full}`