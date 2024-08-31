把leanote源代绑定到./src

## 构建镜像

    docker build . -t registry.lazycat.cloud/leanote:2.6.1-2
    docker build -f dockerfile.db . -t registry.lazycat.cloud/leanote_mongo:3

## 开发

可以直接到上一级目录`lzc-cli project devshell -r`。进去后：

1. 安装golang `apk add go`
2. 安装git `apk add git`
3. 安装revel `go install github.com/revel/cmd/revel@latest`，并且`cp /root/go/bin/revel /usr/bin/`
4. 运行leanote：`cd /lzcapp/cache/devshell/docker/src && revel run -a .`

