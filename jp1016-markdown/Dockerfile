FROM nginx:stable-alpine3.17-slim

ARG src_path
ARG dest_path=/usr/share/nginx/html

RUN rm -rf ${dest_path}
COPY ${src_path} ${dest_path}
