
cd autoInitialization
CC=musl-gcc  GOARCH=amd64 GOOS=linux go build -ldflags "-linkmode external -extldflags -static"  -o ../content/immichInit
cd ..
