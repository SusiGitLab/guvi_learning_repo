#!/bin/bash
# Installing Dependencies
echo "########################################"
echo "Installing packages."
echo "########################################"
sudo apt install wget unzip apache2 -y > /dev/null
echo
# Start & Enable Service
echo "########################################"
echo "Start & Enable apache2 Service"
echo "########################################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo
# Creating Temp Directory
echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip > /dev/null
unzip 2137_barista_cafe.zip > /dev/null
sudo cp -r 2137_barista_cafe/* /var/www/html/
echo
# Bounce Service
echo "########################################"
echo "Restarting apache2 service"
echo "########################################"
systemctl restart apache2
echo
# Clean Up
echo "########################################"
echo "Removing Temporary Files"
echo "########################################"
rm -rf /tmp/webfiles
echo
sudo systemctl status apache2
ls /var/www/html/
