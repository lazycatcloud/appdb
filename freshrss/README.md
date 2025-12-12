# FreshRSS

FreshRSS 是一个自托管的 RSS 提要聚合器。它重量轻、易于使用、功能强大且可定制。是一个具有匿名阅读模式的多用户应用程序，支持自定义标签。

## 功能特点

- 轻量级、高效且易于使用的 RSS 聚合器
- 支持多用户使用，每个用户可以有自己的订阅源
- 提供匿名阅读模式
- 支持自定义标签和分类管理
- 可通过扩展进行功能定制
- 支持多种设备访问，提供响应式界面

## 持久化支持

本应用通过 lzc-manifest.yml 配置文件实现数据持久化，具体实现方式如下：

1. **数据持久化**：通过将容器内的 `/var/www/FreshRSS/data` 目录绑定到宿主机的 `/lzcapp/var/data` 目录，确保用户数据、订阅信息和配置在容器重启或更新后不会丢失。

2. **扩展持久化**：通过将容器内的 `/var/www/FreshRSS/extensions` 目录绑定到宿主机的 `/lzcapp/var/extensions` 目录，保证用户安装的扩展在更新后仍然可用。

3. **定时任务**：通过设置 `CRON_MIN=*/30` 环境变量，配置 RSS 源每 30 分钟自动更新一次。

## 版本说明

由于历史更新已经允许用户自行安装并自行设置账号密码，本版本不再使用 Dockerfile 提供自动化安装和登录支持。新版本直接使用[官方原始 FreshRSS 镜像](https://hub.docker.com/r/freshrss/freshrss)，并保持版本号一致。

版本号格式说明：

- 主版本号与官方 FreshRSS 镜像保持一致（例如 1.24.4）
- 尾部追加 `-patchX` 表示 lpk 补丁更新的版本（例如 1.24.4-patch1）

## 安装与使用

1. 通过 LazyCat 应用市场安装本应用
2. 首次访问时，按照引导完成初始化设置
3. 创建管理员账户后，即可开始添加 RSS 源并使用

## 许可证

本项目遵循 MIT 许可证，详情请访问：https://choosealicense.com/licenses/mit/

## 官方项目

- 项目主页：https://github.com/FreshRSS/FreshRSS
