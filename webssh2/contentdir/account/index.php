<?php
# -----------------------------------------------------------------
# 为什么会有这个？
# 有些应用移植时其实之用前端自动注册登陆即可，后端几乎不用修改什么。
# 特别是有些后端不容易修改或者还要编译打包等非工夫时只改前端是最好的。
# 后端在接收到用户请求时可以获得当前用户的id。
# 这个可以让前端也能以极小的代价获得用户id。[自己动手丰衣足食]
# -----------------------------------------------------------------
# 使用方法:
# 1. 在 lzc-manifest.yml 中添加如下服务
#  account:
#    image: php:8.2.7-cli-alpine3.18
#    command: php -S 0.0.0.0:80 -t /app
#    binds:
#      - /lzcapp/pkg/content/account:/app
# 2. 在 lzc-manifest.yml 中添加如下路由(注意修改应用ID)
#    - /account=http://account.cloud.lazycat.app.photoview.lzcapp:80
# 3. 在前端页面的js 里，或 devTool 的console中测试是否可以获取用户信息
# fetch("https://photoview.lhbox.heiyu.space/account", {"method": "GET"})
#  .then(response => response.text())
#  .then(data => console.log(data))
#  .catch(error => console.error(error));
# 如果返回信息如下即时成功：
# {"user_id":"c","host":"photoview.lhbox.heiyu.space","device_id":"cfd87b53-984e-4e38-b1d6-8200c49c2597","login_time":"1687143790","user_role":"ADMIN"}
# -----------------------------------------------------------------
# 候选字段:
#  ["HTTP_X_FORWARDED_BY"]=>
#  string(11) "lzc-ingress"
#  ["HTTP_X_FORWARDED_FOR"]=>
#  string(46) "fc03:1136:3814:5bac:5bcf:62:3e13:0, 172.20.0.1"
#  ["HTTP_X_FORWARDED_HOST"]=>
#  string(27) "photoview.lhbox.heiyu.space"
#  ["HTTP_X_FORWARDED_PROTO"]=>
#  string(5) "https"
#  ["HTTP_X_HC_DEVICE_ID"]=>
#  string(36) "cfd87b53-984e-4e38-b1d6-8200c49c2597"
#  ["HTTP_X_HC_DEVICE_VERSION"]=>
#  string(18) "v0.8.9-8-gce7fd209"
#  ["HTTP_X_HC_LOGIN_TIME"]=>
#  string(10) "1687143790"
#  ["HTTP_X_HC_USER_ID"]=>
#  string(1) "c"
#  ["HTTP_X_HC_USER_ROLE"]=>
#  string(5) "ADMIN"
# -----------------------------------------------------------------
header('Content-Type: application/json');
die(json_encode([
  'user_id' => $_SERVER["HTTP_X_HC_USER_ID"],
  'host' => $_SERVER["HTTP_X_FORWARDED_HOST"],
  'device_id' => $_SERVER["HTTP_X_HC_DEVICE_ID"],
  'login_time' => $_SERVER["HTTP_X_HC_LOGIN_TIME"],
  'user_role' => $_SERVER["HTTP_X_HC_USER_ROLE"],
]));
