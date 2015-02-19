## docker-logstash

Uses logspout to collect the stdout and stderr output of all docker containers and send it to a syslog logstash input.

## Requirements

* fig
* docker

## Installation

    git clone https://github.com/c0deaddict/logspout
    cd logspout
    make build
    cd ..
    git clone https://github.com/c0deaddict/docker-logstash.git
    cd docker-logstash
    fig build
    fig up
