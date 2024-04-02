#!/bin/bash

if ! command -v apache2 &>/dev/null
then
        sudo apt update
	sudo apt install apache2
fi
sudo cp index.html /var/www/html

