# docker build -t registry.lazycat.cloud/appdb/koel:7.0.11-1 .
FROM registry.lazycat.cloud/appdb/koel:7.0.11
RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh \
  && apt update \
  && apt install -y sqlite3

# Check that the homepage is displayed
HEALTHCHECK --interval=10s --timeout=3s --start-period=120s --start-interval=1s --retries=5 \
  CMD curl -f http://localhost/ || exit 1