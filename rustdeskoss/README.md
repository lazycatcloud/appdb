# 打包 RustDesk 网页端客户端

```
docker run --rm -ti --entrypoint= registry.lazycat.cloud/keyurbhole/flutter_web_desk:v1.0.0 bash
mv /app/build/web/index.html /app/build/web/web.html
```

`docker ps ` 查看对应的容器ID

然后使用
1. docker cp `$containerID`:/app/build/web content/public/web
2. 删除 `node_modules` 目录 `rm -rf content/public/web/js/node_modules`
3. ingress 中的 websocket 有问题，需要将 /21118, /21119 暴露出来，修改代码
4. yarn
5. yarn vite build
6. 删除 node_modules
8. 将复制出来的 web 目录中的内容移动到 public 目录下 （这个是因为 web 中的 js 访问的路径是直接访问 /）

执行 `lzc-cli project build`
