#!/bin/bash
docker build -t mysql-db -f Dockerfile.mysql .
docker build -t web-app -f Dockerfile.webapp .
