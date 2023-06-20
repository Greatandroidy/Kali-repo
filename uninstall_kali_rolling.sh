#!/bin/bash

# Remove the Kali Linux repository file
sudo rm /etc/apt/sources.list.d/kali.list

# Update the package lists
sudo apt update

# Uninstallation is complete
echo "Kali Linux Rolling repositories have been uninstalled."

