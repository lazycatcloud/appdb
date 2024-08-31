version=0.1
base=registry.lazycat.cloud/d1y/mrdoc:$version

docker build --platform=linux/amd64 -t $base .
docker push $base