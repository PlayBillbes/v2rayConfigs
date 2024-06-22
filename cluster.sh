#!/bin/bash
rm -f web config.json
wget -O temp.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip
unzip temp.zip
sleep 2
rm -f temp.zip
sleep 2
mv v2ray web
sleep 2
rm -rf config.json
sleep 2
wget -O config.json https://raw.githubusercontent.com/PlayBillbes/v2rayConfigs/main/config-server-backen.json
sleep 2
wget https://github.com/eooce/choreo-2go/raw/main/files/server
sleep 5
chmod +x web server
sleep 5
nohup ./web run &>/dev/null &
sleep 5
./server tunnel --url http://localhost:8008
