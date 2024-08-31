FROM node:16-buster as builder
RUN mkdir /builder
WORKDIR /builder
RUN git clone https://git.unlock-music.dev/um/web.git /builder/un && \
  cd /builder/un && npm install --registry=https://registry.npmmirror.com && \
  npm ci --registry=https://registry.npmmirror.com && \
  npm run build
RUN ls -al

FROM nginx:latest
COPY --from=builder /builder/un/dist /usr/share/nginx/html
EXPOSE 80