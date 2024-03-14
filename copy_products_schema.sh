#!/bin/bash

# Source database credentials
SRC_DB_HOST="localhost"
SRC_DB_PORT="5432"
SRC_DB_NAME="olmarketplace"
SRC_DB_USER="postgres"
SRC_DB_PASS='postgres'
# Destination database credentials
DEST_DB_HOST="localhost"
DEST_DB_PORT="5432"
DEST_DB_NAME="django-ms"
DEST_DB_USER="postgres"
DEST_DB_PASS='12345'
# Table name to copy
TABLE_NAME="product_category"
# Temporary file to store the SQL dump
DUMP_FILE="/tmp/${TABLE_NAME}.sql"
# Check the table exists in the Source DB.
export PGPASSWORD=$SRC_DB_PASS
RESULT=$(psql -h ${SRC_DB_HOST} -p ${SRC_DB_PORT} -U ${SRC_DB_USER} -d ${SRC_DB_NAME} -t -c "SELECT count(1) FROM information_schema.tables WHERE table_name = '${TABLE_NAME}' ")
if [[ "$RESULT" -eq "0" ]]; then
  echo "Error: The table ${TABLE_NAME} doesn't exist in the Source DB."
  exit 1
fi
# Check the table dosn't exist in the Destination DB.
export PGPASSWORD=$DEST_DB_PASS
RESULT=$(psql -h ${DEST_DB_HOST} -p ${DEST_DB_PORT} -U ${DEST_DB_USER} -d ${DEST_DB_NAME} -t -c "SELECT count(1) FROM information_schema.tables WHERE table_name = '${TABLE_NAME}' ")
if [[ "$RESULT" -ne "0" ]]; then
  echo "Error: The table ${TABLE_NAME} exists in the Destination DB."
  exit 1
fi
# Dump the table to a SQL file
export PGPASSWORD=$SRC_DB_PASS
pg_dump -h ${SRC_DB_HOST} -p ${SRC_DB_PORT} -U ${SRC_DB_USER} -t ${TABLE_NAME} -F p ${SRC_DB_NAME} > ${DUMP_FILE}
# Restore the SQL dump to the destination database
export PGPASSWORD=$DEST_DB_PASS
psql -h ${DEST_DB_HOST} -p ${DEST_DB_PORT} -U ${DEST_DB_USER} -d ${DEST_DB_NAME} -f ${DUMP_FILE} -v ON_ERROR_STOP=1
# Check if the table was successfully copied
export PGPASSWORD=$DEST_DB_PASS
RESULT=$(psql -h ${DEST_DB_HOST} -p ${DEST_DB_PORT} -U ${DEST_DB_USER} -d ${DEST_DB_NAME} -t -c "SELECT COUNT(*) FROM ${TABLE_NAME}")
if [[ "$RESULT" -eq "0" ]]; then
  echo "Error: The table ${TABLE_NAME} could not be copied."
  exit 1
fi
# Get the number of records in the source table
export PGPASSWORD=$SRC_DB_PASS
source_count=$(psql -h ${SRC_DB_HOST} -p ${SRC_DB_PORT} -U ${SRC_DB_USER} -d ${SRC_DB_NAME} -c "SELECT COUNT(*) FROM ${TABLE_NAME}" -t)
# Get the number of records in the destination table
export PGPASSWORD=$DEST_DB_PASS
dest_count=$(psql -h ${DEST_DB_HOST} -p ${DEST_DB_PORT} -U ${DEST_DB_USER} -d ${DEST_DB_NAME} -c "SELECT COUNT(*) FROM ${TABLE_NAME}" -t)
# Check that the number of records matches
if [ "$source_count" -ne "$dest_count" ]; then
    echo "Error: The number of records in the source and destination tables ${TABLE_NAME} do not match."
    exit 1
else
    echo "Success: The table ${TABLE_NAME} was copied successfully."
fi
echo "The table was ${TABLE_NAME} successfully copied to the destination database."