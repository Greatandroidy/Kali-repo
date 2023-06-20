#!/bin/bash

# Download the Kali Linux GPG key
wget -qO - https://archive.kali.org/archive-key.asc | sudo gpg --dearmor > kali-archive-keyring.gpg

# Install the Kali Linux GPG key
sudo install -o root -g root -m 644 kali-archive-keyring.gpg /usr/share/keyrings/

# Add the Kali Linux repository URL to /etc/apt/sources.list.d/kali.list
echo "deb [signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] https://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list.d/kali.list

# Update the package lists
sudo apt update

# Installation is complete
echo "Kali Linux Rolling repositories have been installed."

