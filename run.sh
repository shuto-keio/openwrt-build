#!/bin/bash

mkdir output
docker build . -t openwrt
docker run --rm -it -v $(pwd)/output:/home/ubuntu/openwrt/bin openwrt /bin/bash run.sh

