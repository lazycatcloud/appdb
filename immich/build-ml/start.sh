#!/bin/bash

if [ ! -f "/cache/version.txt" ]; then
	tar -xvf /ml-cache.tar -C /cache
	echo "extract finished"
fi

python main.py
