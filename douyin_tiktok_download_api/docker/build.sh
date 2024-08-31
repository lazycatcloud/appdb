image=evil0ctal/douyin
version=0.1
full_image=registry.lazycat.cloud/${image}:${version}

docker build -t ${full_image} .
docker push ${full_image}