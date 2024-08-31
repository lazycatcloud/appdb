docker run -d --name go-drive -p 8089:8089 -v $(pwd)/config/config.yml:/app/config.yml -v $(pwd)/go-drive-data:/app/data devld/go-drive
