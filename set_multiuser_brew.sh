#!/bin/bash

# Allow multiple user accounts on MacOS to use one shared Homebrew installation.

# Create a group
echo "Creating brewusers group..."
sudo dseditgroup -o create brewusers

# Add user to the group (use this to add more users)
echo "Adding $USERNAME to the brewusers group..."
sudo dseditgroup -o edit -a $USERNAME -t user brewusers

# Change ownership of Homebrew files
echo "Changing ownership of Homebrew files..."
sudo chgrp -R brewusers /opt/homebrew
sudo chmod -R g+w /opt/homebrew

# Ensure all new files are group-writable
echo "Ensuring all new files are group-writable..."
sudo find /opt/homebrew -type d -exec chmod g+s {} \;
