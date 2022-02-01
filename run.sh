#!/bin/bash

docker build . -t k3gitpods --no-cache
docker rm -f k3gitpods
mkdir config
docker run -d -v $(pwd)/config:/k3gitpods/config -p 443:443 --privileged --name k3gitpods k3gitpods
