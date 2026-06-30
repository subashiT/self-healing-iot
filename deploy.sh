#!/bin/bash
cd ~/self-healing-iot
git pull origin master
docker build -t iot-sensor:latest .
docker stop iot-container 2>/dev/null
docker rm iot-container 2>/dev/null
docker run -d --name iot-container --restart=always iot-sensor:latest
echo "Deployed latest version"