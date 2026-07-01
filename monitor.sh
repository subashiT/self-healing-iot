#!/bin/bash

CONTAINER_NAME="self-healing-app"

echo "===================================="
echo "   Self-Healing IoT Health Monitor"
echo "===================================="

# Check if container is running
if docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Container Status : Running"

    # CPU Usage
    CPU=$(docker stats --no-stream --format "{{.CPUPerc}}" $CONTAINER_NAME)

    # Memory Usage
    MEM=$(docker stats --no-stream --format "{{.MemPerc}}" $CONTAINER_NAME)

    echo "CPU Usage       : $CPU"
    echo "Memory Usage    : $MEM"
    echo "Application     : Healthy"

else
    echo "Container Status : Not Running"
    echo "Application     : Unhealthy"
    echo ""
    echo "Recovery Action : Restart Required"
fi

echo "Timestamp : $(date)"
