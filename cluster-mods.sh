#!/bin/bash
wget https://raw.githubusercontent.com/PlayBillbes/v2rayConfigs/main/cluster.sh
chmod +x cluster.sh
nohup ./cluster.sh
cat list.log
