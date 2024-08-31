version=0.1
table=registry.lazycat.cloud/d1y/musicn-container:$version
docker build --platform=linux/amd64 --tag $table .
docker push $table