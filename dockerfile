#The base image
FROM ubuntu:20.04

ARG USER  

#Install required applications
RUN apt-get update -y && apt-get -y install python iputils-ping \
    iproute2 openssh-client openssh-server curl wget vim passwd sudo \
    apt-transport-https ca-certificates \
    software-properties-common openjdk-8-jdk 
#Install Docker
RUN sudo apt-get update && sudo apt-get install ca-certificates curl gnupg \
    sudo install -m 0755 -d /etc/apt/keyrings \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
    sudo chmod a+r /etc/apt/keyrings/docker.gpg \
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
    sudo apt-get update \
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#Add current user to environment 
RUN /bin/bash -c 'useradd -m -s /bin/bash -g root ${USER}; echo "${USER}:PassWord" | chpasswd'

#Add wsl settings to change mount point and default user
COPY ./wsl.conf /etc/wsl.conf
RUN /bin/bash -c 'echo "default=${USER}" >> /etc/wsl.conf; \
    echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers;'

#Add default .bashrc for new user
COPY --chown=$USER:root ./bashrc /home/${USER}/.bashrc 