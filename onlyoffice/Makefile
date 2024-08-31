.DEFAULT_GOAL := onlyoffice.lpk

content/file.bin: file/main.go
	CGO_ENABLED=0 go build -o $@ $(shell dirname $<)

content/callback.bin: callback/main.go
	CGO_ENABLED=0 go build -o $@ $(shell dirname $<)

content.tar: content/index.html content/run-document-server.sh content/callback.bin content/file.bin
	rm -f $@ && tar -cvf $@ -C content $(patsubst content/%,%,$^)

onlyoffice.lpk: content.tar manifest.yml icon.png
	rm -f $@ && zip $@ $^
