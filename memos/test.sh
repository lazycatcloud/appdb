#!/bin/bash
# ./build.sh
# 配合前端的开发模式
# 删除数据库缓存，实时测试新条件下的效果
rm -f ./bin/memos_prod.*
./bin/memos --mode prod --port 8081 --data ../bin/memos --mode prod --port 8081 --data .