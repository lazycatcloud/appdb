if [ ! -d ./char-dust ]; then
	git clone git@gitee.com:lazycatcloud/char-dust.git
	cd char-dust
else
	cd char-dust
	git pull
fi

npm i
cd demo
npm i
cd -
npm run build:demo
rm -rf ../content
cp -r demo/dist ../content
sed -i "s/\/char-dust\//\//g" ../content/index.html
