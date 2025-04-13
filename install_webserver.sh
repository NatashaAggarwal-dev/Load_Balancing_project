#!/bin/bash
# install_webserver.sh

sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

# Simple HTML Page
echo "<h1>Welcome to Web Server - $(hostname)</h1>" | sudo tee /var/www/html/index.html
