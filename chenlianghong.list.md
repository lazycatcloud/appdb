# 我接手维护的应用列表
> 全局架构更新，有些问题需要逐个梳理，比如 `unsupported_platforms`

## 上架地址
https://developer.lazycat.cloud/manage

## 应用列表
| 应用名               | lang(Gitee) | mime          | 不支持平台 | 后台 | gpu |
| ------               | ----        | --------      | ----       | ---- | --- |
| bazarr               | ts(Docker)  | -             |            |      |     |
| cash_warden          | php         | -             |            |      |     |
| chinesesubfinder     | go          | -             |            |      |     |
| dashy                | js          | -             |            |      |     |
| datadraw             | php         | -             |            |      |     |
| excalidraw           | ts          | excalidraw    |            |      |     |
| fireflyiii           | php         | -             |            |      |     |
| flare                | go(Docker)  | -             |            |      |     |
| freshrss             | php(Docker) | -             |            |      |     |
| gante                | js          | -             |            |      |     |
| goshs                | go(Docker)  | -             |            |      |     |
| kanboard             | php(Docker) | -             |            |      |     |
| kodcloud             | php(Docker) | -             |            |      |     |
| koel                 | php         | -             |            |      |     |
| leanote              | go(Docker)  | -             |            |      |     |
| listpal              | php         | -             |            |      |     |
| marp-web             | js          | markdown      |            |      |     |
| mediacms             | php(Docker) | -             |            |      |     |
| melody               | js          | -             |            |      |     |
| memos                | go(Docker)  | -             |            |      |     |
| mindmap              | js          | mymind,mm,mma |            |      |     |
| molview              | php         | -             |            |      |     |
| mymind               | js(Appdb)   | -             |            |      |     |
| navidrome            | php         | -             |            |      |     |
| nextterminal         | go          | -             |            |      |     |
| onenav               | php         | -             |            |      |     |
| peertube             | js          | -             |            |      |     |
| photoview            | go          | -             |            |      |     |
| pptist               | js          | pptist        |            |      |     |
| prologictodo         | go          | -             |            |      |     |
| reference            | js          | -             |            |      |     |
| rubiks_cube          | js          | -             |            |      |     |
| showdoc              | php         | -             |            |      |     |
| siyuan-note          | go(Docker)  | -             |            |      |     |
| sokoban推箱子        | js          | -             | 安卓,ios   |      |     |
| stirlingPDF          | java        | -             |            |      |     |
| tetris-vue           | js          | -             |            |      |     |
| tinytinyrss          | php(Docker) | -             |            |      |     |
| ubuntu-desktop-vnc   | Docker      | -             |            |      |     |
| vue-fabric-editor    | js          | vfabric       |            |      |     |
| webssh2              | js          | -             |            |      |     |
| wekan                | js          | -             |            |      |     |
| wireflow             | vue         | markdown      |            |      |     |
| wordpress            | Dockerfile  | -             |            |      |     |
| wuziqi五子棋         | js.dist     | -             |            |      |     |
| _                    | _           | _             | _          | _    | _   |
| collabora            |             | office        |            |      |     |
| drawio               |             | drawio        |            |      |     |
| onlyoffice_community |             | office        |            |      |     |

## 移植应用的部分约定

以下内容从实际移植过程积累

### 多实例应用

应用移植本身(mount,bind)，不用处理用户数据的隔离

    确认 lzcapp/var 下不能绑定文件，因为文件不存在也无法存在，所以只能硬创建一个目录然后绑定
    确认 lzcapp/var 不可以加 $uid，加了 $uid 也不会被解析
    确认 lzcapp/var 的隔离情况(已应用隔离，已用户隔离)
    # lhlzc docker inspect | grep -C2 /lzcapp/var
    # /lzcsys/run/data/app/var/cloud.lazycat.app.navidrome/c
    确认 lzcapp/cache 不可以加 $uid，$uid 不会被解析
    确认 lzcapp/cache 的隔离情况(已应用隔离，已用户隔离)
    # lhlzc docker inspect | grep -C2 /lzcapp/cache
    # /lzcsys/run/data/app/cache/cloud.lazycat.app.navidrome/c
    确认 lzcapp/run/mnt/home 不可以加 $uid，加了 $uid 也不会被解析
    确认 lzcapp/run/mnt/home 的隔离情况(无需$uid，已用户隔离)

### 单实例应用

应用移植本身(mount,bind)，应该完全自主处理用户数据的隔离(除webdav外)

特别是 /lzcapp/var
