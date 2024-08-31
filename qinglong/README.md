# Dockerfile

标记📌一下手动魔改编译Docker镜像的过程

首先将 `/docker/Dockerfile` 文件复制到根目录

然后 fork `https://github.com/whyour/qinglong` 项目, 并且手动创建一个 `qinglong-static` 项目, 将 `git clone`的地址手动指向一下, 例如:

```bash
RUN git clone --depth=1 -b dev https://github.com/d1ylab/qinglong ${QL_DIR} \
  && cd ${QL_DIR} \
  && cp -f .env.example .env \
  && chmod 777 ${QL_DIR}/shell/*.sh \
  && chmod 777 ${QL_DIR}/docker/*.sh \
  && git clone --depth=1 -b master https://github.com/d1ylab/qinglong-static /static \
```

我将前端默认指向为账号和密码都为: `admin`, 并且简单的改动一下后端, 接下来手动编译出 `static`

```bash
pnpm install
pnpm run build:front
pnpm run build:back
```

然后记得 `git push` 到手动创建的 `qinglong-static` 项目中

```bash
cd static
git push -f
```