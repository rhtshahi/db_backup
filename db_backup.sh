#!/bin/bash

# For .env
source .env

# Get the date of yesterday
# YESTERDAY=$(date -d "yesterday" +"%Y-%m-%d")

# Current Date
DATE=$(date +"%Y-%m-%d")

# Connecting with SFTP
sftp $USER_NAME@$HOST<<EOF

# Navigating to the backup directory 
cd $SERVER_BACKUP_PATH

# Navigating to the local path to save the backup
lcd $LOCAL_BACKUP_PATH

# Copy the file to your local device
get *$DATE*.zip

# Exit SFTP session
exit
EOF