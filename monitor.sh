#!/bin/bash
while true; do
    if ! docker ps | grep -q iot-container; then
        echo "Container down! Rolling back to v1..."
        cd ~/self-healing-iot
        git checkout v1
        ./deploy.sh
    else
        echo "Healthy: $(date)"
    fi
    sleep 10
done