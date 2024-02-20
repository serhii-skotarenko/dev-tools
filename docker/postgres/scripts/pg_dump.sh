#!/bin/bash

# Define variables
HOST=""
PORT=""
DB=""
USER=""
PASSWORD=""
OUTPUT_DIR="/backup"

# Backup a remote DB to localhost
docker run --rm -it postgres:latest pg_dump -Fc \
       --dbname=postgresql://"$USER":"$PASSWORD"@"$HOST":"$PORT"/"$DB" \
       > "$OUTPUT_DIR/$DB_$(date +'%Y-%m-%d_%H-%M-%S')"


