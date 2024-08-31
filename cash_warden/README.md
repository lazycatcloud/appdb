# cash_warden

## 仓库代码
https://github.com/clh021/CashWarden_api.git

## 开发环境
### 本地调试
- 克隆仓库
- 编译出仓库根目录`Dockerfile`的对应镜像，此为`api`
- 使用仓库根目录的`docker-compose.yml`，包含了数据库服务，注意镜像名称一致
- 进入frontend目录，`npm run start` 即可启动ui
- 注意根据您的本地环境调整`proxy.conf.json`配置，使`api`对于前端可用
> 理论上应该可以直接使用，会自动登录和创建账号
> 但是调试环境无法做到这一点，只能通过修改代码 `srv/modules/v1/controllers/UserController.php` 第 91 行下 添加代码 `$hc_username=“you_name”;`，即可模拟自动识别到账号，自动进行创建和登录动作。

### 在线调试
修改`lzc-build.yml`中的`routes`配置，转发服务到本地，使容器内可以进行直接调试即可

### 问题
- 如果出现只有新创建的用户可以登录，老用户不能登录怎么办？
很有可能是因为 key 的生成问题
如果是在盒子内部，建议在卸载应用时一定要清除数据(理论上，key和mysql数据库是共存的，必须是一起生成)
如果是在本地开发环境，建议清理key(需要手动删除srv/image-files/keys/.env文件)，和数据库(如果有账号数据的话)

- Undefined index: HTTP_X_HC_USER_ID
这个问题应该只有本地调试环境才会有的问题，只能通过修改代码 `srv/modules/v1/controllers/UserController.php` 第 91 行下 添加代码 `$hc_username=“you_name”;`，即可模拟自动识别到账号，自动进行创建和登录动作。