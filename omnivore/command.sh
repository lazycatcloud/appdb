#!/bin/sh

docker_image=registry.lazycat.cloud/appdb/omnivore

cmd_buildweb() {
	cd omnivore

	export NEXT_PUBLIC_BASE_URL=https://lazycat-app-domain-placeholder
	export NEXT_PUBLIC_SERVER_BASE_URL=https://lazycat-app-domain-placeholder
	yarn workspace @omnivore/web build
}

cmd_buildapi() {
	cd omnivore

	yarn workspace @omnivore/text-to-speech-handler build
	yarn workspace @omnivore/content-handler build
	yarn workspace @omnivore/rule-handler build
	yarn workspace @omnivore/api build
}

cmd_buildbaseimg() {
	docker build -f Dockerfile.base -t ${docker_image}-base:$1 .
}

cmd_buildimg() {
	docker build -f Dockerfile -t ${docker_image}:$1 ./omnivore
}

cmd_pushimg() {
	docker push ${docker_image}:$1
}

cmd_buildapp() {
	lzc-cli project build
}

cmd_installapp() {
	lzc-cli app install cloud.lazycat.app.omnivore-$1.lpk
}

cmd_$1 ${2:-latest}
