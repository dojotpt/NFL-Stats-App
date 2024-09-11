#!/bin/bash
export PGPASSWORD='Dolly924@'

# Get the base directory of the script
BASEDIR=$(dirname $0)

# Define the database name
DATABASE=fantasy_football

# Define the path to your CSV file in the resources folder
CSV_FILE="C:/Users/12706/IdeaProjects/FF2024/java/src/main/resources/pbp_data_2023.csv"


# Drop the database if it exists
dropdb --if-exists -U postgres $DATABASE

# Create a new database
createdb -U postgres $DATABASE &&

# Execute the schema.sql file to create tables
psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql"

# Populate the nfl_plays_2023 table from the CSV file
psql -U postgres -d $DATABASE -c "\copy nfl_plays_2023 FROM '$CSV_FILE' DELIMITER ',' CSV HEADER"
