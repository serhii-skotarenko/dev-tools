#!/bin/bash

# Define variables
HOST="$POSTGRES_HOST"
PORT="$POSTGRES_PORT"
DB="$POSTGRES_DB"
USER="$POSTGRES_USER"
PASSWORD="$POSTGRES_PASSWORD"
OUTPUT_DIR="/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Run pg_dump command to create a backup
pg_dump -Fc --dbname=postgresql://"$USER":"$PASSWORD"@"$HOST":"$PORT"/"$DB" -f "$OUTPUT_DIR/$DB_$(date +'%Y-%m-%d_%H-%M-%S')"
