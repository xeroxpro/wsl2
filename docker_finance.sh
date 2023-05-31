#!/bin/bash
sudo chmod +x get-docker.sh   
sudo sh get-docker.sh
sudo docker run --privileged --name tcmb_finance -p 80:80 financeio/fintech:latest &