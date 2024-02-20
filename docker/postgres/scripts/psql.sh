#!/bin/bash

# Define variables
USER=""
DB=""
CONTAINER=""

# Run psql inside a container
docker exec -it "$CONTAINER" psql -U "$USER" -d "$DB"
