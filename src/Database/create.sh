#!/bin/bash
export PGPASSWORD='Dolly924@'

# Get the base directory of the script
BASEDIR=$(dirname $0)

# Define the database name
DATABASE=fantasy_football

# Drop the database if it exists
dropdb --if-exists -U postgres $DATABASE

# Create a new database
createdb -U postgres $DATABASE &&

# Execute the schema.sql file to create tables
psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql"
