#!/bin/bash

# Source file path
SOURCE_FILE="/var/lib/rancid/routers/configs/[ip address]"

# Destination directory
BACKUP_DIR="/var/lib/rancid/routers/backup/[ip address]"

# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# Get the current timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Construct the backup filename with the timestamp appended
BACKUP_FILE="${BACKUP_DIR}/${TIMESTAMP}"

# Copy the file to the backup directory with the timestamp appended to the filename
cp "$SOURCE_FILE" "$BACKUP_FILE"
