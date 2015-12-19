#!/bin/bash
echo "Running docker-dbackup.sh"
/usr/bin/mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" > /docker-entrypoint-initdb.d/dbbackup.sql
echo "Finished docker-dbackup.sh"
