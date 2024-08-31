#!/bin/sh

git_repo=git@gitee.com:lazycatcloud/funkwhale.git
git_commit=db2db86d4aabab13ec5c2c5455cc5d530d1011d8
docker_image=registry.lazycat.cloud/appdb/funkwhale

set -ex

cmd_frontend() {
	env -C ./front docker build \
		-f Dockerfile \
		-t ${docker_image}-frontend:$1 \
		.
}

cmd_api() {
	env -C ./api docker build \
		-f Dockerfile \
		-t ${docker_image}-api:$1 \
		.
}

cmd_image_push() {
	docker push ${docker_image}-frontend:$1
	docker push ${docker_image}-api:$1
}

cmd_image_all() {
	cmd_frontend $1
	cmd_api $1
}

cmd_all() {
	cmd_image_all $1
	cmd_image_push $1
}

if [ ! -d ./funkwhale ]; then
	git clone $git_repo
fi

cd ./funkwhale
git checkout $git_commit
cmd_$1 ${2:-latest}
git checkout feat/lzc
