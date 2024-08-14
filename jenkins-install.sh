#!/bin/bash

# Update the package list
sudo apt update -y

# Install OpenJDK 11 (required by Jenkins)
sudo apt install openjdk-11-jdk -y

# Add the Jenkins repository key to the system
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add the Jenkins repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package list again after adding the Jenkins repo
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Enable the Jenkins service to start on boot
sudo systemctl enable jenkins

# Start the Jenkins service
sudo systemctl start jenkins
