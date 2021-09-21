#!/usr/bin/env bash

echo "Run Started ...."

export P_HOST=http://1.1.1.4:30500
export P_USERS=20
export P_USER_SPAWN_RATE=10
export P_TIME_DURATION=15m
export P_LOG=ERROR
export P_RUN_MODE=inferencing

export DOCKER_IMAGE=docker.io/gandigit/ilender-load-dev-2:0.0.1

docker run -e P_USERS -e P_USER_SPAWN_RATE -e P_TIME_DURATION -e P_LOG -e P_RUN_MODE -e P_HOST $DOCKER_IMAGE 

# locust -f locustfile.py --headless -u 1000 -r 10 -t 4m -H http://1.1.1.1:30500

echo "Run completed ...."