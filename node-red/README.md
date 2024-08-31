修改 [node-red-docker](https://github.com/node-red/node-red-docker) 项目里的 `Dockerfile.custom`

```diff
diff --git a/docker-custom/Dockerfile.custom b/docker-custom/Dockerfile.custom
index 9a0b2bf..643afa8 100644
--- a/docker-custom/Dockerfile.custom
+++ b/docker-custom/Dockerfile.custom
@@ -74,6 +74,8 @@ LABEL org.label-schema.build-date=${BUILD_DATE} \

 COPY --from=build /usr/src/node-red/prod_node_modules ./node_modules

+VOLUME [ "/data" ]
+
 # Chown, install devtools & Clean up
 RUN chown -R node-red:root /usr/src/node-red && \
     /tmp/install_devtools.sh && \
@@ -81,7 +83,7 @@ RUN chown -R node-red:root /usr/src/node-red && \

 RUN npm config set cache /data/.npm --global

-USER node-red
+USER root

 # Env variables
 ENV NODE_RED_VERSION=$NODE_RED_VERSION \
diff --git a/docker-custom/docker-alpine.sh b/docker-custom/docker-alpine.sh
index f4f3bd8..9a2dae7 100755
--- a/docker-custom/docker-alpine.sh
+++ b/docker-custom/docker-alpine.sh
@@ -13,4 +13,6 @@ docker build --rm --no-cache \
     --build-arg BUILD_DATE="$(date +"%Y-%m-%dT%H:%M:%SZ")" \
     --build-arg TAG_SUFFIX=default \
     --file Dockerfile.custom \
-    --tag testing:node-red-build .
+    --tag registry.lazycat.cloud/d1y/nodered-server:0.1 .
+
+docker push registry.lazycat.cloud/d1y/nodered-server:0.1
```