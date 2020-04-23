#!/bin/sh -e

docker build -t swarm/node-exporter:1.0.0 .

docker stack rm mon

docker stack deploy -c docker-stack.yml mon