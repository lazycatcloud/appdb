# 挂载源码

    sudo mount --bind  源码地址 build/src

# 发布版本

    docker build . -f Dockerfile --tag registry.lazycat.cloud/lanraragi:0.0.x
    docker push registry.lazycat.cloud/lanraragi:0.0.x

# 开发

    cd src
    docker run -it -v .:/LANraragi -p 3000:3000 registry.lazycat.cloud/lanraragi:base-image bash

启动dev-server前需要两件事，先 sh tools/build/docker/install-everything.sh ，然后可以执行 redis-server 来启动redis，最后执行 npm run dev-server。

参考文档：https://sugoi.gitbook.io/lanraragi/v/dev/installing-lanraragi/source#installing-lrr
