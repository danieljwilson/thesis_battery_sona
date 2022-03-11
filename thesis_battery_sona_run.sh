#!/usr/bin/env bash

docker run --name thesis_battery_sona -d -p 80:80 -p 443:443 \
    -v /etc/ssl/certs:/etc/ssl/certs:ro \
    -v /etc/ssl/private:/etc/ssl/private:ro \
    -v $PWD:/scif/data \
    danieljwilson/thesis_battery_sona --headless start
