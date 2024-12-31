#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt-get update -y

# Install necessary dependencies
echo "Installing dependencies..."
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker's official GPG key
echo "Adding Docker's official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the Docker stable repository
echo "Setting up Docker repository..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update apt package list again with Docker's repository
echo "Updating apt package list..."
sudo apt-get update -y

# Install Docker
echo "Installing Docker..."
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

# Enable Docker to start on boot
echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

echo "Docker installation completed successfully!"

