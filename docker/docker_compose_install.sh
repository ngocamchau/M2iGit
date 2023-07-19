#!/bin/bash

# Download the latest version of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

# Create a symbolic link to use docker-compose as a command
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
