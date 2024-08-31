#!/bin/bash
# docker run -v /siyuan/workspace:/siyuan/workspace -p 6806:6806 -u 1000:1000 b3log/siyuan --workspace=/siyuan/workspace/
# docker run -it -p 6806:6806 -u 1000:1000 b3log/siyuan --workspace=/siyuan/workspace/

cd siyuan

# app
cd app && npm install -g pnpm && pnpm install && pnpm run build

# kernel
go build --tags fts5 -v -ldflags "-s -w -X github.com/siyuan-note/siyuan/kernel/util.Mode=prod"

# assets
