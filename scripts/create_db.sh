#!/bin/sh

# This program takes 4 arguments:
#   Name of the new database
#   Primary user of the new database
#   Password of the primary user
#   Password of the root user

if [ "$#" -ne 4 ]; then
    echo "Usage: create_db.sh <name of the new DB> <new DB primary user> <primary user password> <root user password>"
    exit 1
fi

mysql -u root -p$4 -e "create database $1; GRANT ALL PRIVILEGES ON $1.* TO $2@localhost IDENTIFIED BY '$3'"
