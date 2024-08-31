FROM node:20-alpine
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY . /app
WORKDIR /app

RUN apk update && apk add git && rm -rf /var/cache/apk/* && \
  git clone --depth=1 https://github.com/antfu/qrcode-toolkit.git qr && \
  cd qr && pnpm install && pnpm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD cd /app/qr && npm run start
