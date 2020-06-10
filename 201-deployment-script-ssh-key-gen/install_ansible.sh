#!/bin/bash

## Update and upgrade the packages
sudo apt update && sudo apt dist-upgrade -y

## Install pre-requisite packages
sudo apt install -y libssl-dev libffi-dev python-dev python-pip

## Install Ansible and Azure SDK via pip
sudo pip install ansible[azure]

## Create a credentials file to store azure credentials
sudo mkdir ~/.azure
sudo touch ~/.azure/credentials

echo "[default]" >> ~/.azure/credentials
echo "subscription_id=a3a8e615-adf7-41d3-b249-8a58b5db8057" >> ~/.azure/credentials
echo "client_id=a36f6653-ae19-4ddc-aad5-5296f6beebf4" >> ~/.azure/credentials
echo "secret=af4f4eac-2023-4fb9-8de7-d880665ec360" >> ~/.azure/credentials
echo "tenant=116a94d1-b8a6-4a14-9dd2-1aa9bfca17b4" >> ~/.azure/credentials
