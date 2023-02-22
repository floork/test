#!/bin/bash

inst_docker(){
    sudo apt update -y && sudo apt upgrade -y
    curl -sSL https://get.docker.com | sh
}

conf_docker(){
  sudo usermod -aG docker lepotato
  echo "you will be loged out in 2 seconds, please log back in to apply changes"
  sleep 2s
  logout
# after logout run
# docker run hello-world
}
inst_docker
conf_docker

