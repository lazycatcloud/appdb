# 挂载源码

    mkdir backend
    mkdir frontend
    sudo mount --bind jellyfin后端源码 backend/
    sudo mount --bind jellyfin前端源码 frontend/

# 编译

    docker build . --tag registry.lazycat.cloud/jellyfin:0.1.0
