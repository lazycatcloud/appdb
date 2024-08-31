FROM node:18-alpine as builder

WORKDIR /opt/app

COPY package.json package-lock.json .npmrc ./
RUN npm ci

COPY ./ ./
RUN npm run build


FROM node:18-alpine

WORKDIR /opt/app

COPY package.json package-lock.json .npmrc ./
RUN npm ci --omit=dev

COPY --from=builder /opt/app/dist   ./dist/
COPY --from=builder /opt/app/db     ./db/
COPY --from=builder /opt/app/server ./server/
COPY --from=builder /opt/app/src    ./src/
COPY --from=builder /opt/app/config ./config/

ENV NODE_ENV=production
ENV DATA_DIR=/lzcapp/var
EXPOSE 3001

CMD [ "npm", "run", "start-server" ]
