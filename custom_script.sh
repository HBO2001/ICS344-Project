#!/bin/bash

# Target IP address
TARGET="192.168.56.107"

# SSH username
USER="username"

# SSH password
PASSWORD="123"

# Using sshpass to automate the password entry and execute commands
sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $USER@$TARGET << EOF
echo "Successfully connected to $TARGET"
uptime
echo "Listing files in /home/$USER:"
ls -l /home/$USER
echo "Displaying system information:"
df -h
free -h
EOF
