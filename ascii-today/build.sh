if [ ! -d ./ascii-today ]; then
	git clone git@gitee.com:lazycatcloud/ascii-today.git
	cd ascii-today
else
	cd ascii-today
	git pull
fi

npm i
npm run build
rm -rf ../content
mkdir -p ../content/src
cp index.html ../content/
cp *.png ../content/
cp *.ico ../content/
cp -r dist ../content/
cp -r src/assets ../content/src/

