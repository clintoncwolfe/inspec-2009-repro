#!/bin/bash

docker build -q -t inspec-cron-minute:latest docker/
echo "#### LAUNCHING CONTAINER"
docker run --name demo -d inspec-cron-minute:latest
echo "#### EXECUTING TESTS"
inspec exec default -t docker://demo
echo "#### NOTING VERSIONS"
echo -n "Inspec version: "
inspec --version | head -1 # Chatty latest-verion check
echo -n "Container OS: "
docker exec demo cat /etc/system-release
docker kill demo &>/dev/null && docker rm demo &>/dev/null

