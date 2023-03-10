#!/bin/bash

inst_docker(){
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
    add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
    apt update
    apt-get install docker-ce docker-ce-cli containerd.io

}

inst_docker
