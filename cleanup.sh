#!/bin/bash

# Target directory
TARGET_DIR="/var/lib/rancid/router/backup/192.168.3.1"

# Navigate to the target directory
cd "$TARGET_DIR" || exit

# List and remove all files except the latest 3
ls -t | tail -n +4 | xargs rm --
