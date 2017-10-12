#!/bin/bash

docker build . -t $USER/akamai-proxy

NAME=akamai-stage-proxy

docker start $NAME || docker run -d --name $NAME -p 443:443 -p 80:80 $USER/akamai-proxy
