#!/bin/bash

# Define variables
USER=""
DB=""
CONTAINER=""
BACKUP_FILE=""

# Copy backup to the container where it should be restored
docker cp "$BACKUP_FILE" "$CONTAINER":/backup

# Restore the backup
docker exec -it "$CONTAINER" pg_restore -Fc -U "$USER" -d "$DB" /backup.dump
