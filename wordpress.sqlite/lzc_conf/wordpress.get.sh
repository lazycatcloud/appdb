#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# https://cn.wordpress.org/latest-zh_CN.zip
wget -c https://cn.wordpress.org/latest-zh_CN.zip
unzip latest-zh_CN.zip
rm latest-zh_CN.zip
# 这种下载中文安装包的方式，在验证可行后，决定内置到 dockerfile 中

# wp core download --locale=zh_CN --version="6.4.2" --force --allow-root
# 这种方式下载，将输出 html 源码
