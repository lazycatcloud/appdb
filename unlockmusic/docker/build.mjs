const version = '0.1'
const image = `registry.lazycat.cloud/webapp/unlockmusic:${version}`
console.log(image)

await $`docker build -t ${image} .`
await $`docker push ${image}`