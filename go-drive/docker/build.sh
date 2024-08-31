img=registry.lazycat.cloud/devld/go-drive:20230824
docker build -t ${img} .
docker push ${img}