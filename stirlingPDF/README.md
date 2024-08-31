# stirling-pdf
完全参照官方项目 `README.md` 文档，进行如下操作，即打包完成。

## 编译
```bash
git clone --depth=1 https://github.com/Frooodle/Stirling-PDF.git #20230301
cd Stirling-PDF
docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp openjdk:19-jdk-buster bash
docker: ./gradlew build
```

## 打包
`docker build -t registry.lazycat.cloud/s-pdf:20230301 .`

## 汉化
```bash
cd src/main/resources/
cp messages_en_US.properties messages_zh_CN.properties
# 汉化后的文件见 messages_zh_CN.properties
```

## 其它

### 编译
通过添加如下文件和配置，可以加速编译过程中的下载步骤。
```
# cat ~/.gradle/gradle.properties 
org.gradle.jvmargs=-DsocksProxyHost=192.168.1.128 -DsocksProxyPort=1090
```

### 默认显示中文
通过观察项目中的语言选择代码，适当的按照其规则(路由中传递参数)在没有选择语言时(没有路由参数时)，添加了符合规则的中文语言参数。
具体修改见 ./src_main_resources_templates_fragments_navbar.html.diff