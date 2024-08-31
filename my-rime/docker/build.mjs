const version = '0.1'
const image = 'registry.lazycat.cloud/builder/my_rime'
const fullImage = `${image}:${version}`

await $`docker build -t ${fullImage} .`
await $`docker push ${fullImage}`
console.log(fullImage)