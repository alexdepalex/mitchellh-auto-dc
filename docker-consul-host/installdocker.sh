#!/bin/bash

curl --silent --location https://get.docker.io/ubuntu/ | sudo sh

# configure DNS forwarding to Consul
echo "DOCKER_OPTS='-H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock --dns 172.17.42.1 --dns 8.8.4.4 --dns 8.8.8.8 --dns-search consul'" > /etc/default/docker
echo "DOCKER_TLS='no'" >> /etc/default/docker
sudo service docker restart

exit 0

