FROM registry.lazycat.cloud/gitlab/gitlab-ee:17.2.8-ee.0

# Check that the homepage is displayed
HEALTHCHECK --interval=10s --timeout=5s --start-period=1800s --start-interval=5s --retries=5 \
  CMD /opt/gitlab/bin/gitlab-healthcheck --fail --max-time 10
