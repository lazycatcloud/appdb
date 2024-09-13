FROM registry.lazycat.cloud/wiznote/wizserver:240913-official
# 其实是Nov 23, 2022的为知笔记官方镜像tag来的。

# Check that the homepage is displayed
HEALTHCHECK --interval=10s --timeout=3s --start-period=600s --start-interval=1s --retries=5 \
  CMD OUT=`curl -I -m 10 -o /dev/null -s -w %{http_code} localhost` && if [ $OUT -eq 200 ]; then exit 0; else exit 1; fi;
