#!/bin/bash
docker build -t static:latest . --no-cache
docker save static:latest --output static.tar
docker build -t proxy:latest . -f Dockerfile-ssl
docker save proxy:latest --output proxy.tar
