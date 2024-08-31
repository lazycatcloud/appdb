#!/bin/bash

source venv/bin/activate
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
cp /configuration.yaml /homeassistant/config/
cp /automations.yaml /homeassistant/config/
touch /homeassistant/config/scenes.yaml
touch /homeassistant/config/scripts.yaml

hass -c config
