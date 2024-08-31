img=antfu/qrcode-toolkit
version=0.1
full_image=registry.lazycat.cloud/${img}:${version}

docker build -t ${full_image} .
docker push ${full_image}
