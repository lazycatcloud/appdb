PPTist

由于是一个纯静态资源项目
而且没有账号系统，默认中文语言，没有初始化步骤
所以直接进行以下步骤即可打包发布了

```bash
git clone --depth=1 https://github.com/pipipi-pikachu/PPTist.git
cd PPTist
yarn
yarn serve # 验证可以正常运行预览
yarn build
mv dist ../ # 将生成的最终资源文件打包
```

问题 1: 直接编译出来后，electron打开的窗口无法关闭。
解决 1: 删除以下文件的以下行即可解决。
```javascript
// PPTist/src/App.vue
if (process.env.NODE_ENV === 'production') {
  window.onbeforeunload = () => false
}

```

问题 2: 直接使用 devshell 开发，ws热加载链接错误导致无法预览页面。
解决 2: 设定 websocket 链接使用代理后的地址即可。
```diff
  module.exports = {
    configureWebpack: {
      ......
+     devServer: {
+       client: {
+         webSocketURL: {
+           hostname: 'pptist.lianghongpcbox.heiyu.space',
+           protocol: 'wss',
+           port: 443,
+         },
+       },
+     },
      ......
    },
  }
```

问题 3: 添加了 `npm i @lazycatcloud/lzc-file-pickers` 编译出错。
解决 3: 停止服务重新编译一次。

