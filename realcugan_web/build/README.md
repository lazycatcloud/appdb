## 安装依赖

    docker build . -f Dockerfile.base --tag registry.lazycat.cloud/realcugan_web:dependencies

## 构建二进制

    sudo mount --bind 源码路径 ./src/
    docker build . -f Dockerfile.build --tag registry.lazycat.cloud/realcuganwasm:build

## 拷贝二进制

    rm -rf release/
    mkdir release
    docker create --name realcuganbuild registry.lazycat.cloud/realcuganwasm:build
    docker cp realcuganbuild:/root/realcugan-ncnn-webassembly/web release
    docker cp realcuganbuild:/root/realcugan-ncnn-webassembly/local_server.go release
    ls release/
    docker rm realcuganbuild 

## 构建最终镜像

    docker build . -f Dockerfile.release --tag registry.lazycat.cloud/realcuganwasm:0.0.2
