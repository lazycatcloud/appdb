# 打包 RustDesk 网页端客户端

```
docker run --rm -ti --entrypoint= registry.lazycat.cloud/keyurbhole/flutter_web_desk:v1.0.0 bash
mv /app/build/web/index.html /app/build/web/web.html
```

`docker ps ` 查看对应的容器ID

然后使用
1. docker cp `$containerID`:/app/build/web content/public/web
2. 删除 `node_modules` 目录 `rm -rf content/public/web/js/node_modules`
3. 更新 ws:// 为 wss:// (要不然在 app 中，使用 https 访问时，使用 ws:// 连接被拒绝)

   1. `cd content/public/web/js/dist`
   2. `prettier -w index.js`
   3. `rg ws://` 查看 ws:// 的函数
   4. `vim index.js ` 跳到指定的行进行更改

4. 将复制出来的 web 目录中的内容移动到 public 目录下 （这个是因为 web 中的 js 访问的路径是直接访问 /）

执行 `lzc-cli project build`
