mkdir tmp
cd tmp
curl -o tt-rss-feedly-theme.zip -L https://github.com/levito/tt-rss-feedly-theme/releases/download/v4.1.0/tt-rss-feedly-theme-dist-4.1.0.zip
unzip tt-rss-feedly-theme.zip
printf "FROM scratch\nCOPY tt-rss-feedly-theme-dist /\n" > Dockerfile
IMAGE="registry.lazycat.cloud/tt-rss-feedly-theme:4.1.0"
docker build -t $IMAGE .
docker push $IMAGE
rm -rf Dockerfile tt-rss-feedly-theme-dist tt-rss-feedly-theme.zip
